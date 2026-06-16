import Link from "next/link";

export default function NotFound() {
  return (
    <div className="text-center">
      <h1 className="text-3xl font-bold">Page not found</h1>
      <p className="mt-2 text-stone-600">The page you requested does not exist.</p>
      <Link href="/" className="mt-6 inline-block">
        Back to home
      </Link>
    </div>
  );
}
