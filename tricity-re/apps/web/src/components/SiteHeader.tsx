import type { TenantConfig } from "@tricity/core";
import Link from "next/link";

export function SiteHeader({ tenant }: { tenant: TenantConfig }) {
  return (
    <header className="sticky top-0 z-50 w-full border-b border-stone-200/80 bg-white/80 backdrop-blur-md">
      <div className="mx-auto flex max-w-5xl items-center justify-between px-4 py-3.5">
        <Link href="/" className="group block no-underline">
          <p className="text-lg font-extrabold tracking-tight text-brand-900 group-hover:text-brand-600 transition-colors">
            {tenant.name}
          </p>
          <p className="text-xs text-stone-500 font-medium">
            {tenant.tagline}
          </p>
        </Link>
        <nav className="hidden gap-1 text-sm font-semibold text-stone-600 sm:flex" aria-label="Main">
          <Link href="/projects" className="no-underline px-3.5 py-1.5 rounded-lg hover:bg-stone-50 hover:text-stone-900 transition-all">
            Projects
          </Link>
          <Link href="/guides" className="no-underline px-3.5 py-1.5 rounded-lg hover:bg-stone-50 hover:text-stone-900 transition-all">
            Guides
          </Link>
          <Link href="/#contact" className="no-underline px-3.5 py-1.5 rounded-lg hover:bg-stone-50 hover:text-stone-900 transition-all">
            Contact
          </Link>
        </nav>
      </div>
    </header>
  );
}
