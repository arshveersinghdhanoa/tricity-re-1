import type { Metadata } from "next";
import { SiteFooter } from "@/components/SiteFooter";
import { SiteHeader } from "@/components/SiteHeader";
import { resolveTenant } from "@/lib/tenant";
import "./globals.css";
import "./tenant-theme.css";

export async function generateMetadata(): Promise<Metadata> {
  const tenant = await resolveTenant();
  return {
    title: {
      default: tenant.name,
      template: `%s | ${tenant.name}`,
    },
    description: tenant.tagline,
    metadataBase: new URL(`https://${tenant.domain}`),
    alternates: { canonical: "/" },
  };
}

export default async function RootLayout({ children }: { children: React.ReactNode }) {
  const tenant = await resolveTenant();

  return (
    <html lang="en" className={`tenant-${tenant.slug}`}>
      <body className="flex min-h-screen flex-col">
        <SiteHeader tenant={tenant} />
        <main className="mx-auto w-full max-w-5xl flex-1 px-4 py-8">{children}</main>
        <SiteFooter />
      </body>
    </html>
  );
}
