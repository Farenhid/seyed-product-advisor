# Project Review Workflow

Use when the user asks to review their product, startup, pitch, or strategy.

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

## Step 2 — Load relevant skill chapters

From the Topic Index in `SKILL.md`, read 2–4 chapter files that match the product type:

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

Use this output structure:

```markdown
## Product Snapshot
<one paragraph from what you read>

## Pin Problem
<your assessment — is it clear, real, differentiated?>

## Frameworks Applied
- **<Framework>**: <how it applies>

## Strengths
- ...

## Risks & Anti-patterns
- **<Anti-pattern>**: <why it matters here>

## Verdict
<2–3 sentences — honest, principles-first>

## Next 3 Actions
1. ...
2. ...
3. ...

## Session Sources
(mandatory — see SKILL.md)
```

## Voice

- Principles-first, not generic startup advice
- Challenge assumptions (Status Quo Challenge) when the project copies competitors
- Name frameworks exactly as Seyed teaches them
- Prefer "rethink the problem" over "add more features"
