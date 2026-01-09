<script lang="ts">
  import { Button } from "$lib/components/ui/button";
  import { Input } from "$lib/components/ui/input";
  import { Label } from "$lib/components/ui/label";
  import { authClient } from "$lib/auth-client";
  import { cn } from "$lib/utils";

  let { class: className = undefined, ...restProps } = $props();

  let mode = $state<"login" | "register">("login");
  let email = $state("");
  let password = $state("");
  let confirmPassword = $state("");
  let name = $state("");
  let isLoading = $state(false);
  let errorMessage = $state("");

  async function handleSubmit(event: Event) {
    event.preventDefault();
    isLoading = true;
    errorMessage = "";
    try {
      if (mode === "login") {
        const { error } = await authClient.signIn.email({
          email,
          password,
          callbackURL: "/dashboard",
        });
        if (error) throw error;
      } else {
        if (password !== confirmPassword) {
          errorMessage = "Passwords do not match";
          isLoading = false;
          return;
        }
        const { error } = await authClient.signUp.email({
          email,
          password,
          name,
          callbackURL: "/dashboard",
        });
        if (error) throw error;
      }
    } catch (e: any) {
      console.error(e);
      errorMessage = e.message || "An error occurred";
    } finally {
      isLoading = false;
    }
  }

  async function loginWithMicrosoft() {
    const { error } = await authClient.signIn.social({
      provider: "microsoft",
      callbackURL: "/",
    });
    if (error) {
      console.error(error);
      errorMessage = error.message || "An error occurred with Microsoft login";
    }
  }

  function toggleMode() {
    mode = mode === "login" ? "register" : "login";
    password = "";
    confirmPassword = "";
    errorMessage = "";
  }
</script>

<form
  class={cn("flex flex-col gap-6", className)}
  {...restProps}
  onsubmit={handleSubmit}
>
  <div class="flex flex-col gap-2 text-center">
    <h1 class="text-2xl font-bold">
      {mode === "login" ? "Login to your account" : "Create an account"}
    </h1>
    <p class="text-muted-foreground text-sm text-balance">
      {mode === "login"
        ? "Enter your email below to login to your account"
        : "Fill in the form below to create your account"}
    </p>
  </div>

  {#if errorMessage}
    <div
      class="bg-destructive/15 text-destructive text-sm p-3 rounded-md text-center"
    >
      {errorMessage}
    </div>
  {/if}

  <div class="grid gap-6">
    {#if mode === "register"}
      <div class="grid gap-2">
        <Label for="name">Full Name</Label>
        <Input
          id="name"
          type="text"
          placeholder="John Doe"
          required
          bind:value={name}
        />
      </div>
    {/if}

    <div class="grid gap-2">
      <Label for="email">Email</Label>
      <Input
        id="email"
        type="email"
        placeholder="m@example.com"
        required
        bind:value={email}
      />
    </div>

    <div class="grid gap-2">
      <div class="flex items-center">
        <Label for="password">Password</Label>
        {#if mode === "login"}
          <a
            href="##"
            class="ml-auto text-sm underline-offset-4 hover:underline"
          >
            Forgot your password?
          </a>
        {/if}
      </div>
      <Input id="password" type="password" required bind:value={password} />
      {#if mode === "register"}
        <p class="text-muted-foreground text-[0.8rem]">
          Must be at least 8 characters long.
        </p>
      {/if}
    </div>

    {#if mode === "register"}
      <div class="grid gap-2">
        <Label for="confirm-password">Confirm Password</Label>
        <Input
          id="confirm-password"
          type="password"
          required
          bind:value={confirmPassword}
        />
      </div>
    {/if}

    <Button type="submit" class="w-full" disabled={isLoading}>
      {#if isLoading}
        {mode === "login" ? "Logging in..." : "Creating account..."}
      {:else}
        {mode === "login" ? "Login" : "Create Account"}
      {/if}
    </Button>

    <div
      class="relative text-center text-sm after:absolute after:inset-0 after:top-1/2 after:z-0 after:flex after:items-center after:border-t after:border-border"
    >
      <span class="relative z-10 bg-background px-2 text-muted-foreground">
        Or continue with
      </span>
    </div>

    <Button variant="outline" class="w-full" onclick={loginWithMicrosoft}>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        width="21"
        height="21"
        viewBox="0 0 21 21"
        ><path fill="#f25022" d="M1 1h9v9H1z" /><path
          fill="#00a4ef"
          d="M1 11h9v9H1z"
        /><path fill="#7fba00" d="M11 1h9v9h-9z" /><path
          fill="#ffb900"
          d="M11 11h9v9h-9z"
        /></svg
      >
      {mode === "login" ? "Login with Microsoft" : "Sign up with Microsoft"}
    </Button>
  </div>

  <div class="text-center text-sm">
    {mode === "login" ? "Don't have an account?" : "Already have an account?"}
    <button
      type="button"
      onclick={toggleMode}
      class="underline underline-offset-4 cursor-pointer"
    >
      {mode === "login" ? "Sign up" : "Sign in"}
    </button>
  </div>
</form>
