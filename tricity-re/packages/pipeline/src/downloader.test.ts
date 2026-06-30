import { describe, expect, it, vi } from "vitest";
import { downloadPdf } from "./psrera/downloader.js";
import fs from "fs";

describe("PSRERA PDF Downloader", () => {
  it("downloads PDF successfully from URL if local fallback does not exist", async () => {
    const existsSpy = vi.spyOn(fs, "existsSync").mockReturnValue(false);
    
    const mockResponse = {
      ok: true,
      status: 200,
      statusText: "OK",
      arrayBuffer: async () => new ArrayBuffer(8),
    };
    
    const globalFetch = global.fetch;
    global.fetch = vi.fn().mockResolvedValue(mockResponse);

    const result = await downloadPdf("https://example.com/test.pdf");
    expect(result.url).toBe("https://example.com/test.pdf");
    expect(result.buffer).toBeInstanceOf(Buffer);

    global.fetch = globalFetch;
    existsSpy.mockRestore();
  });

  it("throws error if response is not ok", async () => {
    const existsSpy = vi.spyOn(fs, "existsSync").mockReturnValue(false);
    
    const mockResponse = {
      ok: false,
      status: 404,
      statusText: "Not Found",
    };
    
    const globalFetch = global.fetch;
    global.fetch = vi.fn().mockResolvedValue(mockResponse);

    await expect(downloadPdf("https://example.com/404.pdf")).rejects.toThrow("PDF download failed: HTTP 404 Not Found");

    global.fetch = globalFetch;
    existsSpy.mockRestore();
  });
});
