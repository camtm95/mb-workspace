#!/usr/bin/env bash
set -e

GREEN="\033[1;32m"
CYAN="\033[1;36m"
YELLOW="\033[1;33m"
RESET="\033[0m"

echo "🗑️  Đang gỡ cài đặt MB Workspace..."

INSTALL_DIR="${MB_WORKSPACE_HOME:-$HOME/.mb-workspace}"

if [ -d "$INSTALL_DIR" ]; then
    rm -rf "$INSTALL_DIR"
    echo "✅ Đã xóa toàn bộ thư mục gốc: $INSTALL_DIR"
else
    echo "⚠️  Không tìm thấy thư mục cài đặt tại: $INSTALL_DIR"
fi

# Hàm tìm file profile giống như lúc install
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

if [ -f "$PROFILE_FILE" ]; then
    # Xó block cấu hình PATH trong file
    if grep -q '# >>> mb-workspace >>>' "$PROFILE_FILE"; then
        sed -i.bak '/# >>> mb-workspace >>>/,/# <<< mb-workspace <<</d' "$PROFILE_FILE"
        rm -f "$PROFILE_FILE.bak"
        echo "✅ Đã dọn dẹp các biến môi trường trong file: $PROFILE_FILE"
    fi
fi

echo -e "\n${GREEN}🎉 MB Workspace đã được gỡ cài đặt hoàn toàn!${RESET}"
echo -e "${YELLOW}👉 Vui lòng khởi động lại Terminal hoặc gõ lệnh: source \"$PROFILE_FILE\" để áp dụng.${RESET}"
