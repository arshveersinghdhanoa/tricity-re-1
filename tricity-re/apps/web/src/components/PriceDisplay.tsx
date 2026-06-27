import { formatPriceDisplay, type PriceRecord } from "@tricity/core";

export function PriceDisplay({ price }: { price: PriceRecord }) {
  const display = formatPriceDisplay(price);

  return (
    <div
      className={
        display.mode === "factual-transacted"
          ? "relative rounded-xl border border-emerald-200 bg-emerald-50/60 p-5 shadow-sm overflow-hidden"
          : "relative rounded-xl border border-stone-200 bg-stone-50/60 p-5 shadow-sm"
      }
    >
      {display.mode === "factual-transacted" && (
        <div className="absolute top-0 right-0 h-24 w-24 translate-x-8 -translate-y-8 bg-emerald-100/30 rounded-full blur-xl" />
      )}
      <div className="flex items-center gap-1.5">
        {display.mode === "factual-transacted" ? (
          <span className="relative flex h-2 w-2">
            <span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-emerald-400 opacity-75"></span>
            <span className="relative inline-flex rounded-full h-2 w-2 bg-emerald-500"></span>
          </span>
        ) : (
          <span className="h-2 w-2 rounded-full bg-stone-400"></span>
        )}
        <p className="text-xs font-bold uppercase tracking-wider text-stone-500">
          {display.label}
        </p>
      </div>
      
      <p className="mt-2 text-3xl font-extrabold text-stone-900 tracking-tight">
        ₹{display.amount.toLocaleString("en-IN")}
        <span className="text-sm font-normal text-stone-500"> / {display.unit}</span>
      </p>
      
      {display.source && (
        <p className="mt-3 text-xs font-semibold text-stone-600 bg-white/65 inline-block px-2.5 py-1 rounded border border-stone-200/50">
          Source: {display.source}
        </p>
      )}
      
      {display.mode === "indicative" && (
        <p className="mt-3 text-xs text-stone-500 font-medium">
          Not a verified transacted price. Treat as indicative only.
        </p>
      )}
    </div>
  );
}
