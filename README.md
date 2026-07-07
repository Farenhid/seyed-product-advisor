# Seyed Product Advisor

An [Agent Skill](https://agentskills.io) that gives **product and strategy advice in Seyed's style** — principle-first thinking, design thinking, platform strategy, and culture-as-communication.

Works in **any coding agent** (Cursor, Claude Code, Cline, Copilot, Amp, Windsurf, …) and in **any project**. Install once; use everywhere.

## Install (all agents)

```bash
curl -fsSL https://raw.githubusercontent.com/Farenhid/seyed-product-advisor/main/scripts/install.sh | bash
```

This clones the repo once to `~/.local/share/seyed-product-advisor` and symlinks it into every supported agent's skills directory:

| Agent | Global path |
|-------|-------------|
| Cursor | `~/.cursor/skills/seyed-product-advisor` |
| Claude Code | `~/.claude/skills/seyed-product-advisor` |
| Cline | `~/.cline/skills/seyed-product-advisor` |
| GitHub Copilot | `~/.copilot/skills/seyed-product-advisor` |
| Amp / generic | `~/.agents/skills/seyed-product-advisor` |

### Team / project install

Share the skill with your repo (committed symlinks):

```bash
cd your-project
bash /path/to/seyed-product-advisor/scripts/install.sh --project
```

Creates symlinks under `.github/skills/`, `.claude/skills/`, `.cline/skills/`, `.cursor/skills/`, `.agents/skills/`.

### Manual install

Clone once, symlink yourself:

```bash
git clone https://github.com/Farenhid/seyed-product-advisor.git ~/.local/share/seyed-product-advisor
ln -sfn ~/.local/share/seyed-product-advisor ~/.claude/skills/seyed-product-advisor
# repeat for other agents as needed
```

## Optional: project brief

For better reviews, copy the brief template into your product project:

```bash
cp ~/.local/share/seyed-product-advisor/templates/project-brief.md .seyed-brief.md
# Edit .seyed-brief.md with your product context
```

The agent reads `.seyed-brief.md` (or legacy `.cursor/seyed-brief.md`) **before** giving advice.

## Usage

Open **any project** in your coding agent and ask in chat:

**English**
- "Review my product using seyed-product-advisor"
- "Should we build a referral program? Run feature gate first"
- "What would Seyed say about our platform strategy?"
- "Critique this pitch before my investor meeting"

**فارسی** — نمونه پرامپت‌های باز در [workflows/examples.md](workflows/examples.md):
- «اگر سید بود چی می‌گفت؟» — فیچر، JTBD، رقابت/شریک
- بدون فریمورک از پیش تعیین‌شده؛ ایجنت خودش جلسه مناسب رو پیدا می‌کنه

## How it works (same in every agent)

1. **Agent discovers the skill** — reads `name` + `description` from `SKILL.md` frontmatter at startup
2. **You ask a product question** — agent activates the skill when your prompt matches
3. **Project scan** — reads your README, structure, optional `.seyed-brief.md`
4. **Knowledge load** — `principles.md` first, then 2–4 relevant chapters from the index in `SKILL.md`
5. **Answer** — plain language, founder-focused, with **Principles Lens**, **Founder Mirror**, **Session Sources**

No API, no server, no vector DB. The agent reads markdown files on demand — same behavior everywhere.

### Modes

| Mode | Use case |
|------|----------|
| Project review | Critique product, pitch, or strategy |
| Feature gate | Approve/defer/rethink before coding a feature |

See [workflows/](workflows/) for protocols. **Copy-ready prompts:** [workflows/examples.md](workflows/examples.md).

## Contents

| File | Purpose |
|------|---------|
| `SKILL.md` | Entry point — frameworks, topic index, chapter index |
| `principles.md` | Foundational principles (read first by agent) |
| `chapters/` | 95 session distillations (loaded on demand) |
| `glossary.md` | Key terms |
| `patterns.md` | Techniques and patterns |
| `cheatsheet.md` | Decision rules |
| `templates/project-brief.md` | Per-project context template |
| `workflows/voice.md` | Response style + mandatory closings |
| `workflows/examples.md` | Open copy-ready prompts (EN + FA) |

## Validate

```bash
python3 tools/validate_skill.py SKILL.md              # Claude Code lens (default)
python3 tools/validate_skill.py --lens copilot SKILL.md
python3 tools/validate_skill.py --lens amp SKILL.md
```

## Attribution

Frameworks are **distilled** from Seyed's public *Strategy is Culture* session series. This is an independent community skill — not an official product or endorsement.

Content is synthesized notes, not raw transcripts.

## License

MIT — see [LICENSE](LICENSE).
