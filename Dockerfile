FROM node
RUN mkdir /app
WORKDIR /app
COPY package.json /app
RUN yarn install
RUN yarn upgrade caniuse-lite browserslist

COPY . /app
RUN yarn test
RUN yarn build

CMD yarn start

EXPOSE 3000
