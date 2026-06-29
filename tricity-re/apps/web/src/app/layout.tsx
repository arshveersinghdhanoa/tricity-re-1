import type { Metadata, Viewport } from "next";
import { Inter } from "next/font/google";
import { SiteFooter } from "@/components/SiteFooter";
import { SiteHeader } from "@/components/SiteHeader";
import { resolveTenant } from "@/lib/tenant";
import "./globals.css";
import "./tenant-theme.css";

const inter = Inter({
  subsets: ["latin"],
  display: "swap",
  variable: "--font-inter",
});

export const viewport: Viewport = {
  width: "device-width",
  initialScale: 1,
  themeColor: "#44403c", // stone-700
};

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
    <html lang="en" className={`${inter.variable} tenant-${tenant.slug}`}>
      <body className="relative flex min-h-screen flex-col font-sans bg-stone-50 text-stone-900 antialiased overflow-x-hidden">
        {/* Dynamic Background Mesh Blobs */}
        <div className="absolute inset-0 pointer-events-none overflow-hidden z-0">
          <div className="absolute top-[-150px] left-[-150px] h-[650px] w-[650px] rounded-full bg-brand-300/35 blur-[120px]" />
          <div className="absolute top-[25%] right-[-200px] h-[750px] w-[750px] rounded-full bg-brand-200/45 blur-[140px]" />
        </div>

        <div className="relative z-10 flex flex-col min-h-screen">
          <SiteHeader tenant={tenant} />
          <main className="mx-auto w-full max-w-6xl flex-1 px-4 py-8">{children}</main>
          <SiteFooter />
        </div>
      </body>
    </html>
  );
}

