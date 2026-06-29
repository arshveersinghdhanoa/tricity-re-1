import { Suspense } from "react";
import Link from "next/link";
import { INDEPENDENCE_DISCLAIMER } from "@tricity/core";
import { PlatformDemoClient } from "./PlatformDemoClient";

export const revalidate = 86400;

export default function PlatformPage() {
  return (
    <>
      <div className="border-b border-stone-200 pb-8 mb-8">
        <div className="inline-flex items-center gap-1.5 rounded-full bg-brand-100 px-3 py-1 text-xs font-semibold text-brand-900 border border-brand-200/50 mb-4">
          Interactive platform walkthrough
        </div>
        <h1 className="text-4xl font-extrabold tracking-tight text-brand-900">
          How Tricity RE works
        </h1>
        <p className="mt-3 max-w-3xl text-lg text-stone-600 leading-relaxed">
          A detailed, searchable guide to every aspect of this platform — what we build, how data
          flows, why verified prices matter, and how this differs from listing portals. Expand any
          topic below or search by keyword.
        </p>

        <div className="mt-6 flex flex-wrap gap-3">
          <Link
            href="/projects"
            className="inline-flex items-center rounded-xl bg-brand-600 px-4 py-2.5 text-sm font-bold text-white no-underline hover:bg-brand-700 shadow-sm"
          >
            Explore live projects →
          </Link>
          <Link
            href="/guides"
            className="inline-flex items-center rounded-xl border border-stone-200 bg-white px-4 py-2.5 text-sm font-bold text-stone-700 no-underline hover:bg-stone-50"
          >
            Buyer guides
          </Link>
        </div>
      </div>

      {/* Comparison highlight */}
      <section className="mb-10 grid gap-4 md:grid-cols-2">
        <div className="rounded-2xl border border-stone-200 bg-white p-5">
          <h2 className="text-sm font-bold uppercase tracking-wider text-stone-400">Typical portal</h2>
          <ul className="mt-3 space-y-2 text-sm text-stone-600">
            <li>· Maximise listing count</li>
            <li>· Broker asking prices shown as facts</li>
            <li>· No source chain for prices</li>
            <li>· Pan-India breadth over local depth</li>
          </ul>
        </div>
        <div className="rounded-2xl border border-emerald-200 bg-emerald-50/40 p-5">
          <h2 className="text-sm font-bold uppercase tracking-wider text-emerald-700">Tricity RE</h2>
          <ul className="mt-3 space-y-2 text-sm text-stone-700">
            <li>· Maximise verified accuracy</li>
            <li>· Transacted prices factual only when sourced</li>
            <li>· Staging → validation → promotion pipeline</li>
            <li>· Micro-market intelligence (New Chandigarh first)</li>
          </ul>
        </div>
      </section>

      <Suspense fallback={<p className="text-stone-500">Loading documentation…</p>}>
        <PlatformDemoClient />
      </Suspense>

      <div className="mt-10 rounded-2xl border border-amber-200 bg-amber-50/60 p-5 text-sm text-amber-950">
        {INDEPENDENCE_DISCLAIMER}
      </div>
    </>
  );
}
