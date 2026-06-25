export type PriceType = "asking" | "transacted";

export interface PriceRecord {
  priceType: PriceType;
  amount: number;
  currency?: string;
  unit?: string;
  verified: boolean;
  source: string | null;
}

export interface GuideShell {
  slug: string;
  title: string;
  summary: string;
  isPlaceholder: true;
}

export interface TenantConfig {
  slug: string;
  domain: string;
  name: string;
  tagline: string;
  contact: {
    whatsappNumber: string;
    email: string;
  };
  guides: GuideShell[];
  homeIntro: string;
}

export interface LeadInput {
  phone: string;
  name?: string;
  email?: string;
  message?: string;
  projectSlug?: string;
  budget?: number;
  timeline?: "immediate" | "3months" | "6months" | "exploring";
}

export interface LeadScoreResult {
  score: number;
  isHot: boolean;
}

export * from "./price.js";
export * from "./tenant.js";
export * from "./leads.js";
