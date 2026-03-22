#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/<YOUR_USER>/<YOUR_REPO>.git"
INSTALL_DIR="${MB_WORKSPACE_HOME:-$HOME/.mb-workspace}"
BIN_DIR="$INSTALL_DIR/mb-tools"

detect_profile() {
  if [ -n "${ZSH_VERSION:-}" ]; then
    echo "$HOME/.zshrc"
  elif [ -n "${BASH_VERSION:-}" ]; then
    if [ -f "$HOME/.bashrc" ]; then
      echo "$HOME/.bashrc"
    else
      echo "$HOME/.bash_profile"
    fi
  else
    echo "$HOME/.profile"
  fi
}

PROFILE_FILE="$(detect_profile)"

echo "🚀 Installing MB Workspace..."
echo "📁 Install dir: $INSTALL_DIR"

command -v git >/dev/null 2>&1 || {
  echo "❌ Git chưa được cài."
  exit 1
}

mkdir -p "$INSTALL_DIR"

if [ -d "$INSTALL_DIR/.git" ]; then
  echo "🔄 Existing install found, updating..."
  git -C "$INSTALL_DIR" pull --ff-only
else
  echo "📦 Cloning repository..."
  rm -rf "$INSTALL_DIR"
  git clone "$REPO_URL" "$INSTALL_DIR"
fi

mkdir -p "$INSTALL_DIR/projects" "$INSTALL_DIR/.projects"
chmod +x "$BIN_DIR"/*

touch "$PROFILE_FILE"

if ! grep -q 'MB_WORKSPACE_HOME=' "$PROFILE_FILE" 2>/dev/null; then
  {
    echo ''
    echo '# >>> mb-workspace >>>'
    echo "export MB_WORKSPACE_HOME=\"$INSTALL_DIR\""
    echo 'export PATH="$MB_WORKSPACE_HOME/mb-tools:$PATH"'
    echo '# <<< mb-workspace <<<'
  } >> "$PROFILE_FILE"
fi

export MB_WORKSPACE_HOME="$INSTALL_DIR"
export PATH="$MB_WORKSPACE_HOME/mb-tools:$PATH"

echo ""
echo "✅ MB Workspace installed."
echo "👉 Run this once:"
echo "source \"$PROFILE_FILE\""
echo ""
echo "👉 Then run:"
echo "mb-ui"
