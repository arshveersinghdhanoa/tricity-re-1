import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  transpilePackages: ["@tricity/core"],
  images: { unoptimized: true },
};

export default nextConfig;
