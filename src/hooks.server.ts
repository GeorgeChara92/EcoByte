import { auth } from "$lib/server/auth";
import { svelteKitHandler } from "better-auth/svelte-kit";
import { redirect } from "@sveltejs/kit";
import { building } from "$app/environment";

export async function handle({ event, resolve }) {
  if (event.route.id?.startsWith("/(protected)")) {
    const session = await auth.api.getSession({
      headers: event.request.headers,
    });

    if (!session) {
      throw redirect(307, "/auth/login");
    }
  }

  return svelteKitHandler({ event, resolve, auth, building });
}
