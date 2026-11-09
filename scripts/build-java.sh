#!/bin/bash
# Javaをコンパイルして dist/app.jar を作る
set -euo pipefail
mkdir -p dist build/java
javac -d build/java src/java/*.java
jar cfe dist/app.jar Hello -C build/java .
