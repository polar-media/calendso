FROM node:12-alpine

WORKDIR /usr/src/app

COPY prisma package.json yarn.lock ./

RUN yarn

COPY . .

RUN yarn build

CMD yarn start
