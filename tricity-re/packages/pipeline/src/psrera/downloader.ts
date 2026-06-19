import fs from "fs";
import path from "path";
import { PORTALS, SCRAPER_CONFIG } from "../config.js";

const LOCAL_FALLBACK = path.resolve("tmp/registered-projects.pdf");

export async function downloadPdf(url?: string): Promise<{ buffer: Buffer; url: string }> {
  if (fs.existsSync(LOCAL_FALLBACK)) {
    console.log(`[psrera] Using local PDF: ${LOCAL_FALLBACK}`);
    return { buffer: fs.readFileSync(LOCAL_FALLBACK), url: LOCAL_FALLBACK };
  }

  const targetUrl: string = url ?? PORTALS.psrera.pdfUrl!;
  const res = await fetch(targetUrl, {
    headers: { "User-Agent": SCRAPER_CONFIG.userAgent },
    signal: AbortSignal.timeout(60_000),
  });

  if (!res.ok) throw new Error(`PDF download failed: HTTP ${res.status} ${res.statusText}`);
  const arrayBuf = await res.arrayBuffer();
  return { buffer: Buffer.from(arrayBuf), url: targetUrl };
}
