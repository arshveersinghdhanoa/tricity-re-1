import { fetchProjects } from "@/lib/data";
import { resolveTenant } from "@/lib/tenant";
import { RERA_DATA_DISCLAIMER } from "@tricity/core";
import { ProjectsClientList } from "./ProjectsClientList";

export const revalidate = 3600;

export default async function ProjectsPage() {
  const tenant = await resolveTenant();
  const projects = await fetchProjects(tenant.slug);

  return (
    <>
      <div className="border-b border-stone-200 pb-6 mb-8">
        <h1 className="text-4xl font-extrabold tracking-tight text-brand-900">
          RERA-tracked projects
        </h1>
        <p className="mt-2 text-lg text-stone-600">
          Explore registered projects in {tenant.name} with verified transacted deeds or broker asks.
        </p>
      </div>

      <ProjectsClientList
        initialProjects={projects}
        reraDisclaimer={RERA_DATA_DISCLAIMER}
      />
    </>
  );
}
