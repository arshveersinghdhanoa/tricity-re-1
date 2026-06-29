import { Suspense } from "react";
import { fetchProjects } from "@/lib/data";
import { resolveTenant } from "@/lib/tenant";
import { RERA_DATA_DISCLAIMER } from "@tricity/core";
import { ProjectsClientList } from "./ProjectsClientList";
import Link from "next/link";

export const revalidate = 3600;

export default async function ProjectsPage() {
  const tenant = await resolveTenant();
  const projects = await fetchProjects(tenant.slug);

  return (
    <>
      <div className="border-b border-stone-200 pb-6 mb-8">
        <div className="flex flex-wrap items-start justify-between gap-4">
          <div>
            <h1 className="text-4xl font-extrabold tracking-tight text-brand-900">
              RERA-tracked projects
            </h1>
            <p className="mt-2 text-lg text-stone-600 max-w-2xl">
              Search by name, RERA ID, or district. Filter residential, commercial, mixed use, and
              more — only genuinely promoted records appear here.
            </p>
          </div>
          <Link
            href="/platform"
            className="shrink-0 text-sm font-semibold text-brand-600 no-underline hover:text-brand-800 bg-brand-50 px-3 py-2 rounded-lg border border-brand-100"
          >
            How this works →
          </Link>
        </div>
        <p className="mt-3 text-sm text-stone-500">
          {projects.length} project{projects.length !== 1 ? "s" : ""} in production ·{" "}
          <span className="text-emerald-700 font-medium">Verified prices labelled on each card</span>
        </p>
      </div>

      <Suspense fallback={<p className="text-stone-500">Loading projects…</p>}>
        <ProjectsClientList initialProjects={projects} reraDisclaimer={RERA_DATA_DISCLAIMER} />
      </Suspense>
    </>
  );
}
