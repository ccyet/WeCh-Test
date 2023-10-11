FROM node:18-alpine


ENV DB_TYPE=json 

WORKDIR /app

# 声明环境变量，这样容器就可以在运行时访问它们
ENV MP_APPID= 
ENV MP_APPSECRET= 
ENV MP_TOKEN= 
ENV DEFAULT_API_URL=https://oa.api2d.net 
ENV DEFAULT_API_WORD=   
ENV DEFAULT_API_KEY=fk... 
ENV LOCK_API_URL=true 
ENV LOCK_API_KEY=true 
ENV LOCK_MODEL=true 


COPY index.js ./
COPY package*.json ./
RUN npm install

EXPOSE 9000

CMD ["node", "index.js"]
