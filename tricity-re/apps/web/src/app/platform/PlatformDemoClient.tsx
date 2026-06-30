"use client";

import { useMemo, useState, useEffect, useCallback } from "react";
import Link from "next/link";
import { useRouter, useSearchParams } from "next/navigation";
import {
  DEMO_CATEGORIES,
  DEMO_CATEGORY_LABELS,
  PLATFORM_DEMO_SECTIONS,
  type DemoCategory,
  type PlatformDemoSection,
} from "@/content/platform-demo";

const PAGE_SIZES = [5, 8, 12] as const;

function sectionMatchesSearch(section: PlatformDemoSection, query: string): boolean {
  if (!query.trim()) return true;
  const q = query.toLowerCase();
  const haystack = [
    section.title,
    section.summary,
    section.category,
    ...section.tags,
    ...(section.steps ?? []),
    ...section.body,
  ]
    .join(" ")
    .toLowerCase();
  return haystack.includes(q);
}

export function PlatformDemoClient() {
  const router = useRouter();
  const searchParams = useSearchParams();

  const [search, setSearch] = useState(searchParams.get("q") ?? "");
  const [category, setCategory] = useState<DemoCategory | "all">(
    (searchParams.get("cat") as DemoCategory | "all") || "all",
  );
  const [currentPage, setCurrentPage] = useState(Number(searchParams.get("page") ?? "1") || 1);
  const [pageSize, setPageSize] = useState<number>(
    Number(searchParams.get("size") ?? "8") || 8,
  );
  const [expandedId, setExpandedId] = useState<string | null>(searchParams.get("section"));

  const syncUrl = useCallback(
    (updates: { q?: string; cat?: string; page?: number; size?: number; section?: string | null }) => {
      const params = new URLSearchParams();
      const q = updates.q ?? search;
      const cat = updates.cat ?? category;
      const page = updates.page ?? currentPage;
      const size = updates.size ?? pageSize;
      const section = updates.section !== undefined ? updates.section : expandedId;

      if (q) params.set("q", q);
      if (cat !== "all") params.set("cat", cat);
      if (page > 1) params.set("page", String(page));
      if (size !== 8) params.set("size", String(size));
      if (section) params.set("section", section);

      const qs = params.toString();
      router.replace(qs ? `/platform?${qs}` : "/platform", { scroll: false });
    },
    [router, search, category, currentPage, pageSize, expandedId],
  );

  const filtered = useMemo(() => {
    return PLATFORM_DEMO_SECTIONS.filter((s) => {
      if (category !== "all" && s.category !== category) return false;
      return sectionMatchesSearch(s, search);
    });
  }, [search, category]);

  useEffect(() => {
    setCurrentPage(1);
  }, [search, category, pageSize]);

  const totalPages = Math.max(1, Math.ceil(filtered.length / pageSize));
  const safePage = Math.min(currentPage, totalPages);
  const startIndex = (safePage - 1) * pageSize;
  const paginated = filtered.slice(startIndex, startIndex + pageSize);

  useEffect(() => {
    if (safePage !== currentPage) setCurrentPage(safePage);
  }, [safePage, currentPage]);

  return (
    <div className="space-y-8">
      {/* Hero stats */}
      <div className="grid gap-4 sm:grid-cols-3">
        <div className="rounded-xl border border-brand-200 bg-brand-50/50 p-4">
          <p className="text-2xl font-extrabold text-brand-900">{PLATFORM_DEMO_SECTIONS.length}</p>
          <p className="text-sm text-stone-600">Documented topics</p>
        </div>
        <div className="rounded-xl border border-stone-200 bg-white p-4">
          <p className="text-2xl font-extrabold text-stone-900">{DEMO_CATEGORIES.length}</p>
          <p className="text-sm text-stone-600">Categories</p>
        </div>
        <div className="rounded-xl border border-emerald-200 bg-emerald-50/50 p-4">
          <p className="text-2xl font-extrabold text-emerald-900">6</p>
          <p className="text-sm text-stone-600">Non-negotiable rules</p>
        </div>
      </div>

      {/* Toolbar */}
      <div className="rounded-2xl border border-stone-200 bg-white p-5 shadow-sm space-y-4">
        <div className="relative">
          <span className="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none text-stone-400">
            <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" aria-hidden>
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
            </svg>
          </span>
          <input
            type="search"
            value={search}
            onChange={(e) => {
              setSearch(e.target.value);
              syncUrl({ q: e.target.value, page: 1 });
            }}
            placeholder="Search topics: pricing, pipeline, residential, RERA, leads, milestones…"
            className="w-full pl-10 pr-4 py-2.5 border border-stone-200 rounded-xl focus:outline-none focus:ring-2 focus:ring-brand-500 bg-white text-stone-900"
            aria-label="Search platform documentation"
          />
        </div>

        <div className="flex flex-wrap gap-2">
          <button
            onClick={() => {
              setCategory("all");
              syncUrl({ cat: "all", page: 1 });
            }}
            className={`px-3 py-1.5 text-xs font-semibold rounded-lg border transition-all ${
              category === "all"
                ? "bg-brand-600 border-brand-600 text-white"
                : "bg-white border-stone-200 text-stone-600 hover:bg-stone-50"
            }`}
          >
            All topics
          </button>
          {DEMO_CATEGORIES.map((cat) => (
            <button
              key={cat}
              onClick={() => {
                setCategory(cat);
                syncUrl({ cat, page: 1 });
              }}
              className={`px-3 py-1.5 text-xs font-semibold rounded-lg border transition-all ${
                category === cat
                  ? "bg-brand-600 border-brand-600 text-white"
                  : "bg-white border-stone-200 text-stone-600 hover:bg-stone-50"
              }`}
            >
              {DEMO_CATEGORY_LABELS[cat]}
            </button>
          ))}
        </div>

        <div className="flex flex-wrap items-center justify-between gap-3 text-sm text-stone-500 border-t border-stone-100 pt-3">
          <p>
            Showing <span className="font-semibold text-stone-900">{filtered.length}</span> of{" "}
            {PLATFORM_DEMO_SECTIONS.length} topics
          </p>
          <div className="flex items-center gap-2">
            <span>Per page:</span>
            <select
              value={pageSize}
              onChange={(e) => {
                const size = Number(e.target.value);
                setPageSize(size);
                syncUrl({ size, page: 1 });
              }}
              className="border border-stone-200 rounded-lg px-2 py-1 bg-white text-stone-700"
            >
              {PAGE_SIZES.map((s) => (
                <option key={s} value={s}>
                  {s}
                </option>
              ))}
            </select>
          </div>
        </div>
      </div>

      {/* Quick jump */}
      <nav aria-label="Topic quick links" className="flex flex-wrap gap-2">
        {paginated.map((s) => (
          <a
            key={s.id}
            href={`#${s.id}`}
            onClick={() => {
              setExpandedId(s.id);
              syncUrl({ section: s.id });
            }}
            className="text-xs font-medium text-brand-600 no-underline hover:text-brand-800 bg-brand-50 px-2.5 py-1 rounded-lg border border-brand-100"
          >
            {s.title}
          </a>
        ))}
      </nav>

      {/* Sections */}
      {paginated.length === 0 ? (
        <div className="text-center py-16 rounded-2xl border border-dashed border-stone-200 bg-stone-50">
          <p className="text-stone-600 font-medium">No topics match your search.</p>
          <button
            onClick={() => {
              setSearch("");
              setCategory("all");
              syncUrl({ q: "", cat: "all", page: 1, section: null });
            }}
            className="mt-3 text-sm font-semibold text-brand-600"
          >
            Clear search
          </button>
        </div>
      ) : (
        <div className="space-y-4">
          {paginated.map((section) => {
            const isOpen = expandedId === section.id;
            return (
              <article
                key={section.id}
                id={section.id}
                className="scroll-mt-24 rounded-2xl border border-stone-200 bg-white shadow-sm overflow-hidden"
              >
                <button
                  type="button"
                  onClick={() => {
                    const next = isOpen ? null : section.id;
                    setExpandedId(next);
                    syncUrl({ section: next });
                  }}
                  className="w-full text-left px-6 py-5 flex items-start justify-between gap-4 hover:bg-stone-50/80 transition-colors"
                  aria-expanded={isOpen}
                >
                  <div>
                    <span className="inline-block text-[10px] font-bold uppercase tracking-wider text-brand-700 bg-brand-50 px-2 py-0.5 rounded border border-brand-100 mb-2">
                      {DEMO_CATEGORY_LABELS[section.category]}
                    </span>
                    <h2 className="text-lg font-bold text-stone-900">{section.title}</h2>
                    <p className="mt-1 text-sm text-stone-600">{section.summary}</p>
                  </div>
                  <span className="shrink-0 text-stone-400 text-xl font-light" aria-hidden>
                    {isOpen ? "−" : "+"}
                  </span>
                </button>

                {isOpen && (
                  <div className="px-6 pb-6 border-t border-stone-100 space-y-4">
                    <div className="flex flex-wrap gap-1.5 pt-4">
                      {section.tags.map((tag) => (
                        <span
                          key={tag}
                          className="text-[10px] font-medium text-stone-500 bg-stone-100 px-2 py-0.5 rounded"
                        >
                          {tag}
                        </span>
                      ))}
                    </div>

                    {section.steps && section.steps.length > 0 && (
                      <div>
                        <h3 className="text-sm font-bold text-stone-800 mb-2">Step-by-step</h3>
                        <ol className="list-decimal list-inside space-y-1.5 text-sm text-stone-700">
                          {section.steps.map((step, i) => (
                            <li key={i} className="leading-relaxed">
                              {step}
                            </li>
                          ))}
                        </ol>
                      </div>
                    )}

                    <div className="space-y-3">
                      {section.body.map((para, i) => (
                        <p key={i} className="text-sm text-stone-700 leading-relaxed">
                          {para}
                        </p>
                      ))}
                    </div>

                    {section.relatedLinks && section.relatedLinks.length > 0 && (
                      <div className="flex flex-wrap gap-3 pt-2">
                        {section.relatedLinks.map((link) => (
                          <Link
                            key={link.href}
                            href={link.href}
                            className="text-sm font-semibold text-brand-600 no-underline hover:text-brand-800"
                          >
                            {link.label} →
                          </Link>
                        ))}
                      </div>
                    )}
                  </div>
                )}
              </article>
            );
          })}
        </div>
      )}

      {/* Pagination */}
      {totalPages > 1 && (
        <div className="flex flex-wrap items-center justify-between gap-4 border-t border-stone-200 pt-6">
          <p className="text-sm text-stone-500">
            Page {safePage} of {totalPages} · topics {startIndex + 1}–
            {Math.min(startIndex + pageSize, filtered.length)}
          </p>
          <div className="flex gap-2">
            <button
              disabled={safePage <= 1}
              onClick={() => {
                const p = safePage - 1;
                setCurrentPage(p);
                syncUrl({ page: p });
                window.scrollTo({ top: 0, behavior: "smooth" });
              }}
              className="px-4 py-2 text-sm font-semibold rounded-lg border border-stone-200 bg-white disabled:opacity-40"
            >
              Previous
            </button>
            <button
              disabled={safePage >= totalPages}
              onClick={() => {
                const p = safePage + 1;
                setCurrentPage(p);
                syncUrl({ page: p });
                window.scrollTo({ top: 0, behavior: "smooth" });
              }}
              className="px-4 py-2 text-sm font-semibold rounded-lg border border-stone-200 bg-white disabled:opacity-40"
            >
              Next
            </button>
          </div>
        </div>
      )}
    </div>
  );
}
