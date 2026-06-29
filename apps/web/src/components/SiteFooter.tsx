import { INDEPENDENCE_DISCLAIMER, RERA_DATA_DISCLAIMER } from "@tricity/core";

export function SiteFooter({ showReraDisclaimer = false }: { showReraDisclaimer?: boolean }) {
  return (
    <footer className="site-footer-shell mt-auto">
      <div className="mx-auto max-w-6xl space-y-3 px-4 py-8 text-sm text-stone-700">
        {showReraDisclaimer && (
          <p className="rounded-md border border-amber-200 bg-amber-50/90 p-3 text-amber-950 backdrop-blur-sm">
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
