import { Suspense } from "react";
import Link from "next/link";
import { INDEPENDENCE_DISCLAIMER } from "@tricity/core";
import { PageHeader } from "@/components/PageHeader";
import { PlatformDemoClient } from "./PlatformDemoClient";

export const revalidate = 86400;

export default function PlatformPage() {
  return (
    <>
      <PageHeader
        badge="Interactive platform walkthrough"
        title="How Tricity RE works"
        description="A detailed, searchable guide to every aspect of this platform — what we build, how data flows, why verified prices matter, and how this differs from listing portals."
        actions={
          <div className="flex flex-wrap gap-2">
            <Link
              href="/projects"
              className="inline-flex items-center rounded-xl bg-brand-600 px-4 py-2.5 text-sm font-bold text-white no-underline hover:bg-brand-700 shadow-sm"
            >
              Explore projects →
            </Link>
            <Link
              href="/guides"
              className="inline-flex items-center rounded-xl border border-brand-200/60 bg-white/80 px-4 py-2.5 text-sm font-bold text-stone-700 no-underline hover:bg-white backdrop-blur-sm"
            >
              Buyer guides
            </Link>
          </div>
        }
      />

      <section className="mb-10 grid gap-4 md:grid-cols-2">
        <div className="rounded-2xl border border-stone-200/80 bg-white/75 p-5 shadow-sm backdrop-blur-sm">
          <h2 className="text-sm font-bold uppercase tracking-wider text-stone-400">Typical portal</h2>
          <ul className="mt-3 space-y-2 text-sm text-stone-600">
            <li>· Maximise listing count</li>
            <li>· Broker asking prices shown as facts</li>
            <li>· No source chain for prices</li>
            <li>· Pan-India breadth over local depth</li>
          </ul>
        </div>
        <div className="rounded-2xl border border-emerald-200/80 bg-emerald-50/50 p-5 shadow-sm backdrop-blur-sm">
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

      <div className="mt-10 rounded-2xl border border-amber-200/80 bg-amber-50/70 p-5 text-sm text-amber-950 backdrop-blur-sm">
        {INDEPENDENCE_DISCLAIMER}
      </div>
    </>
  );
}
