import { NextResponse } from "next/server";
import { scoreLead } from "@tricity/core";
import { getServiceSupabase } from "@/lib/supabase";
import { resolveTenant } from "@/lib/tenant";
import { sendHotLeadNotification } from "@/lib/notify";

const rateLimit = new Map<string, { count: number; reset: number }>();
const RATE_LIMIT = 5;
const RATE_WINDOW_MS = 60_000;

function isRateLimited(ip: string): boolean {
  const now = Date.now();
  const entry = rateLimit.get(ip);
  if (!entry || now > entry.reset) {
    rateLimit.set(ip, { count: 1, reset: now + RATE_WINDOW_MS });
    return false;
  }
  entry.count += 1;
  return entry.count > RATE_LIMIT;
}

export async function POST(request: Request) {
  const ip = request.headers.get("x-forwarded-for")?.split(",")[0]?.trim() ?? "unknown";
  if (isRateLimited(ip)) {
    return NextResponse.json({ error: "Too many requests" }, { status: 429 });
  }

  const body = await request.json();

  if (body.website) {
    return NextResponse.json({ ok: true });
  }

  const phone = String(body.phone ?? "").trim();
  if (phone.replace(/\D/g, "").length < 10) {
    return NextResponse.json({ error: "Valid phone required" }, { status: 400 });
  }

  const budget = body.budget ? Number(body.budget) : undefined;
  const timeline = body.timeline as "immediate" | "3months" | "6months" | "exploring" | undefined;

  const tenant = await resolveTenant();
  const { score, isHot } = scoreLead({
    phone,
    name: body.name,
    email: body.email,
    message: body.message,
    projectSlug: body.projectSlug,
    budget,
    timeline,
  });

  const supabase = getServiceSupabase();
  if (supabase) {
    const { data: tenantRow } = await supabase
      .from("tenants")
      .select("id")
      .eq("slug", tenant.slug)
      .maybeSingle();

    if (tenantRow) {
      await supabase.from("leads").insert({
        tenant_id: tenantRow.id,
        name: body.name ?? null,
        phone,
        email: body.email ?? null,
        message: body.message ?? null,
        project_slug: body.projectSlug ?? null,
        score,
        is_hot: isHot,
        context: { ip, budget, timeline },
        source_page: body.sourcePage ?? "/",
      });
    }
  }

  if (isHot) {
    sendHotLeadNotification({
      name: body.name ?? null,
      phone,
      email: body.email ?? null,
      message: body.message ?? null,
      projectSlug: body.projectSlug ?? null,
      score,
      sourcePage: body.sourcePage ?? null,
      tenantSlug: tenant.slug,
      budget,
      timeline,
    });
  }

  const whatsapp = tenant.contact.whatsappNumber.replace(/\D/g, "");
  const text = encodeURIComponent(
    `Hi, I'm interested in ${body.projectSlug ? `project ${body.projectSlug}` : "New Chandigarh property"}. Phone: ${phone}`,
  );
  const waLink = `https://wa.me/${whatsapp}?text=${text}`;

  return NextResponse.json({ ok: true, score, isHot, waLink });
}
