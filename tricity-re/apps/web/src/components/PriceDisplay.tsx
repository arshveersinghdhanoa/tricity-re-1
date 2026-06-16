import { formatPriceDisplay, type PriceRecord } from "@tricity/core";

export function PriceDisplay({ price }: { price: PriceRecord }) {
  const display = formatPriceDisplay(price);

  return (
    <div
      className={
        display.mode === "factual-transacted"
          ? "rounded-lg border border-emerald-200 bg-emerald-50 p-4"
          : "rounded-lg border border-stone-200 bg-stone-50 p-4"
      }
    >
      <p className="text-xs font-semibold uppercase tracking-wide text-stone-600">
        {display.label}
      </p>
      <p className="mt-1 text-2xl font-bold text-stone-900">
        ₹{display.amount.toLocaleString("en-IN")}
        <span className="text-base font-normal text-stone-600"> / {display.unit}</span>
      </p>
      {display.source && (
        <p className="mt-2 text-sm text-stone-600">Source: {display.source}</p>
      )}
      {display.mode === "indicative" && (
        <p className="mt-2 text-sm text-stone-500">
          Not a verified transacted price. Treat as indicative only.
        </p>
      )}
    </div>
  );
}
