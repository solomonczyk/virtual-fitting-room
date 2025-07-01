"use client";
import usePing from '@/hooks/usePing';

export default function PingPage() {
  const { data, error } = usePing();

  if (error) return <p className='text-red-500'>Error: {error.message}</p>;
  if (!data) return <p>Loading...</p>;

  return (
    <div className='flex h-screen items-center justify-center text-2xl'>
      {JSON.stringify(data)}
    </div>
  );
}

