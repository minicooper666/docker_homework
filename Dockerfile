FROM node:14
WORKDIR /app
COPY frontend/package*.json .
RUN npm install && npm install -g serve

COPY frontend ./

RUN npm run build

EXPOSE 3000

CMD ["serve", "build"]