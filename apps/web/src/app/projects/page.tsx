import { Suspense } from "react";
import { fetchProjects } from "@/lib/data";
import { resolveTenant } from "@/lib/tenant";
import { RERA_DATA_DISCLAIMER } from "@tricity/core";
import { PageHeader } from "@/components/PageHeader";
import { ProjectsClientList } from "./ProjectsClientList";
import Link from "next/link";

export const revalidate = 3600;

export default async function ProjectsPage() {
  const tenant = await resolveTenant();
  const projects = await fetchProjects(tenant.slug);

  return (
    <>
      <PageHeader
        badge="RERA registry · production data"
        title="RERA-tracked projects"
        description="Search by name, RERA ID, or district. Filter residential, commercial, mixed use, and more — only genuinely promoted records appear here."
        meta={
          <>
            {projects.length} project{projects.length !== 1 ? "s" : ""} in production ·{" "}
            <span className="font-medium text-emerald-700">Verified prices labelled on each card</span>
          </>
        }
        actions={
          <Link
            href="/platform"
            className="inline-flex text-sm font-semibold text-brand-700 no-underline hover:text-brand-900 bg-white/80 px-4 py-2.5 rounded-xl border border-brand-200/60 shadow-sm backdrop-blur-sm"
          >
            How this works →
          </Link>
        }
      />

      <Suspense fallback={<p className="text-stone-500">Loading projects…</p>}>
        <ProjectsClientList initialProjects={projects} reraDisclaimer={RERA_DATA_DISCLAIMER} />
      </Suspense>
    </>
  );
}
