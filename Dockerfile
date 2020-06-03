FROM node:11.9-alpine
RUN apk update && apk add bash curl jq grep
WORKDIR /usr/src/conduit-frontend
COPY package.json package-lock.json ./
RUN npm install
COPY . .
CMD ["npm","start"]