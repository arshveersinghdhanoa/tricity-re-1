import { registerTenant } from "@tricity/core";
import { newchandigarh } from "./newchandigarh";
import { nayagaon } from "./nayagaon";
import { ajitgarh } from "./ajitgarh";

registerTenant(newchandigarh);
registerTenant(nayagaon);
registerTenant(ajitgarh);

export { newchandigarh, nayagaon, ajitgarh };
