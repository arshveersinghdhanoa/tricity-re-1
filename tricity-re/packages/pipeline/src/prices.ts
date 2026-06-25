import { getSupabase } from "./staging.js";
import fs from "fs";
import path from "path";

export interface PriceInput {
  reraNumber: string;
  prices: Array<{
    priceType: "asking" | "transacted";
    amount: number;
    currency?: string;
    unit?: string;
    verified: boolean;
    source: string | null;
    recordedAt?: string;
  }>;
}

export async function importPrices(filePath: string): Promise<{ imported: number; errors: string[] }> {
  const supabase = getSupabase();
  if (!supabase) return { imported: 0, errors: ["Supabase not configured"] };

  const resolvedPath = path.resolve(process.cwd(), filePath);
  if (!fs.existsSync(resolvedPath)) {
    return { imported: 0, errors: [`Price import file not found: ${filePath}`] };
  }

  const fileContent = fs.readFileSync(resolvedPath, "utf8");
  let records: PriceInput[];
  try {
    records = JSON.parse(fileContent);
  } catch (err) {
    return { imported: 0, errors: [`Failed to parse JSON file: ${err instanceof Error ? err.message : String(err)}`] };
  }

  let imported = 0;
  const errors: string[] = [];

  console.log(`[prices] Found ${records.length} project price groups in file.`);

  for (const record of records) {
    try {
      // Find the project ID by RERA number in the production projects table
      const { data: project, error: projectError } = await supabase
        .from("projects")
        .select("id, name")
        .eq("rera_number", record.reraNumber)
        .maybeSingle();

      if (projectError) {
        errors.push(`Database query failed for ${record.reraNumber}: ${projectError.message}`);
        continue;
      }

      if (!project) {
        errors.push(`Project not found in database for RERA number: ${record.reraNumber}`);
        continue;
      }

      for (const p of record.prices) {
        const { error: insertError } = await supabase.from("prices").insert({
          project_id: project.id,
          price_type: p.priceType,
          amount: p.amount,
          currency: p.currency ?? "INR",
          unit: p.unit ?? "sqft",
          verified: p.verified,
          source: p.source,
          recorded_at: p.recordedAt ? new Date(p.recordedAt).toISOString() : new Date().toISOString(),
        });

        if (insertError) {
          errors.push(`Failed to insert price for ${record.reraNumber}: ${insertError.message}`);
        } else {
          imported++;
        }
      }
    } catch (err) {
      errors.push(`Error processing price record for ${record.reraNumber}: ${err instanceof Error ? err.message : String(err)}`);
    }
  }

  console.log(`[prices] Import finished: ${imported} price entries imported, ${errors.length} errors.`);
  return { imported, errors };
}
