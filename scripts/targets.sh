#!/bin/bash
# Gitの差分から、ビルド・テストが必要なCOBOLプログラムを一覧にする
set -euo pipefail
for f in $(git diff --name-only HEAD); do
  case "$f" in
    src/copy/*.cpy)  ./scripts/impact.sh "$(basename "$f" .cpy)" ;;  # copybook変更 → 使っている全プログラム
    src/cobol/*.cbl) echo "$f" ;;                                     # プログラム変更 → そのプログラム
  esac
done | sort -u
