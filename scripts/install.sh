#!/usr/bin/env bash
# Install seyed-product-advisor for all Agent-Skills-compatible coding agents.
# Standard: https://agentskills.io
set -euo pipefail

SKILL_NAME="seyed-product-advisor"
REPO_URL="${REPO_URL:-https://github.com/Farenhid/seyed-product-advisor.git}"
INSTALL_ROOT="${SEYED_ADVISOR_HOME:-$HOME/.local/share}/seyed-product-advisor"

MODE="global"
PROJECT_DIR="."

usage() {
  cat <<'EOF'
Install seyed-product-advisor for Cursor, Claude Code, Cline, Copilot, Amp, and more.

Usage:
  install.sh              Install globally (personal skills, all agents)
  install.sh --project    Install into current repo (team-shared)
  install.sh --project /path/to/repo

Environment:
  SEYED_ADVISOR_HOME   Clone location (default: ~/.local/share/seyed-product-advisor)
  REPO_URL             Git remote (default: GitHub repo)

After install, add product context to any project:
  cp ~/.local/share/seyed-product-advisor/templates/project-brief.md .seyed-brief.md
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --project)
      MODE="project"
      shift
      if [[ $# -gt 0 && "$1" != --* ]]; then
        PROJECT_DIR="$1"
        shift
      fi
      ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Unknown option: $1"; usage; exit 1 ;;
  esac
done

install_or_update() {
  if [[ -d "$INSTALL_ROOT/.git" ]]; then
    echo "Updating $INSTALL_ROOT"
    git -C "$INSTALL_ROOT" pull --ff-only
  elif [[ -d "$INSTALL_ROOT" ]]; then
    echo "Error: $INSTALL_ROOT exists but is not a git repo. Remove it or set SEYED_ADVISOR_HOME."
    exit 1
  else
    mkdir -p "$(dirname "$INSTALL_ROOT")"
    echo "Cloning to $INSTALL_ROOT"
    git clone "$REPO_URL" "$INSTALL_ROOT"
  fi
}

link_skill() {
  local target_dir="$1"
  mkdir -p "$target_dir"
  local link="$target_dir/$SKILL_NAME"
  if [[ -e "$link" && ! -L "$link" ]]; then
    echo "  SKIP $link (exists, not a symlink)"
    return
  fi
  ln -sfn "$INSTALL_ROOT" "$link"
  echo "  ✓ $link"
}

GLOBAL_DIRS=(
  "$HOME/.cursor/skills"
  "$HOME/.claude/skills"
  "$HOME/.copilot/skills"
  "$HOME/.agents/skills"
  "$HOME/.cline/skills"
)

PROJECT_DIRS=(
  ".github/skills"
  ".claude/skills"
  ".agents/skills"
  ".cline/skills"
  ".cursor/skills"
)

install_or_update

echo ""
if [[ "$MODE" == "global" ]]; then
  echo "Linking skill for all agents (global):"
  for dir in "${GLOBAL_DIRS[@]}"; do
    link_skill "$dir"
  done
else
  PROJECT_DIR="$(cd "$PROJECT_DIR" && pwd)"
  echo "Linking skill for all agents (project: $PROJECT_DIR):"
  for rel in "${PROJECT_DIRS[@]}"; do
    link_skill "$PROJECT_DIR/$rel"
  done
fi

echo ""
echo "Source:  $INSTALL_ROOT"
echo ""
echo "Optional — add product context to your project:"
echo "  cp $INSTALL_ROOT/templates/project-brief.md YOUR_PROJECT/.seyed-brief.md"
echo ""
echo "Example prompts (any agent):"
echo '  "Review my product using seyed-product-advisor"'
echo '  "Should we build [feature]? Run feature gate first"'
echo '  "اگر سید بود چی می‌گفت؟"'
