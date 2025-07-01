import '@/app/globals.css';
import ApiBadge from '@/components/ApiBadge';

export const metadata = {
  title: 'Virtual Fitting Room',
  description: 'Next.js + FastAPI stack',
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body>
        {children}
        {/* индикатор состояния API */}
        <ApiBadge />
      </body>
    </html>
  );
}
