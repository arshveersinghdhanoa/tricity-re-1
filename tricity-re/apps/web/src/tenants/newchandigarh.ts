import type { TenantConfig } from "@tricity/core";

/** Primary tenant — newchandigarh.in */
export const newchandigarh: TenantConfig = {
  slug: "newchandigarh",
  domain: "newchandigarh.in",
  name: "New Chandigarh Property Intelligence",
  tagline: "Verified property data for the New Chandigarh micro-market",
  contact: {
    whatsappNumber: process.env.CONTACT_WHATSAPP_NUMBER ?? "919000000000",
    email: process.env.CONTACT_EMAIL ?? "contact@newchandigarh.in",
  },
  homeIntro:
    "Independent property intelligence for New Chandigarh — RERA-tracked projects, indicative asking prices, and verified transacted prices where available.",
  guides: [
    {
      slug: "buyers-guide-new-chandigarh",
      title: "Buyer's Guide to New Chandigarh",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "rera-due-diligence-checklist",
      title: "RERA Due Diligence Checklist",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "understanding-asking-vs-transacted-prices",
      title: "Asking vs Transacted Prices Explained",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "sector-guide-sector-105",
      title: "Sector 105 Micro-Market Overview",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "gmada-allotment-basics",
      title: "GMADA Allotment Basics",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
    {
      slug: "investment-timing-new-chandigarh",
      title: "Investment Timing in New Chandigarh",
      summary: "Placeholder editorial — Client to supply final content.",
      isPlaceholder: true,
    },
  ],
};
