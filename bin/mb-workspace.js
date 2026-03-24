#!/usr/bin/env node

const { spawnSync } = require('child_process');
const path = require('path');

const isWindows = process.platform === 'win32';

function run(cmd, args) {
  const result = spawnSync(cmd, args, {
    stdio: 'inherit',
    shell: false,
  });

  if (result.error) {
    console.error('Failed to run:', cmd, result.error.message);
    process.exit(1);
  }

  if (typeof result.status === 'number' && result.status !== 0) {
    process.exit(result.status);
  }
}

if (isWindows) {
  run('powershell', [
    '-NoProfile',
    '-ExecutionPolicy',
    'Bypass',
    '-Command',
    'irm https://raw.githubusercontent.com/camtm95/mb-workspace/main/install.ps1 | iex'
  ]);
} else {
  run('bash', [
    '-lc',
    'curl -fsSL https://raw.githubusercontent.com/camtm95/mb-workspace/main/install.sh | bash'
  ]);
}

// After install, try to run mb-ui immediately
const home = process.env.MB_WORKSPACE_HOME || (isWindows 
  ? path.join(process.env.USERPROFILE, '.mb-workspace') 
  : path.join(process.env.HOME, '.mb-workspace'));

const mbUi = path.join(home, 'mb-tools', 'mb-ui');

if (require('fs').existsSync(mbUi)) {
  console.log('\n🚀 Opening MB Workspace...');
  if (isWindows) {
    const mbUiCmd = mbUi + '.cmd';
    if (require('fs').existsSync(mbUiCmd)) {
      run('cmd.exe', ['/c', mbUiCmd]);
    } else {
      // Fallback nếu vì lý do nào đó .cmd chưa được tạo
      run('bash', [mbUi.replace(/\\/g, '/')]);
    }
  } else {
    run(mbUi, []);
  }
}
