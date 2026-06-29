import type { MetadataRoute } from "next";
import { resolveTenant, getSiteUrl } from "@/lib/tenant";
import { fetchProjects } from "@/lib/data";

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const tenant = await resolveTenant();
  const base = getSiteUrl(tenant.domain);
  const projects = await fetchProjects(tenant.slug);

  const staticRoutes: MetadataRoute.Sitemap = [
    { url: base, lastModified: new Date(), changeFrequency: "daily", priority: 1 },
    { url: `${base}/projects`, lastModified: new Date(), changeFrequency: "daily", priority: 0.9 },
    { url: `${base}/platform`, lastModified: new Date(), changeFrequency: "weekly", priority: 0.85 },
    { url: `${base}/guides`, lastModified: new Date(), changeFrequency: "weekly", priority: 0.8 },
    ...tenant.guides.map((g) => ({
      url: `${base}/guides/${g.slug}`,
      lastModified: new Date(),
      changeFrequency: "weekly" as const,
      priority: 0.7,
    })),
  ];

  const projectRoutes: MetadataRoute.Sitemap = projects.map((p) => ({
    url: `${base}/projects/${p.slug}`,
    lastModified: new Date(),
    changeFrequency: "weekly" as const,
    priority: 0.8,
  }));

  return [...staticRoutes, ...projectRoutes];
}
