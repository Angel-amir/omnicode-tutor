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

# 2. Download and extract ONLY the skill folder
echo "📥 Downloading skill files (ignoring the rest of the repository)..."
curl -sSL "$TARBALL_URL" | tar -xz --strip-components=3 -C "$SKILL_DEST" --wildcards "*/skills/omnicode-tutor"

echo ""
echo "🧩 Checking required dependencies..."
DIAGRAM_DEST="$SKILLS_DIR/diagram-design"
if [ ! -d "$DIAGRAM_DEST" ]; then
    echo "📥 Installing required dependency: diagram-design..."
    mkdir -p "$DIAGRAM_DEST"
    curl -sSL "https://github.com/cathrynlavery/diagram-design/tarball/main" | tar -xz --strip-components=3 -C "$DIAGRAM_DEST" --wildcards "*/skills/diagram-design"
else
    echo "✅ diagram-design is already installed."
fi

echo ""
echo "✅ Pure skill successfully installed at $SKILL_DEST!"
echo "No git history or development folders were downloaded."
echo "Try telling your agent: 'Start the tutor' or 'Let's study'."
