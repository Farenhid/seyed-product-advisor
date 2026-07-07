#!/usr/bin/env bash
# Install seyed-product-advisor as a personal Cursor skill
set -euo pipefail

SKILL_NAME="seyed-product-advisor"
TARGET="${CURSOR_SKILLS_DIR:-$HOME/.cursor/skills}/$SKILL_NAME"
REPO_URL="${REPO_URL:-https://github.com/Farenhid/seyed-product-advisor.git}"

if [ -d "$TARGET/.git" ]; then
  echo "Updating existing install at $TARGET"
  git -C "$TARGET" pull --ff-only
elif [ -d "$TARGET" ]; then
  echo "Error: $TARGET exists but is not a git repo. Remove it first or pick another path."
  exit 1
else
  mkdir -p "$(dirname "$TARGET")"
  echo "Cloning to $TARGET"
  git clone "$REPO_URL" "$TARGET"
fi

echo ""
echo "Installed: $TARGET"
echo ""
echo "Optional — add product context to any project:"
echo "  cp $TARGET/templates/project-brief.md YOUR_PROJECT/.cursor/seyed-brief.md"
echo ""
echo "Example prompts:"
echo '  "Review my product using seyed-product-advisor"'
echo '  "Should we build [feature]? Run feature gate first"'
echo '  "نظر سید رو درباره این استارتاپ بگو"'
