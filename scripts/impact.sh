#!/bin/bash
# 使い方: scripts/impact.sh CUSTREC
# 指定したcopybookを COPY しているプログラム（＝再ビルド・再テスト対象）を表示
set -euo pipefail
grep -l -i -E "^.{6} +COPY +$1[ .]" src/cobol/*.cbl || echo "(影響なし)"
