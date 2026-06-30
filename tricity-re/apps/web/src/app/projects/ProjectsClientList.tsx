"use client";

import { useState, useMemo, useEffect, useCallback } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import type { ProjectRow } from "@/lib/data";
import { ProjectCard } from "@/components/ProjectCard";
import {
  categorizePropertyType,
  matchesPropertyCategory,
  parseProjectMeta,
  PROPERTY_TYPE_LABELS,
  type PropertyTypeCategory,
} from "@tricity/core";

interface ProjectsClientListProps {
  initialProjects: ProjectRow[];
  reraDisclaimer: string;
}

type StatusFilter = "all" | "priced" | "unpriced";
type PropertyFilter = PropertyTypeCategory | "all";

const PROPERTY_FILTERS: { value: PropertyFilter; label: string }[] = [
  { value: "all", label: "All types" },
  { value: "residential", label: PROPERTY_TYPE_LABELS.residential },
  { value: "commercial", label: PROPERTY_TYPE_LABELS.commercial },
  { value: "mixed", label: PROPERTY_TYPE_LABELS.mixed },
  { value: "industrial", label: PROPERTY_TYPE_LABELS.industrial },
  { value: "plotted", label: PROPERTY_TYPE_LABELS.plotted },
  { value: "other", label: PROPERTY_TYPE_LABELS.other },
];

function projectMatchesSearch(project: ProjectRow, query: string): boolean {
  if (!query.trim()) return true;
  const q = query.toLowerCase();
  const meta = parseProjectMeta(project);
  const haystack = [
    project.name,
    project.rera_number,
    project.description ?? "",
    project.status ?? "",
    meta.propertyType ?? "",
    meta.district ?? "",
    PROPERTY_TYPE_LABELS[meta.propertyCategory],
  ]
    .join(" ")
    .toLowerCase();
  return haystack.includes(q);
}

