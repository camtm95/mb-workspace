$RepoUrl = "https://github.com/camtm95/mb-workspace.git"
$InstallDir = if ($env:MB_WORKSPACE_HOME) { $env:MB_WORKSPACE_HOME } else { "$env:USERPROFILE\.mb-workspace" }
$BinDir = "$InstallDir\mb-tools"

Write-Host "Installing MB Workspace..."

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "Git is required."
    exit 1
}

if (Test-Path "$InstallDir\.git") {
    git -C $InstallDir pull --ff-only
} else {
    if (Test-Path $InstallDir) { Remove-Item $InstallDir -Recurse -Force }
    git clone $RepoUrl $InstallDir
}

New-Item -ItemType Directory -Force -Path "$InstallDir\projects" | Out-Null
New-Item -ItemType Directory -Force -Path "$InstallDir\.projects" | Out-Null

[Environment]::SetEnvironmentVariable("MB_WORKSPACE_HOME", $InstallDir, "User")

$currentPath = [Environment]::GetEnvironmentVariable("Path", "User")
if ($currentPath -notlike "*$BinDir*") {
    [Environment]::SetEnvironmentVariable("Path", "$currentPath;$BinDir", "User")
}

Write-Host "Installed. Reopen terminal, then run: mb-ui"
