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

# Tự động tạo các file .cmd wrapper cho CMD/PowerShell trên Windows
Write-Host "Configuring Windows command wrappers..."
$tools = Get-ChildItem -Path $BinDir -File | Where-Object { $_.Extension -eq "" }
foreach ($tool in $tools) {
    $cmdFile = "$($tool.FullName).cmd"
    $cmdContent = "@ECHO OFF`r`nset `"SCRIPT_DIR=%~dp0`"`r`nset `"SCRIPT_DIR=%SCRIPT_DIR:\=/%`"`r`nbash `"%SCRIPT_DIR%$($tool.Name)`" %*"
    Set-Content -Path $cmdFile -Value $cmdContent -Encoding ASCII
}

[Environment]::SetEnvironmentVariable("MB_WORKSPACE_HOME", $InstallDir, "User")

$currentPath = [Environment]::GetEnvironmentVariable("Path", "User")
if ($currentPath -notlike "*$BinDir*") {
    [Environment]::SetEnvironmentVariable("Path", "$currentPath;$BinDir", "User")
}

Write-Host ""
Write-Host "✅ MB Workspace installed successfully!" -ForegroundColor Green
Write-Host "---------------------------------------------" -ForegroundColor Cyan
Write-Host "🚀 Tool will start automatically in a moment..."
Write-Host "---------------------------------------------" -ForegroundColor Cyan
Write-Host "👉 Để dùng ngay và truy cập thư mục gốc, hãy chạy lệnh sau:"
Write-Host "   cd `"$InstallDir`"; mb-ui" -ForegroundColor Yellow
Write-Host "   (Hoặc chỉ cần mở lại Terminal)"
Write-Host ""
