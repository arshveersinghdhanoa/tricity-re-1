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
      <div className="border-b border-stone-200 pb-6">
        <h1 className="text-3xl font-extrabold tracking-tight text-brand-900">Projects</h1>
        <p className="mt-2 text-lg text-stone-600">
          RERA-registered projects with verified or indicative pricing as labelled on each record.
        </p>
      </div>

      <div className="mt-8">
        {projects.length === 0 ? (
          <EmptyState
            title="No projects in production"
            description="We do not populate the site with unverified data. Projects appear here after validated promotion from the data pipeline."
          />
        ) : (
          <ul className="grid gap-6 sm:grid-cols-2">
            {projects.map((p) => (
              <li key={p.id} className="group relative rounded-xl border border-stone-200 bg-white p-5 shadow-sm transition-all duration-300 hover:-translate-y-1 hover:border-brand-200 hover:shadow-md">
                <Link href={`/projects/${p.slug}`} className="block no-underline">
                  <h2 className="text-lg font-bold text-stone-900 group-hover:text-brand-600 transition-colors">
                    {p.name}
                  </h2>
                  <div className="mt-3 flex items-center justify-between text-xs font-medium text-stone-500">
                    <span className="rounded bg-stone-100 px-2.5 py-1 font-mono tracking-wider">
                      RERA: {p.rera_number}
                    </span>
                    {p.status && (
                      <span className="rounded bg-brand-50 text-brand-700 px-2 py-0.5 capitalize">
                        {p.status}
                      </span>
                    )}
                  </div>
                </Link>
              </li>
            ))}
          </ul>
        )}
      </div>

      <div className="mt-12 rounded-xl border border-amber-200 bg-amber-50 p-4 text-sm text-amber-950 font-medium">
        {RERA_DATA_DISCLAIMER}
      </div>
    </>
  );
}
