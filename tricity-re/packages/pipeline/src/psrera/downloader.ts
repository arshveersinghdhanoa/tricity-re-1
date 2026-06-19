import { PORTALS, SCRAPER_CONFIG } from "../config.js";

export async function downloadPdf(url?: string): Promise<{ buffer: Buffer; url: string }> {
  const targetUrl: string = url ?? PORTALS.psrera.pdfUrl!;
  const res = await fetch(targetUrl, {
    headers: { "User-Agent": SCRAPER_CONFIG.userAgent },
    signal: AbortSignal.timeout(60_000),
  });

  if (!res.ok) throw new Error(`PDF download failed: HTTP ${res.status} ${res.statusText}`);
  const arrayBuf = await res.arrayBuffer();
  return { buffer: Buffer.from(arrayBuf), url: targetUrl };
}
