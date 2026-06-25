import type { Config } from "tailwindcss";

const config: Config = {
  content: ["./src/**/*.{js,ts,jsx,tsx,mdx}"],
  theme: {
    extend: {
      fontFamily: {
        sans: ["var(--font-inter)", "system-ui", "sans-serif"],
      },
      colors: {
        brand: {
          50: "#f0f7f4",
          100: "#dceee6",
          500: "#1a6b4a",
          600: "#145a3e",
          700: "#0f4631",
          900: "#0a2e20",
        },
      },
    },
  },
  plugins: [],
};

export default config;

