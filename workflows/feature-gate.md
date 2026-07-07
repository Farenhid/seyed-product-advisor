# Feature Gate Workflow

Use **before** the user implements a new feature. Run after project scan (see `project-review.md` Step 1).

Follow [voice.md](voice.md) for response style and mandatory closings.

## Step 1 — Restate the feature

One sentence: what the user wants to build and for whom.

## Step 2 — Founder motivation

Ask internally: **why does the founder want this now?**
- User pull, or founder comfort?
- Core loop proven, or building on sand?
- Avoiding a harder problem?

## Step 3 — Principle check

Read [principles.md](../principles.md). Ask internally:

- Is this solving the **pin problem** or a distraction?
- Does it align with **less is more** / **subtraction**?
- Is the problem framed correctly, or **solution attachment**?
- **Day 0 test**: would you start building this today?

## Step 4 — Load chapters

Read 1–3 relevant chapters from Topic Index if needed.

## Step 5 — Codebase check

Before endorsing implementation:

- Files/modules the feature will touch
- Whether similar functionality already exists
- What would break if the feature is removed in 6 months

## Step 6 — Produce the answer

Use the flow from [voice.md](voice.md):

1. **What I see** — the feature in context
2. **The real question** — should this exist at all?
3. **If Seyed were here** — honest take (build / defer / rethink) in plain language
4. **What to do** — if build: constraints; if not: what to do instead
5. **Principles Lens** — mandatory
6. **Founder Mirror** — mandatory (why do you want this feature?)
7. **Session Sources** — mandatory

## Verdict guidance (internal)

| Verdict | When |
|---------|------|
| **Build** | Aligns with pin problem, mechanism-level improvement, compounds |
| **Defer** | Valid idea, wrong timing or missing prerequisite |
| **Rethink** | Wrong problem, copycat feature, linear cost, or purpose drift |

State verdict in plain language inside the main body — not as a rigid label unless it helps clarity.
