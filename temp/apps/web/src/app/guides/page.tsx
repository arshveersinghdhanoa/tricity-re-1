import Link from "next/link";
import { PageHeader } from "@/components/PageHeader";
import { resolveTenant } from "@/lib/tenant";

export const revalidate = 86400;

export default async function GuidesPage() {
  const tenant = await resolveTenant();

  return (
    <>
      <PageHeader
        badge="Buyer research"
        title="Buyer guides"
        description={`Editorial content unique to ${tenant.name}. Placeholder shells until Client supplies final copy.`}
      />

      <ul className="grid gap-6 sm:grid-cols-2">
        {tenant.guides.map((g) => (
          <li key={g.slug}>
            <Link
              href={`/guides/${g.slug}`}
              className="block h-full rounded-xl border border-stone-200/80 bg-white/80 p-5 no-underline shadow-sm backdrop-blur-sm transition-all duration-300 hover:-translate-y-1 hover:border-brand-200 hover:shadow-md"
            >
              <div className="flex items-start justify-between gap-2">
                <h2 className="text-lg font-semibold text-stone-900 hover:text-brand-600 transition-colors">
                  {g.title}
                </h2>
                {g.isPlaceholder && (
                  <span className="shrink-0 rounded bg-amber-50 border border-amber-200 px-2.5 py-0.5 text-xs font-medium text-amber-800">
                    Placeholder
                  </span>
                )}
              </div>
              <p className="mt-2.5 text-sm text-stone-500 line-clamp-3">{g.summary}</p>
            </Link>
          </li>
        ))}
      </ul>
    </>
  );
}
