FROM node:12.13-alpine

WORKDIR /app

ADD package.json /app/package.json
ADD package-lock.json /app/package-lock.json
RUN npm config set registry http://registry.npmjs.org

RUN npm install

ADD index.js /app/index.js

EXPOSE 8080

CMD ["npm", "run", "start"]