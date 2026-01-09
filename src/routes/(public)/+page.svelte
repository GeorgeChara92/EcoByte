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
        CheckCircle,
    } from "@lucide/svelte";
</script>

<div class="flex flex-col min-h-screen font-sans text-foreground">
    <!-- Header -->
    <header
        class="sticky top-0 z-50 w-full bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60 border-b border-border/40"
    >
        <div
            class="container mx-auto px-6 md:px-12 flex h-20 items-center justify-between"
        >
            <a
                href="/"
                class="flex items-center gap-2.5 font-bold text-2xl tracking-tight text-foreground"
            >
                <div
                    class="bg-primary text-primary-foreground p-1.5 rounded-sm"
                >
                    <Leaf class="size-5" />
                </div>
                <span>EcoByte</span>
            </a>
            <nav
                class="hidden md:flex gap-8 text-sm font-semibold uppercase tracking-wide text-muted-foreground"
            >
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
                    class="text-sm font-semibold hover:text-primary transition-colors hidden sm:block uppercase tracking-wide"
                >
                    Log in
                </a>
                <Button
                    href="/auth/register"
                    class="rounded-none font-bold uppercase tracking-wider px-6"
                >
                    Get Started
                </Button>
                <button class="md:hidden p-2 text-foreground">
                    <Menu class="size-6" />
                    <span class="sr-only">Toggle menu</span>
                </button>
            </div>
        </div>
    </header>

    <main class="flex-1">
        <!-- Hero Section -->
        <section
            class="relative pt-24 pb-32 overflow-hidden border-b border-border/50"
        >
            <!-- Engineered Grid Background -->
            <div
                class="absolute inset-0 -z-10 bg-background bg-[linear-gradient(to_right,#80808012_1px,transparent_1px),linear-gradient(to_bottom,#80808012_1px,transparent_1px)] bg-[size:24px_24px]"
            ></div>
            <div
                class="absolute inset-0 -z-10 bg-gradient-to-t from-background via-transparent to-transparent"
            ></div>

            <!-- Angular Background Accent -->
            <div
                class="absolute inset-0 -z-10 bg-muted/20"
                style="clip-path: polygon(0 0, 100% 0, 100% 85%, 0 100%); display: none;"
            ></div>

            <div
                class="container mx-auto px-6 md:px-12 grid lg:grid-cols-2 gap-12 items-center"
            >
                <div class="space-y-8 max-w-2xl animate-fade-in-up">
                    <div
                        class="inline-flex items-center gap-2 px-3 py-1 border border-primary/20 bg-primary/5 text-primary text-xs font-bold uppercase tracking-widest"
                    >
                        <span class="relative flex h-2 w-2">
                            <span
                                class="animate-ping absolute inline-flex h-full w-full rounded-full bg-primary opacity-75"
                            ></span>
                            <span
                                class="relative inline-flex rounded-full h-2 w-2 bg-primary"
                            ></span>
                        </span>
                        System Online: v2.0
                    </div>

                    <h1
                        class="text-5xl md:text-6xl lg:text-7xl font-extrabold tracking-tighter leading-[1.1] text-foreground"
                    >
                        Sustainable code for a <span
                            class="text-primary relative inline-block"
                        >
                            greener
                            <svg
                                class="absolute w-full h-3 -bottom-1 left-0 text-primary/20 -z-10"
                                viewBox="0 0 100 10"
                                preserveAspectRatio="none"
                            >
                                <path
                                    d="M0 5 Q 50 10 100 5"
                                    stroke="currentColor"
                                    stroke-width="8"
                                    fill="none"
                                />
                            </svg>
                        </span> future.
                    </h1>

                    <p
                        class="text-xl text-muted-foreground leading-relaxed max-w-[540px]"
                    >
                        We empower enterprises to measure, analyze, and optimize
                        their digital carbon footprint. Drive efficiency without
                        compromising performance.
                    </p>

                    <div class="flex flex-col sm:flex-row gap-4 pt-2">
                        <Button
                            size="lg"
                            class="rounded-none h-14 px-8 text-base font-bold uppercase tracking-wider shadow-lg shadow-primary/20 hover:scale-[1.02] active:scale-[0.98] transition-all duration-200"
                        >
                            Start Optimizing
                            <ArrowRight class="ml-2 size-5" />
                        </Button>
                        <Button
                            variant="outline"
                            size="lg"
                            class="rounded-none h-14 px-8 text-base font-bold uppercase tracking-wider border-2 hover:bg-muted hover:text-foreground hover:scale-[1.02] active:scale-[0.98] transition-all duration-200"
                        >
                            View Demo
                        </Button>
                    </div>

                    <div
                        class="pt-8 flex items-center gap-8 text-sm text-muted-foreground font-medium"
                    >
                        <div
                            class="flex items-center gap-2 group cursor-default"
                        >
                            <CheckCircle
                                class="size-4 text-primary group-hover:scale-110 transition-transform"
                            />
                            <span
                                class="group-hover:text-foreground transition-colors"
                                >Enterprise Ready</span
                            >
                        </div>
                        <div
                            class="flex items-center gap-2 group cursor-default"
                        >
                            <CheckCircle
                                class="size-4 text-primary group-hover:scale-110 transition-transform"
                            />
                            <span
                                class="group-hover:text-foreground transition-colors"
                                >ISO Compliant</span
                            >
                        </div>
                    </div>
                </div>

                <!-- Abstract Visual -->
                <div class="relative hidden lg:block h-[600px] w-full">
                    <!-- Floating elements container -->
                    <div
                        class="absolute inset-0 flex items-center justify-center"
                    >
                        <!-- Main Card -->
                        <div
                            class="relative z-10 bg-background/80 backdrop-blur-sm border-2 border-border p-8 shadow-2xl skew-y-3 animate-float max-w-sm w-full"
                        >
                            <!-- Corner Accents -->
                            <div
                                class="absolute -top-1 -left-1 size-3 border-t-2 border-l-2 border-primary"
                            ></div>
                            <div
                                class="absolute -bottom-1 -right-1 size-3 border-b-2 border-r-2 border-primary"
                            ></div>

                            <div class="space-y-6">
                                <div
                                    class="flex items-center justify-between border-b pb-4"
                                >
                                    <div class="flex items-center gap-2">
                                        <div
                                            class="size-3 bg-red-500 rounded-full"
                                        ></div>
                                        <div
                                            class="size-3 bg-yellow-500 rounded-full"
                                        ></div>
                                        <div
                                            class="size-3 bg-green-500 rounded-full"
                                        ></div>
                                    </div>
                                    <div
                                        class="text-xs font-mono text-muted-foreground"
                                    >
                                        metrics.json
                                    </div>
                                </div>
                                <div class="space-y-4 font-mono text-sm">
                                    <div
                                        class="flex justify-between items-center"
                                    >
                                        <span class="text-muted-foreground"
                                            >Status</span
                                        >
                                        <span class="text-green-500 font-bold"
                                            >OPTIMAL</span
                                        >
                                    </div>
                                    <div
                                        class="flex justify-between items-center"
                                    >
                                        <span class="text-muted-foreground"
                                            >Carbon Output</span
                                        >
                                        <span class="font-bold"
                                            >128g / Visit</span
                                        >
                                    </div>
                                    <div
                                        class="w-full bg-muted h-2 rounded-full overflow-hidden"
                                    >
                                        <div
                                            class="bg-primary h-full w-[85%] animate-pulse-slow"
                                        ></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Decorative "Behind" Elements -->
                        <div
                            class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[400px] h-[400px] border border-primary/10 rounded-full animate-spin-slow duration-[20s]"
                            style="animation-duration: 30s;"
                        ></div>
                        <div
                            class="absolute top-1/2 left-1/2 -translate-x-1/3 -translate-y-2/3 w-64 h-64 bg-primary/5 blur-3xl rounded-full mix-blend-multiply filter"
                        ></div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Features Section -->
        <section
            id="features"
            class="py-24 bg-muted/5 relative border-b border-border/50"
        >
            <!-- Angular separator line -->
            <div
                class="absolute top-0 left-0 right-0 h-24 bg-background"
                style="clip-path: polygon(0 0, 100% 0, 100% 0, 0 100%);"
            ></div>

            <div class="container mx-auto px-6 md:px-12">
                <div class="max-w-3xl mb-16">
                    <h2
                        class="text-3xl md:text-5xl font-bold tracking-tight mb-6"
                    >
                        Platform Features
                    </h2>
                    <p class="text-xl text-muted-foreground leading-relaxed">
                        Everything you need to build sustainable web
                        applications without compromising on performance. Our
                        suite of tools provides deep insights and actionable
                        data.
                    </p>
                </div>

                <div class="grid md:grid-cols-3 gap-8">
                    <!-- Feature 1 -->
                    <div
                        class="group bg-background p-8 border border-border shadow-sm hover:shadow-lg transition-all duration-300 relative overflow-hidden"
                    >
                        <div
                            class="absolute top-0 left-0 w-full h-1 bg-primary transform origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300"
                        ></div>
                        <div
                            class="mb-6 inline-flex items-center justify-center size-14 bg-primary/10 text-primary rounded-sm"
                        >
                            <BarChart3 class="size-7" />
                        </div>
                        <h3
                            class="font-bold text-2xl mb-3 group-hover:text-primary transition-colors"
                        >
                            Real-time Analytics
                        </h3>
                        <p class="text-muted-foreground leading-relaxed">
                            Track your application's energy consumption and
                            carbon emissions in real-time dashboards with
                            granular precision.
                        </p>
                    </div>

                    <!-- Feature 2 -->
                    <div
                        class="group bg-background p-8 border border-border shadow-sm hover:shadow-lg transition-all duration-300 relative overflow-hidden"
                    >
                        <div
                            class="absolute top-0 left-0 w-full h-1 bg-primary transform origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300"
                        ></div>
                        <div
                            class="mb-6 inline-flex items-center justify-center size-14 bg-primary/10 text-primary rounded-sm"
                        >
                            <Zap class="size-7" />
                        </div>
                        <h3
                            class="font-bold text-2xl mb-3 group-hover:text-primary transition-colors"
                        >
                            Performance Optimization
                        </h3>
                        <p class="text-muted-foreground leading-relaxed">
                            Automated AI-driven suggestions to reduce payload
                            size, optimize assets, and improve execution
                            efficiency.
                        </p>
                    </div>

                    <!-- Feature 3 -->
                    <div
                        class="group bg-background p-8 border border-border shadow-sm hover:shadow-lg transition-all duration-300 relative overflow-hidden"
                    >
                        <div
                            class="absolute top-0 left-0 w-full h-1 bg-primary transform origin-left scale-x-0 group-hover:scale-x-100 transition-transform duration-300"
                        ></div>
                        <div
                            class="mb-6 inline-flex items-center justify-center size-14 bg-primary/10 text-primary rounded-sm"
                        >
                            <ShieldCheck class="size-7" />
                        </div>
                        <h3
                            class="font-bold text-2xl mb-3 group-hover:text-primary transition-colors"
                        >
                            Green Certification
                        </h3>
                        <p class="text-muted-foreground leading-relaxed">
                            Earn verifiable badges and ISO-ready certificates
                            for your low-carbon digital products to showcase
                            your commitment.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Stats Section -->
        <section
            class="py-24 bg-foreground text-background relative overflow-hidden"
        >
            <!-- Abstract background pattern -->
            <div
                class="absolute inset-0 opacity-10"
                style="background-image: radial-gradient(circle at 2px 2px, white 1px, transparent 0); background-size: 40px 40px;"
            ></div>

            <div class="container mx-auto px-6 md:px-12 relative z-10">
                <div
                    class="grid grid-cols-2 md:grid-cols-4 gap-12 text-center divide-x divide-white/10"
                >
                    <div class="space-y-2">
                        <h3
                            class="text-5xl md:text-6xl font-bold tracking-tighter text-white"
                        >
                            10k+
                        </h3>
                        <p
                            class="text-sm font-bold uppercase tracking-widest text-primary"
                        >
                            Active Users
                        </p>
                    </div>
                    <div class="space-y-2">
                        <h3
                            class="text-5xl md:text-6xl font-bold tracking-tighter text-white"
                        >
                            500TB
                        </h3>
                        <p
                            class="text-sm font-bold uppercase tracking-widest text-primary"
                        >
                            Data Saved
                        </p>
                    </div>
                    <div class="space-y-2">
                        <h3
                            class="text-5xl md:text-6xl font-bold tracking-tighter text-white"
                        >
                            99.9%
                        </h3>
                        <p
                            class="text-sm font-bold uppercase tracking-widest text-primary"
                        >
                            Uptime
                        </p>
                    </div>
                    <div class="space-y-2">
                        <h3
                            class="text-5xl md:text-6xl font-bold tracking-tighter text-white"
                        >
                            24/7
                        </h3>
                        <p
                            class="text-sm font-bold uppercase tracking-widest text-primary"
                        >
                            Support
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA Section -->
        <section class="py-32 relative">
            <div
                class="absolute inset-0 bg-muted/30 skew-y-1 transform origin-bottom-right -z-10"
            ></div>
            <div
                class="container mx-auto px-6 md:px-12 grid lg:grid-cols-2 gap-12 items-center"
            >
                <div class="space-y-6">
                    <h2 class="text-4xl md:text-5xl font-bold tracking-tighter">
                        Ready to make a difference?
                    </h2>
                    <p class="text-xl text-muted-foreground max-w-lg">
                        Join thousands of developers building a cleaner internet
                        today. Start your journey towards digital
                        sustainability.
                    </p>
                </div>
                <div class="flex flex-col sm:flex-row gap-4 lg:justify-end">
                    <Button
                        size="lg"
                        class="rounded-none h-16 px-10 text-lg font-bold uppercase tracking-wider shadow-xl"
                    >
                        Get Started for Free
                    </Button>
                    <Button
                        variant="outline"
                        size="lg"
                        class="rounded-none h-16 px-10 text-lg font-bold uppercase tracking-wider border-2 hover:bg-background"
                    >
                        Contact Sales
                    </Button>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="py-16 bg-background border-t">
        <div class="container mx-auto px-6 md:px-12">
            <div class="grid md:grid-cols-4 gap-12 mb-16">
                <div class="space-y-6">
                    <div class="flex items-center gap-2.5 font-bold text-xl">
                        <div
                            class="bg-primary text-primary-foreground p-1 rounded-sm"
                        >
                            <Leaf class="size-4" />
                        </div>
                        <span>EcoByte</span>
                    </div>
                    <p
                        class="text-sm text-muted-foreground leading-relaxed max-w-xs"
                    >
                        Pioneering sustainable digital infrastructure for the
                        next generation of web applications. We are committed to
                        a carbon-neutral future.
                    </p>
                </div>
                <div>
                    <h4 class="font-bold mb-6 uppercase text-sm tracking-wider">
                        Product
                    </h4>
                    <ul
                        class="space-y-3 text-sm text-muted-foreground font-medium"
                    >
                        <li>
                            <a
                                href="##"
                                class="hover:text-primary transition-colors"
                                >Features</a
                            >
                        </li>
                        <li>
                            <a
                                href="##"
                                class="hover:text-primary transition-colors"
                                >Integrations</a
                            >
                        </li>
                        <li>
                            <a
                                href="##"
                                class="hover:text-primary transition-colors"
                                >Pricing</a
                            >
                        </li>
                        <li>
                            <a
                                href="##"
                                class="hover:text-primary transition-colors"
                                >Changelog</a
                            >
                        </li>
                    </ul>
                </div>
                <div>
                    <h4 class="font-bold mb-6 uppercase text-sm tracking-wider">
                        Company
                    </h4>
                    <ul
                        class="space-y-3 text-sm text-muted-foreground font-medium"
                    >
                        <li>
                            <a
                                href="##"
                                class="hover:text-primary transition-colors"
                                >About</a
                            >
                        </li>
                        <li>
                            <a
                                href="##"
                                class="hover:text-primary transition-colors"
                                >Blog</a
                            >
                        </li>
                        <li>
                            <a
                                href="##"
                                class="hover:text-primary transition-colors"
                                >Careers</a
                            >
                        </li>
                        <li>
                            <a
                                href="##"
                                class="hover:text-primary transition-colors"
                                >Contact</a
                            >
                        </li>
                    </ul>
                </div>
                <div>
                    <h4 class="font-bold mb-6 uppercase text-sm tracking-wider">
                        Legal
                    </h4>
                    <ul
                        class="space-y-3 text-sm text-muted-foreground font-medium"
                    >
                        <li>
                            <a
                                href="##"
                                class="hover:text-primary transition-colors"
                                >Privacy</a
                            >
                        </li>
                        <li>
                            <a
                                href="##"
                                class="hover:text-primary transition-colors"
                                >Terms</a
                            >
                        </li>
                        <li>
                            <a
                                href="##"
                                class="hover:text-primary transition-colors"
                                >Security</a
                            >
                        </li>
                    </ul>
                </div>
            </div>
            <div
                class="border-t pt-8 flex flex-col md:flex-row justify-between items-center gap-4 text-sm text-muted-foreground font-medium"
            >
                <p>
                    &copy; {new Date().getFullYear()} EcoByte Inc. All rights reserved.
                </p>
                <div class="flex gap-6">
                    <a href="##" class="hover:text-foreground transition-colors"
                        >Twitter</a
                    >
                    <a href="##" class="hover:text-foreground transition-colors"
                        >GitHub</a
                    >
                    <a href="##" class="hover:text-foreground transition-colors"
                        >LinkedIn</a
                    >
                </div>
            </div>
        </div>
    </footer>
</div>
