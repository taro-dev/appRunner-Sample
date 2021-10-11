FROM node:12

# アプリケーションディレクトリを作成する
WORKDIR /usr/src/app

# アプリケーションの依存関係をインストールする
COPY package*.json ./

# アプリケーションのソースをバンドルする
COPY . .

RUN yarn install
RUN yarn build

ENV HOST 0.0.0.0
EXPOSE 3000

# 起動
CMD ["yarn", "start"]
