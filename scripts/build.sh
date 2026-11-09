#!/bin/bash
# src/cobol 配下の全プログラムをビルドして dist/ に出力
set -euo pipefail
mkdir -p dist
for f in src/cobol/*.cbl; do
  name=$(basename "$f" .cbl)
  echo "== build $name"
  cobc -x -I src/copy -o "dist/$name" "$f"
done
