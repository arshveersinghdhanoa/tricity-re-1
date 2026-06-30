/** Fixed decorative layers behind all page content — tenant brand tints via CSS vars. */
export function SiteBackground() {
  return (
    <div className="site-bg pointer-events-none fixed inset-0 -z-10 overflow-hidden" aria-hidden>
      <div className="site-bg-base absolute inset-0" />
      <div className="site-bg-grid absolute inset-0 opacity-[0.45]" />
      <div className="site-bg-noise absolute inset-0 opacity-[0.035]" />

      <div className="site-bg-blob site-bg-blob-a absolute -left-[20%] -top-[15%] h-[min(720px,90vw)] w-[min(720px,90vw)] rounded-full" />
      <div className="site-bg-blob site-bg-blob-b absolute -right-[15%] top-[18%] h-[min(640px,85vw)] w-[min(640px,85vw)] rounded-full" />
      <div className="site-bg-blob site-bg-blob-c absolute -bottom-[20%] left-[25%] h-[min(560px,80vw)] w-[min(560px,80vw)] rounded-full" />

      <div className="absolute inset-x-0 top-0 h-px bg-gradient-to-r from-transparent via-brand-300/60 to-transparent" />
      <div className="absolute inset-x-0 bottom-0 h-32 bg-gradient-to-t from-stone-100/80 to-transparent" />
    </div>
  );
}
