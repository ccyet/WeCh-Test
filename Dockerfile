FROM node:18-alpine


ENV DB_TYPE=json 

WORKDIR /app

COPY index.js ./
COPY package*.json ./
RUN npm install

EXPOSE 9000

CMD ["node", "index.js"]
