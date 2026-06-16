import type { TenantConfig } from "@tricity/core";
import Link from "next/link";

export function SiteHeader({ tenant }: { tenant: TenantConfig }) {
  return (
    <header className="border-b border-stone-200 bg-white">
      <div className="mx-auto flex max-w-5xl items-center justify-between px-4 py-4">
        <Link href="/" className="no-underline">
          <p className="text-lg font-semibold text-brand-700">{tenant.name}</p>
          <p className="text-sm text-stone-600">{tenant.tagline}</p>
        </Link>
        <nav className="hidden gap-4 text-sm sm:flex" aria-label="Main">
          <Link href="/projects">Projects</Link>
          <Link href="/guides">Guides</Link>
          <Link href="/#contact">Contact</Link>
        </nav>
      </div>
    </header>
  );
}
