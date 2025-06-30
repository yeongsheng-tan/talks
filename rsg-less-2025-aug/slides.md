---
theme: seriph
layout: cover
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.dev/collections/94734566/slidev
background: https://cover.sli.dev
highlighter: shiki
# some information about your slides (markdown enabled)
title: Master Your Local Development Environment for AI adoption
info: |
  ## Master Your Local Development Environment for AI adoption

  Unlock the full potential of AI integration in your development workflow by establishing a robust local environment. Achieve a tight, full-cycle feedback loop, with rapid iteration.

  [Anthony Fu](https://antfu.me/) at [VueDay 2021]
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
  ### Unlock the full potential of AI integration in your development workflow.
  ### Achieve a tight, full-cycle feedback loop, with rapid iteration.

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
---
  ### In multi-team setup, simple problems become massive obstacles
  - Delayed integration
  - Hours lost to environment issues
  - Developers, new and existing piling code, yet unable to verify changes thoroughly in local enironment
  - LeSS exposes these problems like dropping water levels to reveal rocks in a lake
  - Prevent teams from using AI tools like Cursor effectively.
  - Teams struggle to quickly validate AI-generated code, limiting its potential impact.

---
transition: fade-out
layout: center
---
  ### `{ DEMO }`

---
transition: fade-out
layout: center
---
  
  ### Is it even possible to take complete control of your local environment?
  - databases, messaging, and dependencies?
  - repeatable, composable, clean-slate DB migrations?
  - time-travel testing, and bending your software product system to your will for effective testing & verification?
---

## Learning Outcomes

* **Spot the real damage from broken local environments.** It’s not just annoying; it’s expensive and blocks both human and AI productivity.
* **Take total control of your local setup:** databases, messaging, dependencies, and runtime in order to verify code changes instantly.
* **Learn advanced testing techniques** including clean-slate resets, time-travel debugging, and the ability to short-circuit any flow for testing.
* **Actually use AI tools like Cursor productively** because you’ll have the local verification setup to check if the generated code actually works.
* **Create an improvement roadmap** to start your teams’ journey toward better integration practices and effective AI tool adoption.

---
transition: fade-out
layout: full
---
### `{ DEMO }`

```json {monaco}
{
  "packages": [
    "postgresql@17.5",
    "beam27Packages.elixir@1.18.4",
    "nodejs@24.3.0"
  ],
  "shell": {
    "init_hook": [
      "echo 'Welcome to devbox for lunchbox_api!' > /dev/null",
      "corepack prepare pnpm@10.12.4 --activate",
      "corepack use pnpm@10.12.4",
      "cd assets && pnpm --frozen-lockfile recursive install"
    ],
    "scripts": {
      "test": [
        "BASIC_AUTH_USERNAME=specialUserName BASIC_AUTH_PASSWORD=superSecretPassword mix test"
      ],
      "setup-db": [
        "devbox services up -b",
        "psql -U postgres -c \"CREATE USER postgres;\" || true",
        "psql -U postgres -c \"CREATE DATABASE lunchbox_api_dev OWNER postgres;\" || true",
        "psql -U postgres -c \"CREATE DATABASE lunchbox_api_test OWNER postgres;\" || true",
      ]
    }
  }
}
```
---

## The Real Cost of Broken Local Environments

* Integration delays ripple across teams.
* Hours lost to “works on my machine” issues.
* AI tools become unreliable without local verification.
* Blocked productivity: both human and AI.
* AI-generated code is only as good as your ability to test it locally.
* Without a clean, reproducible environment, you can’t trust AI suggestions.
* **Example:** Cursor and similar tools need fast feedback loops.

---
layout: center
class: text-center
---

# Learn More

[Documentation](https://sli.dev) · [GitHub](https://github.com/slidevjs/slidev) · [Showcases](https://sli.dev/resources/showcases)

<PoweredBySlidev mt-10 />