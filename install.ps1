# Marrow 🦴 Installer
# "AI talk surface. Marrow go deep."

Write-Host "🦴 Marrow Installer" -ForegroundColor Cyan
Write-Host "-------------------"

# 1. Create Marrow directory and download skill
New-Item -ItemType Directory -Force -Path ".marrow" | Out-Null

if (Test-Path "skills/marrow/SKILL.md") {
    Copy-Item "skills/marrow/SKILL.md" ".marrow/Marrow.md" -Force
    Write-Host "✅ Skill found locally and copied to .marrow/"
} else {
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/CodePandaaAI/marrow/main/skills/marrow/SKILL.md" -OutFile ".marrow/Marrow.md"
    Write-Host "✅ Skill downloaded from GitHub to .marrow/"
}

# 2. Link to IDEs
# Cursor
if (Test-Path ".cursor/rules") {
    Copy-Item ".marrow/Marrow.md" ".cursor/rules/marrow.mdc" -Force
    Write-Host "✅ Added to Cursor rules."
} elseif (Test-Path ".cursor") {
    New-Item -ItemType Directory -Force -Path ".cursor/rules" | Out-Null
    Copy-Item ".marrow/Marrow.md" ".cursor/rules/marrow.mdc" -Force
    Write-Host "✅ Created .cursor/rules and added Marrow."
}

# Windsurf
if (Test-Path ".windsurf/rules") {
    Copy-Item ".marrow/Marrow.md" ".windsurf/rules/marrow.md" -Force
    Write-Host "✅ Added to Windsurf rules."
}

# Cline / Roo
if (Test-Path ".clinerules") {
    Copy-Item ".marrow/Marrow.md" ".clinerules/marrow.md" -Force
    Write-Host "✅ Added to Cline rules."
}

# Antigravity (Generic)
Copy-Item ".marrow/Marrow.md" ".marrow.md" -Force
Write-Host "✅ Marrow ready. Use .marrow.md content to start deep learning."
