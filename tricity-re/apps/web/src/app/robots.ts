import type { MetadataRoute } from "next";
import { resolveTenant, getSiteUrl } from "@/lib/tenant";

export default async function robots(): Promise<MetadataRoute.Robots> {
  const tenant = await resolveTenant();
  const base = getSiteUrl(tenant.domain);

  return {
    rules: {
      userAgent: "*",
      allow: "/",
      disallow: ["/api/"],
    },
    sitemap: `${base}/sitemap.xml`,
  };
}
