import type { TenantConfig } from "@tricity/core";

/** Clone tenant — nayagaon.in (placeholder domain until Client provides real one) */
export const nayagaon: TenantConfig = {
  slug: "nayagaon",
  domain: "nayagaon.in",
  name: "Nayagaon Property Insight",
  tagline: "Trusted property data for the Nayagaon neighbourhood",
  contact: {
    whatsappNumber: process.env.CONTACT_WHATSAPP_NUMBER ?? "919000000000",
    email: process.env.CONTACT_EMAIL ?? "contact@nayagaon.in",
  },
  homeIntro:
    "Independent property intelligence for Nayagaon — RERA-tracked projects near the Chandigarh border, with indicative and verified pricing where available.",
  guides: [
    {
      slug: "living-in-nayagaon",
      title: "Living in Nayagaon: A Locality Guide",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "nayagaon-property-trends",
      title: "Property Trends in Nayagaon",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "nayagaon-vs-new-chandigarh",
      title: "Nayagaon vs New Chandigarh: Which is Right for You?",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "rera-compliance-nayagaon",
      title: "RERA Compliance for Nayagaon Projects",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "nayagaon-connectivity-infrastructure",
      title: "Connectivity & Infrastructure in Nayagaon",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "nayagaon-home-loan-guide",
      title: "Home Loan Guide for Nayagaon Buyers",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
  ],
};
