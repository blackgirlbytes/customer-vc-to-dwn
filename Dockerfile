FROM node:20.5-buster

ARG COMMIT_HASH
ENV COMMIT_HASH=${COMMIT_HASH}

WORKDIR /customer-vc-to-dwn

COPY package.json ./
RUN npm install

COPY tsconfig.json ./
COPY .
RUN npm install

EXPOSE 5001

CMD [ "npm", "run", "server" ]