"use client";

import { useState } from "react";

export function LeadForm({ projectSlug }: { projectSlug?: string }) {
  const [status, setStatus] = useState<"idle" | "loading" | "success" | "error">("idle");
  const [waLink, setWaLink] = useState<string | null>(null);

  async function onSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setStatus("loading");
    const form = e.currentTarget;
    const data = new FormData(form);

    try {
      const res = await fetch("/api/leads", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          name: data.get("name"),
          phone: data.get("phone"),
          email: data.get("email"),
          message: data.get("message"),
          projectSlug: projectSlug ?? data.get("projectSlug"),
          budget: data.get("budget") ? Number(data.get("budget")) : undefined,
          timeline: data.get("timeline") || undefined,
          website: data.get("website"),
        }),
      });
      const json = await res.json();
      if (!res.ok) throw new Error(json.error ?? "Submission failed");
      setWaLink(json.waLink ?? null);
      setStatus("success");
      form.reset();
    } catch {
      setStatus("error");
    }
  }

  return (
    <form onSubmit={onSubmit} className="space-y-4" aria-label="Contact form">
      <div className="hidden" aria-hidden="true">
        <label htmlFor="website">Website</label>
        <input id="website" name="website" tabIndex={-1} autoComplete="off" />
      </div>

      <div>
        <label htmlFor="name" className="block text-sm font-medium text-stone-700">
          Name
        </label>
        <input
          id="name"
          name="name"
          type="text"
          className="mt-1 w-full rounded-md border border-stone-300 px-3 py-2"
        />
      </div>

      <div>
        <label htmlFor="phone" className="block text-sm font-medium text-stone-700">
          Phone <span className="text-red-600">*</span>
        </label>
        <input
          id="phone"
          name="phone"
          type="tel"
          required
          className="mt-1 w-full rounded-md border border-stone-300 px-3 py-2"
        />
      </div>

      <div>
        <label htmlFor="email" className="block text-sm font-medium text-stone-700">
          Email
        </label>
        <input
          id="email"
          name="email"
          type="email"
          className="mt-1 w-full rounded-md border border-stone-300 px-3 py-2"
        />
      </div>

      <div>
        <label htmlFor="budget" className="block text-sm font-medium text-stone-700">
          Budget (₹)
        </label>
        <input
          id="budget"
          name="budget"
          type="number"
          min={0}
          step={100000}
          placeholder="e.g. 5000000"
          className="mt-1 w-full rounded-md border border-stone-300 px-3 py-2"
        />
      </div>

      <div>
        <label htmlFor="timeline" className="block text-sm font-medium text-stone-700">
          Timeline
        </label>
        <select
          id="timeline"
          name="timeline"
          className="mt-1 w-full rounded-md border border-stone-300 px-3 py-2"
        >
          <option value="">Select...</option>
          <option value="immediate">Immediate</option>
          <option value="3months">Within 3 months</option>
          <option value="6months">Within 6 months</option>
          <option value="exploring">Just exploring</option>
        </select>
      </div>

      <div>
        <label htmlFor="message" className="block text-sm font-medium text-stone-700">
          Message
        </label>
        <textarea
          id="message"
          name="message"
          rows={3}
          className="mt-1 w-full rounded-md border border-stone-300 px-3 py-2"
        />
      </div>

      {projectSlug && <input type="hidden" name="projectSlug" value={projectSlug} />}

      <button
        type="submit"
        disabled={status === "loading"}
        className="rounded-md bg-brand-600 px-4 py-2 font-medium text-white hover:bg-brand-700 disabled:opacity-60"
      >
        {status === "loading" ? "Submitting…" : "Get in touch"}
      </button>

      {status === "success" && waLink && (
        <p className="text-sm text-emerald-700">
          Thank you.{" "}
          <a href={waLink} target="_blank" rel="noopener noreferrer">
            Continue on WhatsApp
          </a>
        </p>
      )}
      {status === "error" && (
        <p className="text-sm text-red-600">Something went wrong. Please try again.</p>
      )}
    </form>
  );
}
