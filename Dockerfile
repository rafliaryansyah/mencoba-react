FROM node:18-alpine
ENV NODE_ENV development
WORKDIR /app
COPY package.json .
COPY yarn.lock .
RUN yarn install
COPY . .
EXPOSE 3001
CMD [ "yarn", "start" ]