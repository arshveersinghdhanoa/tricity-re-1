import { describe, expect, it, vi, beforeEach, afterEach } from "vitest";
import { POST } from "./route.js";

// Mock next/cache
vi.mock("next/cache", () => ({
  revalidatePath: vi.fn(),
}));

import { revalidatePath } from "next/cache";

describe("POST /api/revalidate", () => {
  const originalEnv = process.env.REVALIDATION_SECRET;

  beforeEach(() => {
    process.env.REVALIDATION_SECRET = "test-secret-key";
    vi.clearAllMocks();
  });

  afterEach(() => {
    process.env.REVALIDATION_SECRET = originalEnv;
  });

  it("returns 401 if secret is missing", async () => {
    const req = new Request("http://localhost/api/revalidate", {
      method: "POST",
      body: JSON.stringify({}),
    });

    const response = await POST(req);
    expect(response.status).toBe(401);
    
    const body = await response.json();
    expect(body.error).toBe("Invalid secret");
    expect(revalidatePath).not.toHaveBeenCalled();
  });

  it("returns 401 if secret is invalid", async () => {
    const req = new Request("http://localhost/api/revalidate", {
      method: "POST",
      body: JSON.stringify({ secret: "wrong-secret" }),
    });

    const response = await POST(req);
    expect(response.status).toBe(401);
    
    const body = await response.json();
    expect(body.error).toBe("Invalid secret");
    expect(revalidatePath).not.toHaveBeenCalled();
  });

  it("revalidates paths and returns 200 if secret is valid", async () => {
    const req = new Request("http://localhost/api/revalidate", {
      method: "POST",
      body: JSON.stringify({ secret: "test-secret-key" }),
    });

    const response = await POST(req);
    expect(response.status).toBe(200);
    
    const body = await response.json();
    expect(body.revalidated).toBe(true);
    
    expect(revalidatePath).toHaveBeenCalledWith("/");
    expect(revalidatePath).toHaveBeenCalledWith("/projects");
    expect(revalidatePath).toHaveBeenCalledWith("/projects/[slug]", "page");
    expect(revalidatePath).toHaveBeenCalledWith("/guides");
    expect(revalidatePath).toHaveBeenCalledWith("/guides/[slug]", "page");
  });
});
