#!/usr/bin/env node
import { inspectAll, inspectPortal } from "./inspect.js";
import { scrapePsrera, scrapeGmada } from "./scrape.js";
import { promoteProjects } from "./promote.js";
import { importStagingPrices } from "./staging-prices.js";
import { importStagingProjects } from "./staging-projects.js";
import type { PortalId } from "./config.js";
import { PORTALS } from "./config.js";

import fs from "fs";
import path from "path";

// Simple env file loader for development convenience
function loadEnv() {
  let currentDir = process.cwd();
  while (currentDir) {
    const p = path.join(currentDir, ".env.local");
    if (fs.existsSync(p)) {
      const content = fs.readFileSync(p, "utf8");
      for (const line of content.split("\n")) {
        const trimmed = line.trim();
        if (trimmed && !trimmed.startsWith("#")) {
          const idx = trimmed.indexOf("=");
          if (idx > 0) {
            const key = trimmed.substring(0, idx).trim();
            let val = trimmed.substring(idx + 1).trim();
            // Remove comments from the end of the line if any
            const hashIdx = val.indexOf("#");
            if (hashIdx >= 0) {
              val = val.substring(0, hashIdx).trim();
            }
            val = val.replace(/^['"]|['"]$/g, ""); // strip quotes
            if (!process.env[key]) {
              process.env[key] = val;
            }
          }
        }
      }
      break;
    }
    const parent = path.dirname(currentDir);
    if (parent === currentDir) break;
    currentDir = parent;
  }
}
loadEnv();

const [, , command, ...args] = process.argv;

function hasFlag(name: string): boolean {
  return args.includes(`--${name}`);
}

function getArg(name: string): string | undefined {
  const val = args.find((a) => a.startsWith(`--${name}=`));
  return val?.split("=")[1];
}

async function main(): Promise<void> {
  switch (command) {
    case "inspect": {
      const portal = getArg("portal") as PortalId | undefined;
      if (portal && portal in PORTALS) {
        console.log(JSON.stringify(await inspectPortal(portal), null, 2));
      } else {
        const results = await inspectAll();
        console.log(JSON.stringify(results, null, 2));
      }
      break;
    }

    case "dry-run": {
      const portal = getArg("portal") ?? "psrera";
      switch (portal) {
        case "psrera": {
          const result = await scrapePsrera({ dryRun: true, tenantId: getArg("tenant"), source: getArg("source") as "excel" | "pdf" | undefined, file: getArg("file"), districtFilter: getArg("district") });
          console.log(JSON.stringify(result, null, 2));
          break;
        }
        case "gmada": {
          const result = await scrapeGmada({ dryRun: true, tenantId: getArg("tenant"), file: getArg("file") });
          console.log(JSON.stringify(result, null, 2));
          break;
        }
        default:
          console.log(JSON.stringify({ status: "error", reason: `Unknown portal: ${portal}` }));
          process.exit(1);
      }
      break;
    }

    case "scrape": {
      const portal = getArg("portal") ?? "psrera";
      switch (portal) {
        case "psrera": {
          const result = await scrapePsrera({ tenantId: getArg("tenant"), source: getArg("source") as "excel" | "pdf" | undefined, file: getArg("file"), districtFilter: getArg("district") });
          console.log(JSON.stringify(result, null, 2));
          process.exit(result.errors.length > 0 ? 1 : 0);
        }
        case "gmada": {
          const result = await scrapeGmada({ tenantId: getArg("tenant"), file: getArg("file") });
          console.log(JSON.stringify(result, null, 2));
          process.exit(result.errors.length > 0 ? 1 : 0);
        }
        default:
          console.log(JSON.stringify({ status: "error", reason: `Unknown portal: ${portal}` }));
          process.exit(1);
      }
      break;
    }

    case "promote": {
      const result = await promoteProjects({ tenantId: getArg("tenant"), limit: parseInt(getArg("limit") ?? "50", 10) });
      console.log(JSON.stringify(result, null, 2));
      process.exit(result.promoted === 0 && result.errors.length > 0 ? 1 : 0);
      break;
    }

    case "stage-prices": {
      const result = await importStagingPrices({
        file: getArg("file"),
        tenantId: getArg("tenant"),
        dryRun: hasFlag("dry-run"),
      });
      console.log(JSON.stringify(result, null, 2));
      process.exit(result.inserted === 0 && result.errors.length > 0 ? 1 : 0);
      break;
    }

    case "stage-projects": {
      const result = await importStagingProjects({
        file: getArg("file"),
        tenantId: getArg("tenant"),
        dryRun: hasFlag("dry-run"),
      });
      console.log(JSON.stringify(result, null, 2));
      process.exit(result.inserted === 0 && result.errors.length > 0 ? 1 : 0);
      break;
    }

    default:
      console.log(
        `Usage: tricity-pipeline <inspect|dry-run|scrape|promote|stage-prices|stage-projects> [--portal=psrera|gmada] [--tenant=<slug>] [--limit=N] [--file=path/to/json] [--source=excel|pdf] [--district=<name>] [--dry-run]`,
      );
      process.exit(command ? 1 : 0);
      break;
  }
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
