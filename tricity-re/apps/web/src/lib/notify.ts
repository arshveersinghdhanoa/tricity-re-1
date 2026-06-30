import nodemailer from "nodemailer";

export interface HotLeadInfo {
  name: string | null;
  phone: string;
  email: string | null;
  message: string | null;
  projectSlug: string | null;
  score: number;
  sourcePage: string | null;
  tenantSlug: string;
  budget?: number | null;
  timeline?: string | null;
}

function getTransporter(): nodemailer.Transporter | null {
  const host = process.env.SMTP_HOST;
  const port = parseInt(process.env.SMTP_PORT ?? "587", 10);
  const user = process.env.SMTP_USER;
  const pass = process.env.SMTP_PASS;
  if (!host || !user || !pass) return null;
  return nodemailer.createTransport({
    host,
    port,
    secure: port === 465,
    auth: { user, pass },
  });
}

export async function sendHotLeadNotification(lead: HotLeadInfo): Promise<boolean> {
  const to = process.env.HOT_LEAD_NOTIFY_EMAIL;
  const from = process.env.SMTP_FROM ?? process.env.SMTP_USER;
  if (!to || !from) {
    console.log(`[notify] HOT_LEAD_NOTIFY_EMAIL or SMTP_FROM not set — skipping. Hot lead: ${lead.phone}, score: ${lead.score}`);
    return false;
  }
  const transporter = getTransporter();
  if (!transporter) {
    console.log(`[notify] SMTP not configured — hot lead alert suppressed. Phone: ${lead.phone}, score: ${lead.score}`);
    return false;
  }
  try {
    await transporter.sendMail({
      from,
      to,
      subject: `[Hot Lead] ${lead.name || "Unknown"} — ${lead.phone} — Score: ${lead.score}`,
      text: [
        `Hot Lead Alert`,
        `Score: ${lead.score}`,
        `---`,
        `Name: ${lead.name || "Not provided"}`,
        `Phone: ${lead.phone}`,
        `Email: ${lead.email || "Not provided"}`,
        `Project: ${lead.projectSlug || "Not specified"}`,
        `Budget: ${lead.budget ? `₹${lead.budget.toLocaleString("en-IN")}` : "Not provided"}`,
        `Timeline: ${lead.timeline || "Not provided"}`,
        `Message: ${lead.message || "Not provided"}`,
        `Source: ${lead.sourcePage || "Unknown"}`,
        `Tenant: ${lead.tenantSlug}`,
      ].join("\n"),
    });
    return true;
  } catch (err) {
    console.error("[notify] Email send failed:", err);
    return false;
  }
}
