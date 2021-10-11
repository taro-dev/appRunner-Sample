FROM node:12

# アプリケーションディレクトリを作成する
WORKDIR /usr/src/app

# アプリケーションの依存関係をインストールする
COPY package*.json ./

RUN yarn install

# アプリケーションのソースをバンドルする
COPY . .

# 起動
CMD ["yarn", "start"]
