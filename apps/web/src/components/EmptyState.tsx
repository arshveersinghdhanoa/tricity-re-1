export function EmptyState({
  title,
  description,
}: {
  title: string;
  description: string;
}) {
  return (
    <div className="rounded-xl border border-dashed border-stone-300 bg-white p-8 text-center">
      <h2 className="text-lg font-semibold text-stone-900">{title}</h2>
      <p className="mx-auto mt-2 max-w-md text-stone-600">{description}</p>
    </div>
  );
}
