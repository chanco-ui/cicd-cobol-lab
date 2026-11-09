# ローカル学習用：GnuCOBOL + Java + Git の環境
FROM ubuntu:24.04
RUN apt-get update && apt-get install -y gnucobol3 openjdk-17-jdk-headless git \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /work
