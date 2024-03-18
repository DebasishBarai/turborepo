FROM node:21-alpine

WORKDIR /usr/app

RUN npm install -g typescript

COPY *package*.json .

RUN npm install

COPY . .

RUN cd apps/web && npm install

RUN cd apps/backend && npm install

RUN npm run build

EXPOSE 3000

EXPOSE 3001

CMD ["npm", "run", "start"]
