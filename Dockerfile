FROM node:14-alpine3.14

LABEL maintainer="Ramon Paolo Maran"

WORKDIR /app

EXPOSE 3000

COPY package.json .

RUN yarn install

COPY . .

RUN yarn build

CMD ["yarn", "start"]