# Marrow installer
# Find the explanation that clicks.

$ErrorActionPreference = "Stop"

$REPO = "CodePandaaAI/marrow"

Write-Host "Marrow Installer" -ForegroundColor Cyan
Write-Host "----------------"

# Primary: use npx skills, the standard installation path.
if (Get-Command npx -ErrorAction SilentlyContinue) {
    Write-Host "Installing via npx skills..."
    npx -y skills add $REPO
    if ($LASTEXITCODE -ne 0) {
        throw "Marrow installation failed."
    }
    Write-Host "Marrow installed successfully!"
} else {
    # Fallback: install the skill into common project-level skill directories.
    Write-Host "npx not found. Falling back to manual install..."

    $RAW = "https://raw.githubusercontent.com/$REPO/main/skills/marrow/SKILL.md"

    # Universal skill path used by Codex, Cursor, Cline, Gemini CLI, and others.
    New-Item -ItemType Directory -Force -Path ".agents/skills/marrow" | Out-Null
    Invoke-WebRequest -Uri $RAW -OutFile ".agents/skills/marrow/SKILL.md"
    Write-Host "Added to .agents/skills/marrow."

    # Windsurf
    if ((Test-Path "$env:USERPROFILE\.windsurf") -or
        (Test-Path "$env:USERPROFILE\.codeium\windsurf")) {
        New-Item -ItemType Directory -Force -Path ".windsurf/skills/marrow" | Out-Null
        Invoke-WebRequest -Uri $RAW -OutFile ".windsurf/skills/marrow/SKILL.md"
        Write-Host "Added to .windsurf/skills/marrow."
    }

    Write-Host "Done. For best results, install Node.js and run: npx skills add $REPO"
}
