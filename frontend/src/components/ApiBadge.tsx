'use client';

import useHealth from '@/hooks/useHealth';

export default function ApiBadge() {
  const status = useHealth();

  return (
    <div
      style={{
        position: 'fixed',
        left: 16,
        top: 16,
        padding: '4px 8px',
        borderRadius: 4,
        background: status === 'ok' ? '#16a34a' : '#dc2626',
        color: 'white',
        fontSize: 12,
        fontFamily: 'monospace',
      }}
      suppressHydrationWarning
    >
      API: {status ?? '...'}
    </div>
  );
}
