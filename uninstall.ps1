Write-Host "🗑️ Đang gỡ cài đặt MB Workspace..." -ForegroundColor Cyan

$InstallDir = if ($env:MB_WORKSPACE_HOME) { $env:MB_WORKSPACE_HOME } else { "$env:USERPROFILE\.mb-workspace" }
$BinDir = "$InstallDir\mb-tools"

if (Test-Path $InstallDir) {
    Remove-Item $InstallDir -Recurse -Force
    Write-Host "✅ Đã xóa toàn bộ thư mục gốc: $InstallDir" -ForegroundColor Green
} else {
    Write-Host "⚠️ Không tìm thấy thư mục cài đặt tại: $InstallDir" -ForegroundColor Yellow
}

# Xóa biến môi trường MB_WORKSPACE_HOME
if ([Environment]::GetEnvironmentVariable("MB_WORKSPACE_HOME", "User")) {
    [Environment]::SetEnvironmentVariable("MB_WORKSPACE_HOME", $null, "User")
    Write-Host "✅ Đã xóa biến môi trường MB_WORKSPACE_HOME" -ForegroundColor Green
}

# Gỡ bỏ đường dẫn mb-tools ra khỏi biến PATH của Windows
$currentPath = [Environment]::GetEnvironmentVariable("Path", "User")
if ($currentPath -match [regex]::Escape($BinDir)) {
    # Lọc bỏ cục path của mb-tools ra khỏi chuỗi PATH
    $newPath = ($currentPath -split ';' | Where-Object { $_ -ne $BinDir -and $_ -ne "" }) -join ';'
    [Environment]::SetEnvironmentVariable("Path", $newPath, "User")
    Write-Host "✅ Đã dọn dẹp sạch sẽ đường dẫn trong biến PATH" -ForegroundColor Green
}

Write-Host ""
Write-Host "🎉 MB Workspace đã được gỡ cài đặt hoàn toàn!" -ForegroundColor Green
Write-Host "👉 Vui lòng khởi động lại CMD/PowerShell hiện tại để áp dụng." -ForegroundColor Yellow
