FROM node:20-bullseye

# 必要ツール（gitは将来CIと合わせる時にも便利）
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# CDKをコンテナにインストール
RUN npm i -g aws-cdk

WORKDIR /work