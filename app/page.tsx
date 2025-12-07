export default function HomePage() {
  const runtimeMessage = process.env.APP_RUNTIME_MESSAGE || "Sin mensaje de runtime";

  return (
    <main className="min-h-screen flex flex-col items-center justify-center px-6 py-10 bg-slate-950 text-slate-50">
      <h1 className="text-3xl font-bold mb-2">Prueba Técnica – Next.js SSR</h1>
      <p className="text-slate-300">
        Aplicación corriendo bajo el basePath <span className="font-mono">/prueba-tecnica</span>.
      </p>

      <section className="mt-8 text-center">
        <h2 className="text-xl font-semibold mb-2">Mensaje de runtime</h2>
        <p className="text-slate-200">{runtimeMessage}</p>
      </section>

      <footer className="mt-10 text-xs text-slate-400">
        &copy; {new Date().getFullYear()} – Demo de infraestructura
      </footer>
    </main>
  );
}