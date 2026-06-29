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
    <header className="sticky top-0 z-50 w-full border-b border-stone-200/80 bg-white/80 backdrop-blur-md">
      <div className="mx-auto flex max-w-6xl items-center justify-between gap-4 px-4 py-3.5">
        <Link href="/" className="group block min-w-0 no-underline">
          <p className="truncate text-lg font-extrabold tracking-tight text-brand-900 group-hover:text-brand-600 transition-colors">
            {tenant.name}
          </p>
          <p className="truncate text-xs text-stone-500 font-medium hidden sm:block">{tenant.tagline}</p>
        </Link>

        <nav className="flex items-center gap-0.5 text-sm font-semibold text-stone-600" aria-label="Main">
          {NAV.map(({ href, label }) => (
            <Link
              key={href}
              href={href}
              className="no-underline px-2.5 py-1.5 rounded-lg hover:bg-stone-50 hover:text-stone-900 transition-all whitespace-nowrap sm:px-3.5"
            >
              <span className="hidden md:inline">{label}</span>
              <span className="md:hidden">{label.split(" ")[0]}</span>
            </Link>
          ))}
        </nav>
      </div>
    </header>
  );
}
