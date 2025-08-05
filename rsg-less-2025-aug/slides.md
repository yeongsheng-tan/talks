---
theme: seriph
layout: cover
favicon: /favicon.svg
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.dev/collections/94734566/slidev
# background: https://cover.sli.dev
background: https://images.unsplash.com/photo-1507525428034-b723cf961d3e
highlighter: shiki
# some information about your slides (markdown enabled)
title: Master Your Local Development Environment for AI adoption
info: |
  ## Master Your Local Development Environment for AI adoption

  Unlock the full potential of AI integration in your development workflow by establishing a robust local environment. Achieve a tight, full-cycle feedback loop, with rapid iteration.
# apply unocss classes to the current slide
class: text-center
# https://sli.dev/features/drawing
drawings:
  persist: false
# slide transition: https://sli.dev/guide/animations.html#slide-transitions
transition: slide-left
# enable MDC Syntax: https://sli.dev/features/mdc
mdc: true
# open graph
# seoMeta:
#  ogImage: https://cover.sli.dev
---

# Master Your Local Development Environment for AI adoption


<!-- Add a break below the headings -->
<div class="mb-8"></div>

<div class="w-full flex flex-col items-end">
  <div class="uppercase text-sm tracking-widest flex gap-8 items-center mb-2">
    <!-- Yeong Sheng -->
    <div class="flex flex-col items-center">
      <span>Yeong Sheng</span>
      <a
        href="https://github.com/yeongsheng-tan"
        target="_blank"
        title="Tan Yeong Sheng's GitHub"
        class="mt-1"
      >
        <img
          src="https://github.com/yeongsheng-tan.png"
          alt="Tan Yeong Sheng's avatar"
          width="40"
          height="40"
          class="rounded-full border-2 border-gray-300"
        ></a>
    </div>
    <!-- Stanly -->
    <div class="flex flex-col items-center">
      <span>Stanly</span>
      <a
        href="https://github.com/stanlylau"
        target="_blank"
        title="Stanly Lau's GitHub"
        class="mt-1"
      >
        <img
          src="https://github.com/stanlylau.png"
          alt="Stanly Lau's avatar"
          width="40"
          height="40"
          class="rounded-full border-2 border-gray-300"
        />
      </a>
    </div>
  </div>
  <!-- LeSS Logo and Link Block, right-justified below avatars -->
  <div class="flex items-center gap-3">
    <img src="https://less.works/img/Less-Logo-7.png" class="h-8" alt="LeSS Logo">
    <a
      href="https://less.works/less/principles/queueing_theory#indirect-benefits-the-lake-and-rocks-metaphor"
      target="_blank"
      class="text-xs underline"
    >
      <div>The Lake and Rocks Metaphor (LeSS - Queueing Theory)</div>
    </a>
  </div>
  <!-- Next Page Block -->
  <div
    @click="$slidev.nav.next"
    class="mt-12 py-1 cursor-pointer hover:bg-white hover:bg-opacity-10 flex items-center gap-2"
    style="width: max-content;"
  >
    Press Space for next page <carbon:arrow-right />
  </div>
</div>

---
transition: fade-out
layout: center
class: text-center
---
  ### "Works on my machine"
  Isn’t funny when it blocks the entire team/s
  
---
transition: fade-out
layout: center
class: text-left
---

<div style="
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-image: url('https://less.works/img/queueing_theory/queueing-10.jpg');
  background-size: cover;
  background-position: center;
  opacity: 0.3;
  z-index: -1;
"></div>

<div class="flex flex-col justify-center h-full relative z-10">

### In multi-team setup, simple problems become massive obstacles

- Delayed integration
- Hours lost to environment issues
- Developers, new and existing piling code, yet unable to verify changes thoroughly in local enironment
- LeSS exposes these problems like dropping water levels to reveal rocks in a lake
- Prevent teams from using AI tools like Cursor effectively.
- Teams struggle to quickly validate AI-generated code, limiting its potential impact.

</div>

---
transition: fade-out
layout: center
class: text-center
---
  ### Unlock the full potential of AI integration in your development workflow.
  ### Achieve a tight, full-cycle feedback loop, with rapid iteration.

---
transition: fade-out
layout: center
class: text-center
---

<div class="flex flex-col justify-center items-center h-full">

<div class="mb-8">

## Demo Repository

</div>

<div class="flex items-center gap-6 mb-8">
  <img src="https://logos-world.net/wp-content/uploads/2020/11/GitHub-Logo-700x394.png" class="h-16" alt="GitHub Logo">
</div>

<div>
  <a
    href="https://github.com/yeongsheng-tan/lunchbox_api"
    target="_blank"
    class="text-2xl underline hover:text-blue-600 transition-colors"
  >
    lunchbox_api
  </a>
</div>

</div>

---
transition: fade-out
layout: center
---

