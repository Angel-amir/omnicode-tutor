#!/usr/bin/env bash

# Omnicode Tutor - Pure Installation (Skill Only)
# This script downloads ONLY the skill folder, without cloning the full repository.

set -e

SKILLS_DIR="$HOME/.gemini/config/skills"
SKILL_DEST="$SKILLS_DIR/omnicode-tutor"
TARBALL_URL="https://github.com/Angel-amir/omnicode-tutor/tarball/main"

echo "🎓 Starting pure installation of Omnicode Tutor..."

# 1. Ensure the skills folder exists
mkdir -p "$SKILL_DEST"

# 2. Download and extract safely (Cross-platform for Linux and macOS/bsdtar)
echo "📥 Downloading skill files..."
TMP_DIR=$(mktemp -d)
curl -sSL "$TARBALL_URL" | tar -xz -C "$TMP_DIR"
REPO_DIR=$(find "$TMP_DIR" -mindepth 1 -maxdepth 1 -type d | head -n 1)

# Move the specific skill folder content
cp -R "$REPO_DIR/skills/omnicode-tutor/"* "$SKILL_DEST/"
rm -rf "$TMP_DIR"

echo ""
echo "🧩 Checking required dependencies..."
DIAGRAM_DEST="$SKILLS_DIR/diagram-design"
if [ ! -d "$DIAGRAM_DEST" ]; then
    echo "📥 Installing required dependency: diagram-design..."
    mkdir -p "$DIAGRAM_DEST"
    TMP_DIAGRAM=$(mktemp -d)
    curl -sSL "https://github.com/cathrynlavery/diagram-design/tarball/main" | tar -xz -C "$TMP_DIAGRAM"
    DIAGRAM_REPO_DIR=$(find "$TMP_DIAGRAM" -mindepth 1 -maxdepth 1 -type d | head -n 1)
    cp -R "$DIAGRAM_REPO_DIR/skills/diagram-design/"* "$DIAGRAM_DEST/"
    rm -rf "$TMP_DIAGRAM"
else
    echo "✅ diagram-design is already installed."
fi

echo ""
echo "✅ Pure skill successfully installed at $SKILL_DEST!"
echo "No git history or development folders were downloaded."
echo "Try telling your agent: 'Start the tutor' or 'Let's study'."
