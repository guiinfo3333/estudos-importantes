## 1) docker ps -a Lista quais imagens estão em execução.

## 2) docker images  -Lista quais imagens foram criadas.

## 3) docker build -t <nome_da_imagem> .   --Cria uma imagem no diretorio atual, é preciso ter um dockfile.

## 4) docker run <nome da imagem>  --e Roda a imagem do docker.

## 5 ) docker pull ubuntu  ---- baixa imagem do ubuntu

## 6) docker run -it ubuntu  ---roda de modo interativo (se nao fosse desse jeito quanado rodasse, se nao tivesse interação, a aplicacao para)

## 7) docker exec -it -u andre 4eed9dc8070b bash   -- Logando em outro usuario, dps de "andre" vem o id do container   

## 8) DockerFile

From -- Qual imagem ele vai carregar Linux, Ubuntu, Apphine e qual a plataforma Node, PYTHON?

WORKDIR -- Qual pasta? /app

COPY / ADD ---- copia ou adiciona os arquivos que fazem parte da aplicação para a imagem.

ENV --- configurações do ambiente, o q eu preciso de variaveis de ambiente para a minha aplicação funcionar.
    Ex: ENV API_URL = TESTANDO/URL

EXPOSE -- responsável por liberar a porta.
    Ex: EXPOSE 3000

USER --- quem é o usuario que vai executar a aplicação.

CMD --- Depois que a aplicação está rodando, posso executar comando por ai ou pelo entrypoint
    Ex: CMD ["node", "app.js"]

RUN - instala as dependencias da minha aplicacao
    Ex: RUN apk add --no-cache python2 g++ make  //INSTALANDO Python no linux alphine



## 9) docker build -t app .  ---- apenas constrói a imagem sem copiar a aplicação.

## ) 10) docker run -it app sh  --- roda a imagem no shell


## 11) Criando um usuario  Andre e adicionando ele ao grupo dev
RUN addgroup dev && adduser -S -G andre dev


## 12) Rodando a aplicação em backgroud e fazendo redirecionamento para a porta do computador, o "p" é de mapeamento
    docker run -dp 5000:5000 app

## 13) Colocando o copy package.json primeiro, possibilita q a imagem suba mais rapido, pois ele vai usar os que estão no cache, so ira rodar os outros comando se tiver alteracao no package.json
        FROM node:14.21.0-alpine  
        WORKDIR /app
        # RUN apk add --no-cache python2 g++ make
        COPY package.json .
        RUN npm install
        COPY . .    
        ENV API_URL = TESTANDO/URL
        CMD ["npm" ,"run" ,"dev"]

EXPOSE 5000

## 14) Versiona a imagem, este exemplo criar uma imagem chamada v1.0.0 
    docker build -t app:v1.0.0 .

## 15) Remove imagem
    docker image remove app:v1.0.0

## 16) Renomeia imagem app:latest para app:v1.0.0
    docker image tag app:latest app:v1.0.0
                ou
    docker image tag 1200433404 guiinfo3333/app:v1

## 17) Fazendo upload para o docker hub
    1) docker login
    2) docker push guiinfo3333/app:v1

## 18) Salvando a imagem em um arquivo .tar . No caso ai ele está salvando a imagem app:v1 em um arquivo appv2.tar
    docker image save -o appv2.tar app:v2

## 19) Carrega imagem que eu comprimir
    docker image load -i appv2.tar

    
        


