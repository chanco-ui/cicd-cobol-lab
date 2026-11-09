# CI/CD × COBOL 面接対策ラボ

## 起動
docker build -t cobol-lab .
docker run --rm -it -v "$PWD":/work cobol-lab bash

## コンテナ内で
./scripts/build.sh          # COBOLビルド → dist/
./dist/CUSTPRT              # 実行
./scripts/impact.sh CUSTREC # copybook変更の影響範囲
./scripts/build-java.sh     # Javaビルド → dist/app.jar

src/cobol/JPMSG.cbl は Shift_JIS＋CRLF のサンプルです。
