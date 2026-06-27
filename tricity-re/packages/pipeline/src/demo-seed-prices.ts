import { getSupabase } from "./staging.js";

export interface SeedResult {
  inserted: number;
  skipped: number;
  errors: string[];
}

export async function seedDemoPrices(options: { dryRun?: boolean }): Promise<SeedResult> {
  const supabase = getSupabase();
  if (!supabase) {
    return { inserted: 0, skipped: 0, errors: ["Supabase not configured"] };
  }

  const { data: allProjects, error: fetchErr } = await supabase
    .from("projects")
    .select("id, name, rera_number, slug");

  if (fetchErr) {
    return { inserted: 0, skipped: 0, errors: [`Failed to fetch projects: ${fetchErr.message}`] };
  }

  console.log(`[demo-seed] Found ${allProjects.length} projects in DB.`);

  if (allProjects.length === 0) {
    return { inserted: 0, skipped: 0, errors: ["No projects found in production projects table. Scrape and promote projects first."] };
  }

  // Pick up to 3 projects from the database to seed prices for
  const targetProjects = allProjects.slice(0, 3);
  
  const DEMO_PRICES_TEMPLATES = [
    {
      prices: [
        {
          price_type: "transacted" as const,
          amount: 4750,
          currency: "INR",
          unit: "sqft",
          verified: true,
          source: "Sub-Registrar Office, SAS Nagar (Mohali)",
        },
        {
          price_type: "asking" as const,
          amount: 5200,
          currency: "INR",
          unit: "sqft",
          verified: false,
          source: null,
        },
      ],
    },
    {
      prices: [
        {
          price_type: "asking" as const,
          amount: 6800,
          currency: "INR",
          unit: "sqft",
          verified: false,
          source: null,
        },
      ],
    },
    {
      prices: [
        {
          price_type: "transacted" as const,
          amount: 5100,
          currency: "INR",
          unit: "sqft",
          verified: true,
          source: "Punjab Development Authority Registry, Mohali",
        },
      ],
    },
  ];

  let inserted = 0;
  let skipped = 0;
  const errors: string[] = [];

  for (let i = 0; i < targetProjects.length; i++) {
    const project = targetProjects[i];
    const template = DEMO_PRICES_TEMPLATES[i % DEMO_PRICES_TEMPLATES.length];

    console.log(`[demo-seed] Project: ${project.name} (${project.rera_number})`);

    for (const p of template.prices) {
      if (options.dryRun) {
        console.log(`[demo-seed] [DRY RUN] Would insert price: ₹${p.amount} (${p.price_type}) for ${project.slug}`);
        inserted++;
      } else {
        // Check for duplicate
        const { data: existing, error: checkErr } = await supabase
          .from("prices")
          .select("id")
          .eq("project_id", project.id)
          .eq("price_type", p.price_type)
          .maybeSingle();

        if (checkErr) {
          errors.push(`Failed to check existing price: ${checkErr.message}`);
          continue;
        }

        if (existing) {
          console.log(`[demo-seed] Price of type ${p.price_type} already exists for ${project.name}, skipping.`);
          skipped++;
          continue;
        }

        const { error: insertErr } = await supabase.from("prices").insert({
          project_id: project.id,
          price_type: p.price_type,
          amount: p.amount,
          currency: p.currency,
          unit: p.unit,
          verified: p.verified,
          source: p.source,
          recorded_at: new Date().toISOString(),
        });

        if (insertErr) {
          errors.push(`Failed to insert price for ${project.rera_number}: ${insertErr.message}`);
        } else {
          console.log(`[demo-seed] Successfully inserted price: ₹${p.amount} (${p.price_type})`);
          inserted++;
        }
      }
    }
  }

  return { inserted, skipped, errors };
}
