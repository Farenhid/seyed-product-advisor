# Project Review Workflow

Use when the user asks to review their product, startup, pitch, or strategy.

Follow [voice.md](voice.md) for response style and mandatory closings.

## Step 1 — Scan the project (mandatory)

Read in this order:

1. `.cursor/seyed-brief.md` — if missing, ask the four questions below
2. `README.md`
3. Manifest: `package.json`, `pyproject.toml`, `Cargo.toml`, `go.mod`, or equivalent
4. Top-level structure: `src/`, `app/`, `lib/`, `docs/`, `api/`
5. Any `ARCHITECTURE.md`, `PRD.md`, or `docs/` strategy files

If the user points at specific files, read those too.

### If no brief exists, ask:

1. What is the product in one sentence?
2. Who is the primary user?
3. What stage: idea, MVP, growth, or scale?
4. What is the pin problem (the one problem you own)?

## Step 2 — Load skill files

1. [principles.md](../principles.md) — always first
2. 2–4 chapter files from Topic Index in `SKILL.md` that match the product type:

| Situation | Start with |
|-----------|------------|
| Early startup / idea | ch01, ch12, ch25, ch53 |
| Feature-heavy product | ch27, ch29, ch34, ch58 |
| Marketplace / platform | ch03, ch16, ch46, ch62 |
| Competition / positioning | ch09, ch22, ch29, ch45 |
| Team / culture | ch15, ch19, ch20, ch76 |
| Go-to-market | ch31, ch79, ch85 |
| Fundraising / pitch | ch12, ch25, ch75 |

Also check `patterns.md` and `cheatsheet.md` for decision rules.

## Step 3 — Produce the review

Use the flow from [voice.md](voice.md):

1. **What I see** — plain snapshot
2. **The real question** — reframe the problem
3. **If Seyed were here** — empathetic founder talk
4. **What this led to** — evidence in accessible language
5. **What to do** — few clear actions
6. **Principles Lens** — mandatory
7. **Founder Mirror** — mandatory
8. **Session Sources** — mandatory

## Voice

- Plain language — no insider jargon without explanation
- Root cause before symptoms
- Speak to the founder with empathy ("I sense you...")
- Challenge assumptions when the project copies competitors or adds features on a broken core
- Prefer "rethink the problem" over "add more features"
- Do NOT open with numbered audit lists or commit archaeology
