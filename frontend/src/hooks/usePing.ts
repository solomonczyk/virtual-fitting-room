import { useEffect, useState } from 'react';

export default function usePing() {
  const [data, setData] = useState<{ ping: string } | null>(null);
  const [error, setError] = useState<Error | null>(null);

  useEffect(() => {
    fetch('/api/ping')
      .then((r) => r.json())
      .then(setData)
      .catch(setError);
  }, []);

  return { data, error };
}