<div style="background: #f5f5f5; height: 100vh; width: 100vw; display: flex; flex-direction: column; position: absolute; top: 0; left: 0; z-index: 1; margin: 0; padding: 0;">
  <!-- Top half with the AI IDE run test failure image -->
  <div style="height: 50vh; width: 100vw; display: flex; align-items: center; justify-content: center; background: #f5f5f5; overflow: visible;">
    <!-- Contrast AI IDE failure to run tests-->
    <img src="/images/ai_ide_failure.png" alt="IDE failure" style="width: auto; height: auto; max-width: 100%; max-height: 100%; object-fit: contain; display: block;">
  </div>

  <!-- Bottom half with the AI IDE run test success image -->
  <div style="height: 50vh; width: 100vw; display: flex; align-items: center; justify-content: center; background: #f5f5f5; overflow: visible;">
    <!-- AI IDE success to run tests-->
    <img src="/images/ai_ide_succeed.png" alt="IDE success" style="width: auto; height: auto; max-width: 100%; max-height: 100%; object-fit: contain; display: block;">
  </div>
</div>

---
transition: fade-out
layout: center
---
  
  ### Is it even possible to take complete control of your local environment?
  - databases, messaging, and dependencies?
  - repeatable, composable, clean-slate DB migrations?
  - time-travel testing, and bending your software product system to your will for effective testing & verification?

---
transition: fade-out
layout: full
---
  <div class="flex items-center gap-6 mb-6">
    <h3>{ DEMO }</h3>
    <img src="/images/devbox_stack.png" alt="Devbox Stack" class="h-32 w-auto">
  </div>

  <!-- Nix Flakes with Jetfy Devbox & direnv-->
  <div class="flex items-center gap-3">
    <img src="https://cdn.icon-icons.com/icons2/2699/PNG/512/nixos_logo_icon_169913.png" class="h-8" alt="Nix">
    <a
      href="https://nixos.org/"
      target="_blank"
      class="text-xs underline"
    >
      <div>Nix with NixPkgs</div>
    </a>
  </div>

  <div class="flex items-center gap-3">
    <img src="https://www.jetify.com/_next/image?url=https%3A%2F%2Fwww.datocms-assets.com%2F144604%2F1733460224-devbox.png&w=3840&q=75" class="h-8" alt="Jetify Devbox">
    <a
      href="https://www.jetify.com/devbox"
      target="_blank"
      class="text-xs underline"
    >
      <div>Jetify Devbox</div>
    </a>
  </div>

<div style="font-size: 0.75rem; line-height: 1.2; max-height: 400px; overflow-y: auto;">

```json {monaco}
{
  "packages": ["postgresql@17.5", "beam27Packages.elixir@1.18.4", "nodejs@22.14.0"],
  "shell": {
    "init_hook": ["cd assets && pnpm --frozen-lockfile recursive install"],
    "scripts": {
      "test": ["BASIC_AUTH_USERNAME=specialUserName BASIC_AUTH_PASSWORD=superSecretPassword mix test"],
      "init-db": [
        "export PGDATA=$PWD/.devbox/virtenv/postgresql/data",
        "rm -rf $PWD/.devbox/virtenv/postgresql",
        "mkdir -p $PGDATA",
        "initdb --username=postgres -D $PGDATA"
      ]
    }
  }
}
```

</div>
---

## Key Outcomes & Takeaways

<div class="mb-8"></div>

<div v-click="1">
The Problem
</div>

<div v-click="2">

* Integration delays ripple across teams, creating massive obstacles in multi-team setups

</div>

<div v-click="3">

* Hours lost to "works on my machine" issues that block entire development workflows

</div>

<div v-click="4">

* AI tools become unreliable without proper local verification capabilities

</div>

<div v-click="5">

* Blocked productivity affects both human developers and AI-assisted development

</div>

<div v-click="6">

* AI-generated code is only as valuable as your ability to test it locally

</div>

<div v-click="7">

* Without a clean, reproducible environment, you can't trust AI suggestions

</div>

---
layout: center
class: text-left
---

<div class="flex flex-col justify-center items-center h-full">

<div class="text-center mb-8">

## Outcome

</div>

<div class="max-w-4xl text-left">

* **Recognize the true cost** of broken local environments - it's expensive and blocks both human and AI productivity
* **Master your local development environment** - service dependencies, & runtime for instant code verification
* **Unlock AI tool potential** - use tools like Cursor productively with reliable local verification to validate generated code
* **Build improvement roadmaps** - guide your teams toward better integration practices and effective AI adoption

</div>

</div>

---
layout: center
class: text-left
---

<div class="flex flex-col justify-center items-center h-full">

<div class="text-center mb-8">

## The Bottom Line

</div>

<div class="max-w-4xl text-left">

* AI-generated code is only as valuable as your ability to test it locally
* Without a clean, reproducible environment, you can't trust AI suggestions
* Fast feedback loops are essential for both human and AI-assisted development success

</div>

</div>

---
layout: center
class: text-center
---

# Learn More
[Lunchbox API Demo Code](https://github.com/yeongsheng-tan/lunchbox_api) · 
[Nix](https://nixos.org) · [Jetify Devbox](https://www.jetify.com/devbox)

<PoweredBySlidev mt-10 />