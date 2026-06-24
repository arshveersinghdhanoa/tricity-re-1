import { describe, expect, it } from "vitest";
import nodemailer from "nodemailer";
import { sendHotLeadNotification } from "./notify.js";

describe("hot-lead notification integration", () => {
  it("successfully sends an email via Ethereal SMTP", async () => {
    console.log("Generating Ethereal SMTP credentials...");
    const testAccount = await nodemailer.createTestAccount();
    
    // Temporarily inject Ethereal SMTP credentials into process.env
    const oldEnv = { ...process.env };
    process.env.SMTP_HOST = testAccount.smtp.host;
    process.env.SMTP_PORT = String(testAccount.smtp.port);
    process.env.SMTP_USER = testAccount.user;
    process.env.SMTP_PASS = testAccount.pass;
    process.env.SMTP_FROM = "no-reply@tricity-re.in";
    process.env.HOT_LEAD_NOTIFY_EMAIL = "admin@newchandigarh.in";

    try {
      console.log("Sending hot lead notification via sendHotLeadNotification...");
      const result = await sendHotLeadNotification({
        name: "Jane Doe Integration Test",
        phone: "9876543210",
        email: "janedoe@example.com",
        message: "Integration testing hot-lead email notification. Looking for a 3BHK flat.",
        projectSlug: "ohl-gold-greens",
        score: 85,
        sourcePage: "/projects/ohl-gold-greens",
        tenantSlug: "newchandigarh",
        budget: 7500000,
        timeline: "immediate",
      });

      expect(result).toBe(true);
      console.log("Email sent successfully!");
    } finally {
      // Restore environment variables
      process.env = oldEnv;
    }
  }, 20000); // 20s timeout for network requests
});
