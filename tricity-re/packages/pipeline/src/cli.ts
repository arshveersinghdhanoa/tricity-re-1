#!/usr/bin/env node
import { inspectAll, inspectPortal } from "./inspect.js";
import { scrapePsrera } from "./scrape.js";
import { promoteProjects } from "./promote.js";
import type { PortalId } from "./config.js";
import { PORTALS } from "./config.js";

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
          const result = await scrapePsrera({ dryRun: true, tenantId: getArg("tenant") });
          console.log(JSON.stringify(result, null, 2));
          break;
        }
        case "gmada":
          console.log(JSON.stringify({ status: "skipped", reason: "GMADA scraper not yet implemented (M2 recommendation B)" }, null, 2));
          break;
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
          const result = await scrapePsrera({ tenantId: getArg("tenant") });
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

    default:
      console.log(`Usage: tricity-pipeline <inspect|dry-run|scrape|promote> [--portal=psrera|gmada] [--tenant=<slug>] [--limit=N]`);
      process.exit(command ? 1 : 0);
  }
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
