import type { TenantConfig } from "@tricity/core";

/** Clone tenant — ajitgarh.in (placeholder domain until Client provides real one) */
export const ajitgarh: TenantConfig = {
  slug: "ajitgarh",
  domain: "ajitgarh.in",
  name: "Ajitgarh Real Estate",
  tagline: "Data-driven insights for Ajitgarh and surrounding sectors",
  contact: {
    whatsappNumber: process.env.CONTACT_WHATSAPP_NUMBER ?? "919000000000",
    email: process.env.CONTACT_EMAIL ?? "contact@ajitgarh.in",
  },
  homeIntro:
    "Independent property intelligence for Ajitgarh (Mohali) — RERA-tracked projects across SAS Nagar with verified and indicative pricing where available.",
  guides: [
    {
      slug: "ajitgarh-neighbourhood-guide",
      title: "Ajitgarh Neighbourhood Guide",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "sas-nagar-real-estate-outlook",
      title: "SAS Nagar Real Estate Market Outlook",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "ajitgarh-vs-mohali-sectors",
      title: "Ajitgarh vs Other Mohali Sectors",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "gmada-rules-ajitgarh",
      title: "GMADA Rules & Regulations for Ajitgarh",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "ajitgarh-investment-guide",
      title: "Investment Guide for Ajitgarh Property",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "rental-market-ajitgarh",
      title: "Rental Market Overview — Ajitgarh",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
  ],
};
