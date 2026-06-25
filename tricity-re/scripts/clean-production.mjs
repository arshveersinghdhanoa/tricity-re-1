import { createClient } from "@supabase/supabase-js";
import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Simple env file loader
function loadEnv() {
  const p = path.resolve(__dirname, "../.env.local");
  if (fs.existsSync(p)) {
    const content = fs.readFileSync(p, "utf8");
    for (const line of content.split("\n")) {
      const trimmed = line.trim();
      if (trimmed && !trimmed.startsWith("#")) {
        const idx = trimmed.indexOf("=");
        if (idx > 0) {
          const key = trimmed.substring(0, idx).trim();
          let val = trimmed.substring(idx + 1).trim();
          const hashIdx = val.indexOf("#");
          if (hashIdx >= 0) {
            val = val.substring(0, hashIdx).trim();
          }
          val = val.replace(/^['"]|['"]$/g, "");
          if (!process.env[key]) {
            process.env[key] = val;
          }
        }
      }
    }
  }
}
loadEnv();

async function run() {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const key = process.env.SUPABASE_SERVICE_ROLE_KEY;

  if (!url || !key) {
    console.error("Missing Supabase credentials in .env.local!");
    process.exit(1);
  }

  const supabase = createClient(url, key);

  console.log("Auditing production database for non-PSRERA projects...");
  const { data: projects, error } = await supabase
    .from("projects")
    .select("id, rera_number, name, description")
    .not("rera_number", "like", "PBRERA-%");

  if (error) {
    console.error("Error fetching projects:", error.message);
    process.exit(1);
  }

  console.log(`Found ${projects.length} non-PSRERA projects:`);
  console.log(JSON.stringify(projects, null, 2));

  if (projects.length > 0) {
    console.log("Deleting non-PSRERA projects from production...");
    const idsToDelete = projects.map(p => p.id);
    const { error: deleteError } = await supabase
      .from("projects")
      .delete()
      .in("id", idsToDelete);

    if (deleteError) {
      console.error("Error deleting projects:", deleteError.message);
      process.exit(1);
    }
    console.log("Successfully deleted fabricated projects!");
  } else {
    console.log("No fabricated projects found.");
  }
}

run();
