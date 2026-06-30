import type { TenantConfig } from "@tricity/core";
import Link from "next/link";

const NAV = [
  { href: "/projects", label: "Projects" },
  { href: "/platform", label: "Platform guide" },
  { href: "/guides", label: "Guides" },
  { href: "/#contact", label: "Contact" },
] as const;

export function SiteHeader({ tenant }: { tenant: TenantConfig }) {
  return (
    <header className="site-header-shell sticky top-0 z-50 w-full">
      <div className="site-header-accent" aria-hidden />
      <div className="relative">
        <div className="site-header-grid absolute inset-0 pointer-events-none opacity-50" aria-hidden />
        <div className="relative mx-auto flex max-w-6xl items-center justify-between gap-4 px-4 py-3.5">
          <Link href="/" className="group block min-w-0 no-underline">
            <p className="truncate text-lg font-extrabold tracking-tight text-brand-900 group-hover:text-brand-600 transition-colors">
              {tenant.name}
            </p>
            <p className="truncate text-xs text-stone-500 font-medium hidden sm:block">{tenant.tagline}</p>
          </Link>

          <nav className="flex items-center gap-0.5 text-sm font-semibold" aria-label="Main">
            {NAV.map(({ href, label }) => (
              <Link key={href} href={href} className="site-nav-link">
                <span className="hidden md:inline">{label}</span>
                <span className="md:hidden">{label.split(" ")[0]}</span>
              </Link>
            ))}
          </nav>
        </div>
      </div>
    </header>
  );
}
