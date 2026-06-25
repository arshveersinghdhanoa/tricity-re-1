import { notFound } from "next/navigation";
import { resolveTenant } from "@/lib/tenant";

export const revalidate = 86400;

export async function generateStaticParams() {
  const tenant = await resolveTenant();
  return tenant.guides.map((g) => ({ slug: g.slug }));
}

export default async function GuideDetailPage({
  params,
}: {
  params: Promise<{ slug: string }>;
}) {
  const { slug } = await params;
  const tenant = await resolveTenant();
  const guide = tenant.guides.find((g) => g.slug === slug);

  if (!guide) notFound();

  return (
    <article>
      <h1 className="text-2xl font-bold">{guide.title}</h1>
      {guide.isPlaceholder && (
        <p className="mt-2 rounded-md bg-amber-50 px-3 py-2 text-sm text-amber-900">
          Placeholder editorial shell — final content to be supplied by Client.
        </p>
      )}
      <p className="mt-4 text-stone-700">{guide.summary}</p>
      <p className="mt-6 text-stone-500">
        Full guide content will be published here once the Client provides the editorial.
      </p>
    </article>
  );
}
