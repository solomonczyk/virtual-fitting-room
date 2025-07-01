/** @type {import('next').NextConfig} */
const nextConfig = {
  experimental: { appDir: true },          // опция уже есть у Next 15; оставляем
  rewrites() {
    return [
      {
        source: '/api/:path*',             // ← запросы из браузера
        destination: 'http://backend:8000/:path*', // → FastAPI в Docker-сети
      },
    ];
  },
};

export default nextConfig;
