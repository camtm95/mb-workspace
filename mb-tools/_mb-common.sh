#!/usr/bin/env bash

mb_script_dir() {
  cd "$(dirname "${BASH_SOURCE[0]}")" && pwd
}

mb_workspace() {
  local script_dir
  script_dir="$(mb_script_dir)"
  if [ -n "${MB_WORKSPACE_HOME:-}" ]; then
    printf '%s\n' "$MB_WORKSPACE_HOME"
  else
    cd "$script_dir/.." && pwd
  fi
}

mb_projects_dir() {
  printf '%s/projects\n' "$(mb_workspace)"
}

mb_state_dir() {
  printf '%s/.projects\n' "$(mb_workspace)"
}

mb_submitted_file() {
  printf '%s/.mb_submitted\n' "$(mb_state_dir)"
}

mb_repo_root() {
  git rev-parse --show-toplevel 2>/dev/null
}
