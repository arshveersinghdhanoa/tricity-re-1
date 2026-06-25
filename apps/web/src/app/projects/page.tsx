import Link from "next/link";
import { EmptyState } from "@/components/EmptyState";
import { fetchProjects } from "@/lib/data";
import { resolveTenant } from "@/lib/tenant";
import { RERA_DATA_DISCLAIMER } from "@tricity/core";

export const revalidate = 3600;

export default async function ProjectsPage() {
  const tenant = await resolveTenant();
  const projects = await fetchProjects(tenant.slug);

  return (
    <>
      <h1 className="text-2xl font-bold">Projects</h1>
      <p className="mt-2 text-stone-600">
        RERA-registered projects with verified or indicative pricing as labelled on each record.
      </p>

      <div className="mt-8">
        {projects.length === 0 ? (
          <EmptyState
            title="No projects in production"
            description="We do not populate the site with unverified data. Projects appear here after validated promotion from the data pipeline."
          />
        ) : (
          <ul className="space-y-3">
            {projects.map((p) => (
              <li key={p.id} className="rounded-lg border border-stone-200 bg-white p-4">
                <Link href={`/projects/${p.slug}`} className="text-lg font-medium no-underline">
                  {p.name}
                </Link>
                <p className="text-sm text-stone-600">RERA: {p.rera_number} · {p.status}</p>
              </li>
            ))}
          </ul>
        )}
      </div>

      <div className="mt-8 rounded-md border border-amber-200 bg-amber-50 p-3 text-sm text-amber-950">
        {RERA_DATA_DISCLAIMER}
      </div>
    </>
  );
}
