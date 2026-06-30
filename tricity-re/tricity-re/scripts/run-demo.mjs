import { execSync } from "child_process";
import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const rootDir = path.resolve(__dirname, "..");

console.log("\x1b[36m============================================================\x1b[0m");
console.log("\x1b[36m       TRICITY RE — NON-DESTRUCTIVE DEMO (read-only steps)   \x1b[0m");
console.log("\x1b[36m============================================================\x1b[0m\n");

function runCmd(cmd, desc) {
  console.log(`\n\x1b[33m--- ${desc} ---\x1b[0m`);
  console.log(`Executing: \x1b[90m${cmd}\x1b[0m`);
  try {
    const stdout = execSync(cmd, { cwd: rootDir, encoding: "utf8" });
    console.log(stdout);
    return stdout;
  } catch (error) {
    console.error(`\x1b[31mCommand failed:\x1b[0m`, error.message);
    if (error.stdout) console.log(error.stdout);
    if (error.stderr) console.error(error.stderr);
    return null;
  }
}

console.log("Checking environment configuration...");
const envPath = path.join(rootDir, ".env.local");
if (!fs.existsSync(envPath)) {
  console.warn("\x1b[33m[WARN] .env.local not found — inspect/dry-run still work; scrape/promote need Supabase.\x1b[0m");
} else {
  console.log("\x1b[32m✔ .env.local found\x1b[0m");
}

console.log("\n\x1b[35mThis demo does NOT run live scrapes, staging writes, or production promotion.\x1b[0m");
console.log("For full pipeline: see docs/operations-note.md after M2 approval.\n");

// Milestone 2 — inspect only (ToS/robots + structure)
runCmd("pnpm pipeline:inspect", "M2: Portal inspect (PSRERA + GMADA)");

// Milestone 3 — dry-run only (no DB writes)
runCmd("pnpm pipeline:dry-run --portal=psrera", "M3: PSRERA dry-run (parse only, no staging write)");

console.log("\n\x1b[32m✔ Demo complete.\x1b[0m");
console.log("Next steps (manual, post-approval):");
console.log("  • pnpm pipeline:scrape --portal=psrera  → staging");
console.log("  • pnpm pipeline:promote                 → production (PSRERA only)");
console.log("  • GMADA: populate data/manual/gmada.json with Client-verified records first");
console.log("  • Hot lead test: start pnpm dev, POST to /api/leads (see operations-note.md §3)\n");
