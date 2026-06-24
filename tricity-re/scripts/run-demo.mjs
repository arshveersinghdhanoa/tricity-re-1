import { execSync } from "child_process";
import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const rootDir = path.resolve(__dirname, "..");

console.log("\x1b[36m============================================================\x1b[0m");
console.log("\x1b[36m             TRICITY RE PLATFORM DEMO RUNNER                \x1b[0m");
console.log("\x1b[36m============================================================\x1b[0m\n");

// Helper for running commands
function runCmd(cmd, desc) {
  console.log(`\n\x1b[33m--- [DEMO STEP] ${desc} ---\x1b[0m`);
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

// Step 1: Verify .env.local exists
console.log("Checking environment configuration...");
const envPath = path.join(rootDir, ".env.local");
if (!fs.existsSync(envPath)) {
  console.error("\x1b[31m[ERROR] .env.local file not found in root directory!\x1b[0m");
  console.error("Please copy .env.example to .env.local and configure your keys first.");
  process.exit(1);
}
console.log("\x1b[32m✔ .env.local file found!\x1b[0m");

// Step 2: Portal Inspection (Milestone 2)
runCmd("pnpm pipeline:inspect", "Portal Discovery & Legality Check (Milestone 2)");

// Step 3: Scraper Dry Run (Milestone 3)
runCmd("pnpm pipeline:dry-run --portal=gmada", "Scraper Dry Run (GMADA Fallback)");

// Step 4: Live Staging Scrape (Milestone 3)
runCmd("pnpm pipeline:scrape --portal=gmada", "Scrape to Staging Database (Milestone 3)");

// Step 5: Promote Staging to Production (Milestone 3)
runCmd("pnpm pipeline:promote", "Validate and Promote to Production Tables (Milestone 3)");

// Step 6: Simulate Hot Lead Submission (Milestone 4)
console.log("\n\x1b[33m--- [DEMO STEP] Simulating Hot Lead Submission (Milestone 4) ---\x1b[0m");
console.log("Submitting high-scoring lead (Score = 90) to /api/leads to trigger Mailtrap...");

async function submitLead() {
  const leadData = {
    name: "Demo Test User",
    phone: "9876543210",
    email: "demo@example.com",
    budget: 5500000,
    timeline: "immediate",
    message: "This is an automated test lead to verify that hot-lead notifications arrive at Mailtrap successfully."
  };

  try {
    const res = await fetch("http://localhost:3000/api/leads", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(leadData)
    });
    
    const json = await res.json();
    console.log("\nResponse from API:");
    console.log(JSON.stringify(json, null, 2));
    
    if (res.ok) {
      console.log("\n\x1b[32m✔ Success! Lead submitted successfully.\x1b[0m");
      console.log(`Lead Score: \x1b[36m${json.score}\x1b[0m`);
      console.log(`Is Hot Lead: \x1b[36m${json.isHot}\x1b[0m`);
      console.log(`WhatsApp Deep Link: \x1b[36m${json.waLink}\x1b[0m`);
      console.log("\n\x1b[35m[INFO] Check your Mailtrap inbox at https://mailtrap.io/ to confirm delivery!\x1b[0m");
    } else {
      console.error("\x1b[31mAPI returned error:\x1b[0m", json.error);
    }
  } catch (err) {
    console.error("\x1b[31mFailed to submit lead to localhost:3000.\x1b[0m");
    console.error("Is the local server running? Make sure 'npm run dev' is active on port 3000.");
  }
}

submitLead();
