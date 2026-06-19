import { revalidatePath } from "next/cache";
import { NextResponse } from "next/server";

export async function POST(request: Request) {
  try {
    const body = await request.json();
    const secret = body?.secret;

    if (!secret || secret !== process.env.REVALIDATION_SECRET) {
      return NextResponse.json({ error: "Invalid secret" }, { status: 401 });
    }

    revalidatePath("/");
    revalidatePath("/projects");
    revalidatePath("/projects/[slug]", "page");
    revalidatePath("/guides");
    revalidatePath("/guides/[slug]", "page");

    return NextResponse.json({ revalidated: true });
  } catch (err) {
    return NextResponse.json(
      { error: err instanceof Error ? err.message : "Revalidation failed" },
      { status: 500 },
    );
  }
}
