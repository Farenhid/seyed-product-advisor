# Seyed Product Advisor

A [Cursor Agent Skill](https://cursor.com/docs/agent/skills) that gives **product and strategy advice in Seyed's style** — principle-first thinking, design thinking, platform strategy, and culture-as-communication.

Works in **any project**. Install once; use everywhere.

## Install

```bash
git clone https://github.com/Farenhid/seyed-product-advisor.git ~/.cursor/skills/seyed-product-advisor
```

Or use the install script:

```bash
curl -fsSL https://raw.githubusercontent.com/Farenhid/seyed-product-advisor/main/scripts/install.sh | bash
```

## Optional: project brief

For better reviews, copy the brief template into your project:

```bash
mkdir -p .cursor
cp ~/.cursor/skills/seyed-product-advisor/templates/project-brief.md .cursor/seyed-brief.md
# Edit .cursor/seyed-brief.md with your product context
```

The agent reads this **before** giving advice.

## Usage

Open any project in Cursor and ask:

**English**
- "Review my product using seyed-product-advisor"
- "Should we build a referral program? Run feature gate first"
- "What would Seyed say about our platform strategy?"
- "Critique this pitch before my investor meeting"

**فارسی**
- "پروژه‌ام رو با seyed-product-advisor نقد کن"
- "قبل از ساخت این فیچر نظر بده"
- "از دید سید بگو باید رقابت کنیم یا شریک بشیم"

## What the agent does

1. **Scans your project** — README, structure, optional `seyed-brief.md`
2. **Loads relevant frameworks** — from 95 distilled session chapters
3. **Responds** with named frameworks, verdict, and chapter references

### Modes

| Mode | Use case |
|------|----------|
| Project review | Critique product, pitch, or strategy |
| Feature gate | Approve/defer/rethink before coding a feature |

See [workflows/](workflows/) for full protocols.

## Contents

| File | Purpose |
|------|---------|
| `SKILL.md` | Core frameworks + chapter index |
| `chapters/` | 95 session distillations (loaded on demand) |
| `glossary.md` | Key terms |
| `patterns.md` | Techniques and patterns |
| `cheatsheet.md` | Decision rules |
| `templates/project-brief.md` | Per-project context template |

## Attribution

Frameworks are **distilled** from Seyed's public *Strategy is Culture* session series. This is an independent community skill — not an official product or endorsement.

Content is synthesized notes, not raw transcripts.

## Validate

```bash
python3 tools/validate_skill.py SKILL.md
```

## License

MIT — see [LICENSE](LICENSE).
