# Feature Gate Workflow

Use **before** the user implements a new feature. Run after project scan (see `project-review.md` Step 1).

## Step 1 — Restate the feature

One sentence: what the user wants to build and for whom.

## Step 2 — Principle-First check

Ask internally:

- Is this solving the **pin problem** or a distraction?
- Is the problem framed correctly, or are we in **Solution-First** / **Engineer Trap** territory?
- Would a **Design Thinker** question whether this feature should exist at all?

## Step 3 — Strategic lenses

Apply whichever fit (read matching chapters if unsure):

| Lens | Question |
|------|----------|
| Monopoly / competition | Does this escape competition or enter a feature war? (ch09, ch29) |
| Platform / network | Does this strengthen network effects or add linear cost? (ch16, ch31, ch62) |
| Product vs project | Is this a product capability or a one-off project? (ch27) |
| Mechanism | Does this change **how** the product works, or just add surface area? (ch58, ch91) |
| Purpose | Does this serve the stated purpose, or dilute it? (ch25, ch34) |

## Step 4 — Codebase check

Before endorsing implementation, identify:

- Files/modules the feature will touch
- Whether similar functionality already exists (avoid duplicate mechanics)
- What would break if the feature is removed in 6 months

## Step 5 — Verdict

Choose one and justify:

| Verdict | When |
|---------|------|
| **Build** | Aligns with pin problem, mechanism-level improvement, compounds |
| **Defer** | Valid idea, wrong timing or missing prerequisite |
| **Rethink** | Wrong problem, copycat feature, linear cost, or purpose drift |

## Output template

```markdown
## Feature
<restatement>

## Principle-First Check
<pass / fail + why>

## Strategic Lens
<2–3 frameworks applied>

## Codebase Notes
<what to read or change>

## Verdict: Build | Defer | Rethink
<reasoning>

## If Build — constraints
- Do: ...
- Avoid: ...

## Relevant chapters
- chNN — ...
```
