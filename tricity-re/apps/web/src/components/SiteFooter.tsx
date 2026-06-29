import { INDEPENDENCE_DISCLAIMER, RERA_DATA_DISCLAIMER } from "@tricity/core";

export function SiteFooter({ showReraDisclaimer = false }: { showReraDisclaimer?: boolean }) {
  return (
    <footer className="mt-auto border-t border-stone-200 bg-stone-100">
      <div className="mx-auto max-w-6xl space-y-3 px-4 py-8 text-sm text-stone-700">
        {showReraDisclaimer && (
          <p className="rounded-md border border-amber-200 bg-amber-50 p-3 text-amber-950">
            {RERA_DATA_DISCLAIMER}
          </p>
        )}
        <p>{INDEPENDENCE_DISCLAIMER}</p>
        <p className="text-stone-500">
          © {new Date().getFullYear()} — Independent property intelligence platform.
        </p>
      </div>
    </footer>
  );
}
