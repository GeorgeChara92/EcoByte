<script lang="ts">
    import { Button } from "$lib/components/ui/button";
    import {
        ArrowRight,
        Leaf,
        BarChart3,
        Zap,
        ShieldCheck,
        Globe,
        Menu,
    } from "@lucide/svelte";
</script>

<div class="flex flex-col min-h-screen">
    <!-- Header -->
    <header
        class="sticky top-0 z-50 w-full border-b backdrop-blur-md bg-background/80 supports-[backdrop-filter]:bg-background/60"
    >
        <div
            class="container mx-auto px-4 md:px-6 flex h-16 items-center justify-between"
        >
            <a
                href="/"
                class="flex items-center gap-2 font-bold text-xl tracking-tight"
            >
                <Leaf class="size-6 text-primary" />
                <span>EcoByte</span>
            </a>
            <nav class="hidden md:flex gap-6 text-sm font-medium">
                <a href="#features" class="hover:text-primary transition-colors"
                    >Features</a
                >
                <a href="#about" class="hover:text-primary transition-colors"
                    >About</a
                >
                <a href="#pricing" class="hover:text-primary transition-colors"
                    >Pricing</a
                >
            </nav>
            <div class="flex items-center gap-4">
                <a
                    href="/auth/login"
                    class="text-sm font-medium hover:underline underline-offset-4 hidden sm:block"
                >
                    Log in
                </a>
                <Button href="/auth/register" size="sm" class="hidden sm:flex">
                    Get Started
                </Button>
                <button class="md:hidden p-2">
                    <Menu class="size-5" />
                    <span class="sr-only">Toggle menu</span>
                </button>
            </div>
        </div>
    </header>

    <main class="flex-1">
        <!-- Hero Section -->
        <section class="relative py-20 md:py-32 overflow-hidden">
            <div
                class="absolute inset-0 -z-10 bg-[linear-gradient(to_right,#80808012_1px,transparent_1px),linear-gradient(to_bottom,#80808012_1px,transparent_1px)] bg-[size:24px_24px]"
            ></div>
            <div
                class="absolute left-0 right-0 top-0 -z-10 m-auto h-[310px] w-[310px] rounded-full bg-primary/20 opacity-20 blur-[100px]"
            ></div>

            <div
                class="container mx-auto px-4 md:px-6 flex flex-col items-center text-center max-w-4xl space-y-8"
            >
                <div
                    class="inline-flex items-center rounded-full border px-2.5 py-0.5 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80"
                >
                    ✨ Introducing Smart Analytics v2.0
                </div>
                <h1
                    class="text-4xl md:text-6xl lg:text-7xl font-bold tracking-tighter bg-gradient-to-br from-foreground to-foreground/70 bg-clip-text text-transparent"
                >
                    Sustainable code for a <br class="hidden md:block" /> greener
                    digital future.
                </h1>
                <p
                    class="text-lg md:text-xl text-muted-foreground max-w-[600px] text-balance"
                >
                    EcoByte helps you measure, analyze, and optimize your
                    digital carbon footprint. Build faster, cleaner, and more
                    efficient applications.
                </p>
                <div
                    class="flex flex-col sm:flex-row gap-4 w-full justify-center pt-4"
                >
                    <Button size="lg" class="group">
                        Start Optimizing <ArrowRight
                            class="ml-2 size-4 group-hover:translate-x-1 transition-transform"
                        />
                    </Button>
                    <Button variant="outline" size="lg">View Demo</Button>
                </div>
            </div>
        </section>

        <!-- Features Section -->
        <section id="features" class="py-20 bg-muted/30 border-y">
            <div class="container mx-auto px-4 md:px-6">
                <div class="text-center mb-16 space-y-4">
                    <h2 class="text-3xl font-bold tracking-tighter sm:text-4xl">
                        Platform Features
                    </h2>
                    <p
                        class="text-muted-foreground text-lg max-w-[800px] mx-auto"
                    >
                        Everything you need to build sustainable web
                        applications without compromising on performance.
                    </p>
                </div>
                <div class="grid md:grid-cols-3 gap-8">
                    <!-- Feature 1 -->
                    <div
                        class="bg-card p-6 rounded-xl border shadow-sm hover:shadow-md transition-shadow"
                    >
                        <div
                            class="size-12 rounded-lg bg-primary/10 flex items-center justify-center mb-4 text-primary"
                        >
                            <BarChart3 class="size-6" />
                        </div>
                        <h3 class="font-bold text-xl mb-2">
                            Real-time Analytics
                        </h3>
                        <p class="text-muted-foreground">
                            Track your application's energy consumption and
                            carbon emissions in real-time dashboards.
                        </p>
                    </div>
                    <!-- Feature 2 -->
                    <div
                        class="bg-card p-6 rounded-xl border shadow-sm hover:shadow-md transition-shadow"
                    >
                        <div
                            class="size-12 rounded-lg bg-primary/10 flex items-center justify-center mb-4 text-primary"
                        >
                            <Zap class="size-6" />
                        </div>
                        <h3 class="font-bold text-xl mb-2">
                            Performance Optimization
                        </h3>
                        <p class="text-muted-foreground">
                            Automated suggestions to reduce payload size and
                            improve execution efficiency.
                        </p>
                    </div>
                    <!-- Feature 3 -->
                    <div
                        class="bg-card p-6 rounded-xl border shadow-sm hover:shadow-md transition-shadow"
                    >
                        <div
                            class="size-12 rounded-lg bg-primary/10 flex items-center justify-center mb-4 text-primary"
                        >
                            <ShieldCheck class="size-6" />
                        </div>
                        <h3 class="font-bold text-xl mb-2">
                            Green Certification
                        </h3>
                        <p class="text-muted-foreground">
                            Earn verifiable badges and certificates for your
                            low-carbon digital products.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Stats Section -->
        <section class="py-20">
            <div class="container mx-auto px-4 md:px-6">
                <div class="grid grid-cols-2 md:grid-cols-4 gap-8 text-center">
                    <div class="space-y-2">
                        <h3 class="text-4xl font-bold">10k+</h3>
                        <p
                            class="text-sm text-muted-foreground uppercase tracking-wider"
                        >
                            Active Users
                        </p>
                    </div>
                    <div class="space-y-2">
                        <h3 class="text-4xl font-bold">500TB</h3>
                        <p
                            class="text-sm text-muted-foreground uppercase tracking-wider"
                        >
                            Data Saved
                        </p>
                    </div>
                    <div class="space-y-2">
                        <h3 class="text-4xl font-bold">99.9%</h3>
                        <p
                            class="text-sm text-muted-foreground uppercase tracking-wider"
                        >
                            Uptime
                        </p>
                    </div>
                    <div class="space-y-2">
                        <h3 class="text-4xl font-bold">24/7</h3>
                        <p
                            class="text-sm text-muted-foreground uppercase tracking-wider"
                        >
                            Support
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA Section -->
        <section class="py-20 bg-primary/5 border-y">
            <div
                class="container mx-auto px-4 md:px-6 text-center max-w-3xl space-y-6"
            >
                <Globe class="size-12 mx-auto text-primary opacity-50" />
                <h2 class="text-3xl font-bold tracking-tighter sm:text-4xl">
                    Ready to make a difference?
                </h2>
                <p class="text-xl text-muted-foreground">
                    Join thousands of developers building a cleaner internet
                    today.
                </p>
                <Button size="lg" class="mt-4">Get Started for Free</Button>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="py-12 bg-background border-t">
        <div class="container mx-auto px-4 md:px-6">
            <div class="grid md:grid-cols-4 gap-8 mb-8">
                <div class="space-y-4">
                    <div class="flex items-center gap-2 font-bold text-lg">
                        <Leaf class="size-5 text-primary" />
                        <span>EcoByte</span>
                    </div>
                    <p class="text-sm text-muted-foreground leading-relaxed">
                        Pioneering sustainable digital infrastructure for the
                        next generation of web applications.
                    </p>
                </div>
                <div>
                    <h4 class="font-semibold mb-4">Product</h4>
                    <ul class="space-y-2 text-sm text-muted-foreground">
                        <li>
                            <a href="##" class="hover:text-foreground"
                                >Features</a
                            >
                        </li>
                        <li>
                            <a href="##" class="hover:text-foreground"
                                >Integrations</a
                            >
                        </li>
                        <li>
                            <a href="##" class="hover:text-foreground"
                                >Pricing</a
                            >
                        </li>
                        <li>
                            <a href="##" class="hover:text-foreground"
                                >Changelog</a
                            >
                        </li>
                    </ul>
                </div>
                <div>
                    <h4 class="font-semibold mb-4">Company</h4>
                    <ul class="space-y-2 text-sm text-muted-foreground">
                        <li>
                            <a href="##" class="hover:text-foreground">About</a>
                        </li>
                        <li>
                            <a href="##" class="hover:text-foreground">Blog</a>
                        </li>
                        <li>
                            <a href="##" class="hover:text-foreground"
                                >Careers</a
                            >
                        </li>
                        <li>
                            <a href="##" class="hover:text-foreground"
                                >Contact</a
                            >
                        </li>
                    </ul>
                </div>
                <div>
                    <h4 class="font-semibold mb-4">Legal</h4>
                    <ul class="space-y-2 text-sm text-muted-foreground">
                        <li>
                            <a href="##" class="hover:text-foreground"
                                >Privacy</a
                            >
                        </li>
                        <li>
                            <a href="##" class="hover:text-foreground">Terms</a>
                        </li>
                        <li>
                            <a href="##" class="hover:text-foreground"
                                >Security</a
                            >
                        </li>
                    </ul>
                </div>
            </div>
            <div
                class="border-t pt-8 flex flex-col md:flex-row justify-between items-center gap-4 text-sm text-muted-foreground"
            >
                <p>
                    &copy; {new Date().getFullYear()} EcoByte Inc. All rights reserved.
                </p>
                <div class="flex gap-4">
                    <a href="##" class="hover:text-foreground">Twitter</a>
                    <a href="##" class="hover:text-foreground">GitHub</a>
                    <a href="##" class="hover:text-foreground">LinkedIn</a>
                </div>
            </div>
        </div>
    </footer>
</div>
