"use client";

import { useState, useMemo } from "react";
import Link from "next/link";
import type { ProjectRow } from "@/lib/data";

interface ProjectsClientListProps {
  initialProjects: ProjectRow[];
  reraDisclaimer: string;
}

export function ProjectsClientList({ initialProjects, reraDisclaimer }: ProjectsClientListProps) {
  const [search, setSearch] = useState("");
  const [filterType, setFilterType] = useState<"all" | "priced" | "active" | "lapsed">("all");
  const [currentPage, setCurrentPage] = useState(1);
  const [pageSize, setPageSize] = useState(10);

  // 1. Search & Filter logic
  const filteredProjects = useMemo(() => {
    return initialProjects.filter((p) => {
      // Search matching
      const matchesSearch =
        p.name.toLowerCase().includes(search.toLowerCase()) ||
        p.rera_number.toLowerCase().includes(search.toLowerCase()) ||
        (p.description && p.description.toLowerCase().includes(search.toLowerCase()));

      if (!matchesSearch) return false;

      // Filter matching
      if (filterType === "priced") {
        return p.prices && p.prices.length > 0;
      }
      if (filterType === "active") {
        return p.status?.toLowerCase() === "active";
      }
      if (filterType === "lapsed") {
        return p.status?.toLowerCase() === "lapsed";
      }

      return true;
    });
  }, [initialProjects, search, filterType]);

  // Reset page when search or filter changes
  useMemo(() => {
    setCurrentPage(1);
  }, [search, filterType, pageSize]);

  // 2. Pagination calculation
  const totalItems = filteredProjects.length;
  const totalPages = Math.max(1, Math.ceil(totalItems / pageSize));
  const startIndex = (currentPage - 1) * pageSize;
  const paginatedProjects = useMemo(() => {
    return filteredProjects.slice(startIndex, startIndex + pageSize);
  }, [filteredProjects, startIndex, pageSize]);

  // Helper to extract district from description (e.g., "Imported from PSRERA PDF. District: Kapurthala")
  const getDistrict = (desc: string | null) => {
    if (!desc) return null;
    const match = desc.match(/District:\s*([^,.\n]+)/i);
    return match ? match[1].trim() : null;
  };

  // Helper to get prices summary badge
  const getPricingSummary = (project: ProjectRow) => {
    if (!project.prices || project.prices.length === 0) return null;

    // Look for verified transacted price first
    const transacted = project.prices.find((pr) => pr.price_type === "transacted" && pr.verified);
    if (transacted) {
      return {
        label: `₹${transacted.amount.toLocaleString("en-IN")}/${transacted.unit || "sqft"}`,
        verified: true,
        text: "Verified Transacted",
      };
    }

    // Fallback to asking price
    const asking = project.prices.find((pr) => pr.price_type === "asking");
    if (asking) {
      return {
        label: `₹${asking.amount.toLocaleString("en-IN")}/${asking.unit || "sqft"}`,
        verified: false,
        text: "Asking Price",
      };
    }

    return null;
  };

  return (
    <div className="space-y-6">
      {/* Search & Filters toolbar */}
      <div className="flex flex-col gap-4 md:flex-row md:items-center md:justify-between">
        {/* Search input */}
        <div className="relative flex-1 max-w-md">
          <span className="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none text-stone-400">
            <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
            </svg>
          </span>
          <input
            type="text"
            placeholder="Search projects by name, RERA ID, district..."
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            className="w-full pl-10 pr-4 py-2 border border-stone-200 rounded-xl focus:outline-none focus:ring-2 focus:ring-brand-500 focus:border-brand-500 text-stone-900 bg-white placeholder-stone-400 shadow-sm"
          />
        </div>

        {/* Filter buttons */}
        <div className="flex flex-wrap gap-2">
          <button
            onClick={() => setFilterType("all")}
            className={`px-3 py-1.5 text-xs font-semibold rounded-lg transition-all border ${
              filterType === "all"
                ? "bg-brand-600 border-brand-600 text-white shadow-sm"
                : "bg-white border-stone-200 text-stone-600 hover:bg-stone-50"
            }`}
          >
            All ({initialProjects.length})
          </button>
          <button
            onClick={() => setFilterType("priced")}
            className={`px-3 py-1.5 text-xs font-semibold rounded-lg transition-all border ${
              filterType === "priced"
                ? "bg-brand-600 border-brand-600 text-white shadow-sm"
                : "bg-white border-stone-200 text-stone-600 hover:bg-stone-50"
            }`}
          >
            With Pricing Data
          </button>
          <button
            onClick={() => setFilterType("active")}
            className={`px-3 py-1.5 text-xs font-semibold rounded-lg transition-all border ${
              filterType === "active"
                ? "bg-brand-600 border-brand-600 text-white shadow-sm"
                : "bg-white border-stone-200 text-stone-600 hover:bg-stone-50"
            }`}
          >
            Active Status
          </button>
          <button
            onClick={() => setFilterType("lapsed")}
            className={`px-3 py-1.5 text-xs font-semibold rounded-lg transition-all border ${
              filterType === "lapsed"
                ? "bg-brand-600 border-brand-600 text-white shadow-sm"
                : "bg-white border-stone-200 text-stone-600 hover:bg-stone-50"
            }`}
          >
            Lapsed Status
          </button>
        </div>
      </div>

      {/* Showing count */}
      <div className="flex items-center justify-between text-sm text-stone-500 border-b border-stone-100 pb-2">
        <p>
          Found <span className="font-semibold text-stone-900">{totalItems}</span> matching projects
        </p>
        <div className="flex items-center gap-2">
          <span>Show:</span>
          <select
            value={pageSize}
            onChange={(e) => setPageSize(Number(e.target.value))}
            className="border border-stone-200 rounded px-1.5 py-0.5 focus:outline-none focus:ring-1 focus:ring-brand-500 bg-white"
          >
            <option value={10}>10</option>
            <option value={20}>20</option>
            <option value={50}>50</option>
          </select>
        </div>
      </div>

      {/* Grid List */}
      {paginatedProjects.length === 0 ? (
        <div className="text-center py-12 border border-dashed border-stone-200 rounded-xl bg-stone-50">
          <p className="text-stone-500 font-medium">No projects match your search criteria.</p>
          <button
            onClick={() => {
              setSearch("");
              setFilterType("all");
            }}
            className="mt-3 text-sm font-semibold text-brand-600 hover:text-brand-700"
          >
            Clear filters
          </button>
        </div>
      ) : (
        <div className="grid gap-6 md:grid-cols-2">
          {paginatedProjects.map((p) => {
            const district = getDistrict(p.description);
            const pricing = getPricingSummary(p);

            return (
              <div
                key={p.id}
                className="group relative rounded-2xl border border-stone-200/80 bg-white p-5 shadow-sm transition-all duration-300 hover:-translate-y-1 hover:border-brand-200 hover:shadow-md flex flex-col justify-between"
              >
                <div>
                  <div className="flex items-start justify-between gap-4">
                    <Link href={`/projects/${p.slug}`} className="no-underline block group-hover:text-brand-600 transition-colors">
                      <h2 className="text-lg font-bold text-stone-900 leading-tight">
                        {p.name}
                      </h2>
                    </Link>
                    {/* Status tag */}
                    <span
                      className={`shrink-0 rounded px-2 py-0.5 text-xs font-semibold capitalize ${
                        p.status?.toLowerCase() === "active"
                          ? "bg-emerald-50 text-emerald-700 border border-emerald-200"
                          : "bg-amber-50 text-amber-700 border border-amber-200"
                      }`}
                    >
                      {p.status || "Unknown"}
                    </span>
                  </div>

                  <div className="mt-3 flex flex-wrap gap-2 text-xs">
                    <span className="rounded bg-stone-100 px-2 py-0.5 font-mono text-stone-600 tracking-wider">
                      RERA: {p.rera_number}
                    </span>
                    {district && (
                      <span className="rounded bg-stone-100 px-2 py-0.5 text-stone-600">
                        📍 {district}
                      </span>
                    )}
                  </div>
                </div>

                <div className="mt-4 pt-4 border-t border-stone-100 flex items-center justify-between">
                  {pricing ? (
                    <div className="flex items-center gap-2">
                      <div className="flex flex-col">
                        <span className="text-[10px] uppercase font-bold text-stone-400 tracking-wider">
                          {pricing.text}
                        </span>
                        <span className="text-base font-extrabold text-stone-900">
                          {pricing.label}
                        </span>
                      </div>
                      {pricing.verified ? (
                        <span className="inline-flex items-center justify-center h-5 w-5 rounded-full bg-emerald-100 text-emerald-800" title="Verified Transacted Price">
                          <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M5 13l4 4L19 7" />
                          </svg>
                        </span>
                      ) : (
                        <span className="inline-flex items-center justify-center h-5 w-5 rounded-full bg-stone-100 text-stone-500" title="Unverified/Asking Price Only">
                          <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                          </svg>
                        </span>
                      )}
                    </div>
                  ) : (
                    <span className="text-xs text-stone-400 font-medium italic">
                      No price records available
                    </span>
                  )}

                  <Link
                    href={`/projects/${p.slug}`}
                    className="inline-flex items-center gap-1 text-xs font-bold text-brand-600 no-underline hover:text-brand-700"
                  >
                    View Details
                    <svg className="w-3.5 h-3.5 transition-transform group-hover:translate-x-0.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M9 5l7 7-7 7" />
                    </svg>
                  </Link>
                </div>
              </div>
            );
          })}
        </div>
      )}

      {/* Pagination controls */}
      {totalPages > 1 && (
        <div className="flex items-center justify-between border-t border-stone-200 pt-6 mt-8">
          <p className="text-sm text-stone-500">
            Showing <span className="font-semibold text-stone-900">{startIndex + 1}</span> to{" "}
            <span className="font-semibold text-stone-900">
              {Math.min(startIndex + pageSize, totalItems)}
            </span>{" "}
            of <span className="font-semibold text-stone-900">{totalItems}</span> projects
          </p>

          <div className="flex gap-1">
            <button
              onClick={() => setCurrentPage((prev) => Math.max(1, prev - 1))}
              disabled={currentPage === 1}
              className="px-3 py-1.5 text-xs font-bold rounded-lg border border-stone-200 bg-white text-stone-600 hover:bg-stone-50 disabled:opacity-50 disabled:hover:bg-white"
            >
              Previous
            </button>
            
            {Array.from({ length: totalPages }, (_, i) => i + 1)
              .filter((page) => {
                // Show first, last, current, and page +- 1
                return page === 1 || page === totalPages || Math.abs(page - currentPage) <= 1;
              })
              .map((page, index, array) => {
                // Add ellipsis
                const showEllipsis = index > 0 && page - array[index - 1] > 1;

                return (
                  <div key={page} className="flex gap-1">
                    {showEllipsis && <span className="px-2 py-1 text-stone-400">...</span>}
                    <button
                      onClick={() => setCurrentPage(page)}
                      className={`px-3 py-1.5 text-xs font-bold rounded-lg transition-all border ${
                        currentPage === page
                          ? "bg-brand-600 border-brand-600 text-white shadow-sm"
                          : "bg-white border-stone-200 text-stone-600 hover:bg-stone-50"
                      }`}
                    >
                      {page}
                    </button>
                  </div>
                );
              })}

            <button
              onClick={() => setCurrentPage((prev) => Math.min(totalPages, prev + 1))}
              disabled={currentPage === totalPages}
              className="px-3 py-1.5 text-xs font-bold rounded-lg border border-stone-200 bg-white text-stone-600 hover:bg-stone-50 disabled:opacity-50 disabled:hover:bg-white"
            >
              Next
            </button>
          </div>
        </div>
      )}

      {/* RERA Disclaimer block */}
      <div className="mt-8 rounded-2xl border border-amber-200 bg-amber-50/60 p-5 text-sm text-amber-950 font-medium">
        {reraDisclaimer}
      </div>
    </div>
  );
}
