import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  transpilePackages: ["@tricity/core"],
  reactStrictMode: true,
  poweredByHeader: false,
};

export default nextConfig;

