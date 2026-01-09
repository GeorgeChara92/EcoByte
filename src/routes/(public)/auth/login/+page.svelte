<script lang="ts">
    // import { GalleryVerticalEnd } from "lucide-svelte";
    import LoginForm from "$lib/components/login-form.svelte";
</script>

<div class="grid min-h-svh lg:grid-cols-2">
    <div class="flex flex-col gap-4 p-6 md:p-10">
        <div class="flex justify-center gap-2 md:justify-start">
            <div class="flex items-center gap-2 font-medium">
                <img src="/images/logo.svg" alt="EcoByte Logo" class="size-20" />
                EcoByte
            </div>
        </div>
        <div class="flex flex-1 items-center justify-center">
            <div class="w-full max-w-xs">
                <LoginForm />
            </div>
        </div>
    </div>
    <div class="bg-muted relative hidden lg:block">
        <img
            src="/images/ecohouse.jpg"
            alt="ecohouse"
            class="absolute inset-0 h-full w-full object-cover dark:brightness-[0.2] dark:grayscale"
        />
    </div>
</div>
