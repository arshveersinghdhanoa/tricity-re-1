#!/usr/bin/env node
import { inspectAll, inspectPortal } from "./inspect.js";
import type { PortalId } from "./config.js";
import { PORTALS } from "./config.js";

const [, , command, ...args] = process.argv;

async function main(): Promise<void> {
  switch (command) {
    case "inspect": {
      const portal = args.find((a) => a.startsWith("--portal="))?.split("=")[1] as PortalId | undefined;
      if (portal && portal in PORTALS) {
        console.log(JSON.stringify(await inspectPortal(portal), null, 2));
      } else {
        const results = await inspectAll();
        console.log(JSON.stringify(results, null, 2));
      }
      break;
    }
    case "dry-run": {
      console.log(
        JSON.stringify(
          {
            status: "skipped",
            reason:
              "Placeholder selectors — dry-run produces schema-valid records only after Milestone 3 selector mapping.",
            stagingTarget: "staging_projects / staging_prices (never production)",
          },
          null,
          2,
        ),
      );
      break;
    }
    default:
      console.log(`Usage: tricity-pipeline <inspect|dry-run> [--portal=psrera|gmada]`);
      process.exit(command ? 1 : 0);
  }
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