export function ProjectsClientList({ initialProjects, reraDisclaimer }: ProjectsClientListProps) {
  const router = useRouter();
  const searchParams = useSearchParams();

  const [search, setSearch] = useState(searchParams.get("q") ?? "");
  const [propertyType, setPropertyType] = useState<PropertyFilter>(
    (searchParams.get("type") as PropertyFilter) || "all",
  );
  const [statusFilter, setStatusFilter] = useState<StatusFilter>(
    searchParams.get("filter") === "priced"
      ? "priced"
      : searchParams.get("filter") === "unpriced"
        ? "unpriced"
        : "all",
  );
  const [currentPage, setCurrentPage] = useState(Number(searchParams.get("page") ?? "1") || 1);
  const [pageSize, setPageSize] = useState(Number(searchParams.get("size") ?? "10") || 10);

  const syncUrl = useCallback(
    (updates: Partial<{ q: string; type: string; filter: string; page: number; size: number }>) => {
      const params = new URLSearchParams();
      const q = updates.q ?? search;
      const type = updates.type ?? propertyType;
      const filter = updates.filter ?? statusFilter;
      const page = updates.page ?? currentPage;
      const size = updates.size ?? pageSize;

      if (q) params.set("q", q);
      if (type !== "all") params.set("type", type);
      if (filter !== "all") params.set("filter", filter);
      if (page > 1) params.set("page", String(page));
      if (size !== 10) params.set("size", String(size));

      const qs = params.toString();
      router.replace(qs ? `/projects?${qs}` : "/projects", { scroll: false });
    },
    [router, search, propertyType, statusFilter, currentPage, pageSize],
  );

  const categoryCounts = useMemo(() => {
    const counts: Record<PropertyTypeCategory | "all", number> = {
      all: initialProjects.length,
      residential: 0,
      commercial: 0,
      mixed: 0,
      industrial: 0,
      plotted: 0,
      other: 0,
    };
    for (const p of initialProjects) {
      counts[categorizePropertyType(p.status)]++;
    }
    return counts;
  }, [initialProjects]);

  const filteredProjects = useMemo(() => {
    return initialProjects.filter((p) => {
      if (!projectMatchesSearch(p, search)) return false;
      if (!matchesPropertyCategory(p.status, propertyType, p.property_type)) return false;
      const meta = parseProjectMeta(p);
      if (statusFilter === "priced" && !meta.hasPricing) return false;
      if (statusFilter === "unpriced" && meta.hasPricing) return false;
      return true;
    });
  }, [initialProjects, search, propertyType, statusFilter]);

  useEffect(() => {
    setCurrentPage(1);
  }, [search, propertyType, statusFilter, pageSize]);

  const totalItems = filteredProjects.length;
  const totalPages = Math.max(1, Math.ceil(totalItems / pageSize));
  const safePage = Math.min(currentPage, totalPages);
  const startIndex = (safePage - 1) * pageSize;
  const paginatedProjects = filteredProjects.slice(startIndex, startIndex + pageSize);

  useEffect(() => {
    if (safePage !== currentPage) setCurrentPage(safePage);
  }, [safePage, currentPage]);

  const clearFilters = () => {
    setSearch("");
    setPropertyType("all");
    setStatusFilter("all");
    setCurrentPage(1);
    syncUrl({ q: "", type: "all", filter: "all", page: 1 });
  };

  return (
    <div className="space-y-6">
      {/* Search */}
      <div className="rounded-2xl border border-stone-200/80 bg-white/75 p-5 shadow-sm backdrop-blur-sm space-y-4">
        <div className="relative">
          <span className="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none text-stone-400">
            <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" aria-hidden>
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
            </svg>
          </span>
          <input
            type="search"
            placeholder="Search by name, RERA ID, district, residential, commercial, mixed use…"
            value={search}
            onChange={(e) => {
              setSearch(e.target.value);
              syncUrl({ q: e.target.value, page: 1 });
            }}
            className="w-full pl-10 pr-4 py-2.5 border border-stone-200 rounded-xl focus:outline-none focus:ring-2 focus:ring-brand-500 bg-white text-stone-900"
            aria-label="Search projects"
          />
        </div>

        {/* Property type filters */}
        <div>
          <p className="text-xs font-bold uppercase tracking-wider text-stone-400 mb-2">Property type</p>
          <div className="flex flex-wrap gap-2">
            {PROPERTY_FILTERS.map(({ value, label }) => (
              <button
                key={value}
                onClick={() => {
                  setPropertyType(value);
                  syncUrl({ type: value, page: 1 });
                }}
                className={`px-3 py-1.5 text-xs font-semibold rounded-lg border transition-all ${
                  propertyType === value
                    ? "bg-brand-600 border-brand-600 text-white shadow-sm"
                    : "bg-white border-stone-200 text-stone-600 hover:bg-stone-50"
                }`}
              >
                {label}
                {value !== "all" && (
                  <span className="ml-1 opacity-70">({categoryCounts[value]})</span>
                )}
              </button>
            ))}
          </div>
        </div>

        {/* Pricing filters */}
        <div>
          <p className="text-xs font-bold uppercase tracking-wider text-stone-400 mb-2">Pricing</p>
          <div className="flex flex-wrap gap-2">
            {(
              [
                { value: "all" as const, label: "All projects" },
                { value: "priced" as const, label: "With pricing data" },
                { value: "unpriced" as const, label: "No prices yet" },
              ] as const
            ).map(({ value, label }) => (
              <button
                key={value}
                onClick={() => {
                  setStatusFilter(value);
                  syncUrl({ filter: value, page: 1 });
                }}
                className={`px-3 py-1.5 text-xs font-semibold rounded-lg border transition-all ${
                  statusFilter === value
                    ? "bg-stone-800 border-stone-800 text-white shadow-sm"
                    : "bg-white border-stone-200 text-stone-600 hover:bg-stone-50"
                }`}
              >
                {label}
              </button>
            ))}
          </div>
        </div>
      </div>

      {/* Results bar */}
      <div className="flex flex-wrap items-center justify-between gap-3 text-sm text-stone-500 border-b border-stone-100 pb-2">
        <p>
          <span className="font-semibold text-stone-900">{totalItems}</span> projects
          {propertyType !== "all" && (
            <span> · {PROPERTY_TYPE_LABELS[propertyType as PropertyTypeCategory]}</span>
          )}
          {search && <span> · matching &ldquo;{search}&rdquo;</span>}
        </p>
        <div className="flex items-center gap-2">
          <span>Show:</span>
          <select
            value={pageSize}
            onChange={(e) => {
              const size = Number(e.target.value);
              setPageSize(size);
              syncUrl({ size, page: 1 });
            }}
            className="border border-stone-200 rounded-lg px-2 py-1 bg-white text-stone-700"
          >
            <option value={10}>10</option>
            <option value={20}>20</option>
            <option value={50}>50</option>
          </select>
        </div>
      </div>

      {/* Grid */}
      {paginatedProjects.length === 0 ? (
        <div className="text-center py-16 rounded-2xl border border-dashed border-stone-200 bg-stone-50">
          <p className="text-stone-600 font-medium">No projects match your filters.</p>
          <p className="mt-2 text-sm text-stone-500 max-w-md mx-auto">
            Try a broader property type, clear the search, or browse the{" "}
            <a href="/platform" className="text-brand-600 font-semibold">
              platform guide
            </a>{" "}
            to understand how data enters production.
          </p>
          <button onClick={clearFilters} className="mt-4 text-sm font-semibold text-brand-600">
            Clear all filters
          </button>
        </div>
      ) : (
        <div className="grid gap-6 md:grid-cols-2">
          {paginatedProjects.map((p) => (
            <ProjectCard key={p.id} project={p} />
          ))}
        </div>
      )}

      {/* Pagination */}
      {totalPages > 1 && (
        <div className="flex flex-wrap items-center justify-between gap-4 border-t border-stone-200 pt-6">
          <p className="text-sm text-stone-500">
            Showing {startIndex + 1}–{Math.min(startIndex + pageSize, totalItems)} of {totalItems}
          </p>
          <div className="flex gap-1">
            <button
              onClick={() => {
                const p = safePage - 1;
                setCurrentPage(p);
                syncUrl({ page: p });
              }}
              disabled={safePage <= 1}
              className="px-3 py-1.5 text-xs font-bold rounded-lg border border-stone-200 bg-white disabled:opacity-40"
            >
              Previous
            </button>
            {Array.from({ length: totalPages }, (_, i) => i + 1)
              .filter(
                (page) =>
                  page === 1 || page === totalPages || Math.abs(page - safePage) <= 1,
              )
              .map((page, index, array) => {
                const showEllipsis = index > 0 && page - array[index - 1] > 1;
                return (
                  <div key={page} className="flex gap-1">
                    {showEllipsis && <span className="px-2 text-stone-400">…</span>}
                    <button
                      onClick={() => {
                        setCurrentPage(page);
                        syncUrl({ page });
                      }}
                      className={`px-3 py-1.5 text-xs font-bold rounded-lg border ${
                        safePage === page
                          ? "bg-brand-600 border-brand-600 text-white"
                          : "bg-white border-stone-200 text-stone-600"
                      }`}
                    >
                      {page}
                    </button>
                  </div>
                );
              })}
            <button
              onClick={() => {
                const p = safePage + 1;
                setCurrentPage(p);
                syncUrl({ page: p });
              }}
              disabled={safePage >= totalPages}
              className="px-3 py-1.5 text-xs font-bold rounded-lg border border-stone-200 bg-white disabled:opacity-40"
            >
              Next
            </button>
          </div>
        </div>
      )}

      <div className="rounded-2xl border border-amber-200 bg-amber-50/60 p-5 text-sm text-amber-950 font-medium">
        {reraDisclaimer}
      </div>
    </div>
  );
}
