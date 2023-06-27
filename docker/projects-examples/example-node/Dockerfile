FROM node:14.21.0-alpine

WORKDIR /usr/app

COPY package.json ./
COPY . .

RUN npm run build

EXPOSE 3000

RUN apk add --no-cache bash

CMD ["npm", "run", "start"]

# docker build -t example/node .  --CRIA IMAGEM
# docker run --name container -p 3000:3000 example/node   --RODANDO CONTAINER