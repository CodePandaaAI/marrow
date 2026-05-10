#!/bin/bash
# Marrow 🦴 Installer
# "AI talk surface. Marrow go deep."

set -e

# Logo (Simple ASCII or just the emoji)
echo "🦴 Marrow Installer"
echo "-------------------"

# 1. Create Marrow directory and download skill
# We use the current directory's skill file if available, otherwise download from GitHub
if [ -f "skills/marrow/SKILL.md" ]; then
    mkdir -p .marrow
    cp "skills/marrow/SKILL.md" .marrow/Marrow.md
    echo "✅ Skill found locally and copied to .marrow/"
else
    mkdir -p .marrow
    curl -s https://raw.githubusercontent.com/CodePandaaAI/deep-learn/main/skills/marrow/SKILL.md -o .marrow/Marrow.md
    echo "✅ Skill downloaded from GitHub to .marrow/"
fi

# 2. Link to IDEs
# Detect common folders and drop the rule file

# Cursor
if [ -d ".cursor/rules" ]; then
    cp .marrow/Marrow.md .cursor/rules/marrow.mdc
    echo "✅ Added to Cursor rules."
elif [ -d ".cursor" ]; then
    mkdir -p .cursor/rules
    cp .marrow/Marrow.md .cursor/rules/marrow.mdc
    echo "✅ Created .cursor/rules and added Marrow."
fi

# Windsurf
if [ -d ".windsurf/rules" ]; then
    cp .marrow/Marrow.md .windsurf/rules/marrow.md
    echo "✅ Added to Windsurf rules."
fi

# Cline / Roo
if [ -d ".clinerules" ]; then
    cp .marrow/Marrow.md .clinerules/marrow.md
    echo "✅ Added to Cline rules."
fi

# Antigravity (Generic)
cp .marrow/Marrow.md .marrow.md
echo "✅ Marrow ready. Use .marrow.md content to start deep learning."
