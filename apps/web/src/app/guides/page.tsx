import Link from "next/link";
import { resolveTenant } from "@/lib/tenant";

export const revalidate = 86400;

export default async function GuidesPage() {
  const tenant = await resolveTenant();

  return (
    <>
      <h1 className="text-2xl font-bold">Buyer guides</h1>
      <p className="mt-2 text-stone-600">
        Editorial content unique to {tenant.name}. Placeholder shells until Client supplies final copy.
      </p>

      <ul className="mt-8 space-y-4">
        {tenant.guides.map((g) => (
          <li key={g.slug} className="rounded-lg border border-stone-200 bg-white p-5">
            <Link href={`/guides/${g.slug}`} className="text-lg font-medium no-underline">
              {g.title}
            </Link>
            <p className="mt-1 text-sm text-stone-600">{g.summary}</p>
            {g.isPlaceholder && (
              <span className="mt-2 inline-block rounded bg-amber-50 px-2 py-1 text-xs text-amber-800">
                Placeholder — awaiting Client editorial
              </span>
            )}
          </li>
        ))}
      </ul>
    </>
  );
}
