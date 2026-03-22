#!/usr/bin/env node

const { spawnSync } = require('child_process');

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
    'irm https://raw.githubusercontent.com/<YOUR_USER>/<YOUR_REPO>/main/install.ps1 | iex'
  ]);
} else {
  run('bash', [
    '-lc',
    'curl -fsSL https://raw.githubusercontent.com/<YOUR_USER>/<YOUR_REPO>/main/install.sh | bash'
  ]);
}
