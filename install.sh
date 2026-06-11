#!/bin/bash
# Marrow installer
# Find the explanation that clicks.

set -e

REPO="CodePandaaAI/marrow"

echo "Marrow Installer"
echo "----------------"

# Primary: use npx skills, the standard installation path.
if command -v npx &> /dev/null; then
    echo "Installing via npx skills..."
    npx -y skills add "$REPO"
    echo "Marrow installed successfully!"
else
    # Fallback: install the skill into common project-level skill directories.
    echo "npx not found. Falling back to manual install..."

    RAW="https://raw.githubusercontent.com/$REPO/main/skills/marrow/SKILL.md"

    # Universal skill path used by Codex, Cursor, Cline, Gemini CLI, and others.
    mkdir -p .agents/skills/marrow
    curl -fsSL "$RAW" -o .agents/skills/marrow/SKILL.md
    echo "Added to .agents/skills/marrow."

    # Windsurf
    if [ -d "$HOME/.windsurf" ] || [ -d "$HOME/.codeium/windsurf" ]; then
        mkdir -p .windsurf/skills/marrow
        curl -fsSL "$RAW" -o .windsurf/skills/marrow/SKILL.md
        echo "Added to .windsurf/skills/marrow."
    fi

    echo "Done. For best results, install Node.js and run: npx skills add $REPO"
fi
