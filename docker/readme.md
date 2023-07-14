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

## ) 10) docker run -it app sh  --- roda o container no shell
    docker exec -it -u root ab2 sh  -- Roda o container no mod shela


## 11) Criando um usuario  Andre e adicionando ele ao grupo dev
RUN addgroup dev && adduser -S -G andre dev


## 12) Rodando a aplicação em backgroud e fazendo redirecionamento para a porta do computador, o "p" é de mapeamento, o "d" significa background
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

## 20) Nomeando container, a flag --name nomea o container
    docker run -d --name manga app:v2

## 21) Como ver logs no container ?
    docker logs -f <id_do_contaner> 
    docker logs -n 10 2e9  //ultimos 10 logs do container

## 22) Rodando comandos no container
    docker exec <nome_do_container> ls   -- o exec permite executar comando quando o container está em execução, basta saber o nome

## 23) Parando containers
    docker stop <nome_do_container>
    docker start <nome_do_container>
    
## 24) Removendo container
    docker rm <nome_do_container> -f

## 25) Visualizando containers que estão parados 
    docker ps -a

## 26) Criando volumes, é como se fosse um backup, que vincula uma pasta do pc com uma pasta do container docker
    docker volume create app-dados  -- criando um volume
    docker volume inspect app-dados  --- mostra o que tem de informação desse volume
    docker run -dp 3000:3000 --name <nome_container> -v <nome-do-volume>:<diretorio-do-container> app:v2
        Ex: docker run -dp 3000:3000 --name kiwi -v app-dados:app/dados app:v2

## 27) Copinado dados do container para a minha máquina local (O contrário também é válido)
    docker cp <nome-do-container>:<caminho-onde-esta-o-arquivo-no-container <para-onde-deve-ir-no-pc>
        Ex: docker cp kiwi:/app/teste.txt .

## 28 - Docker Compose é um arquivo que contem todas as instrucoes para subir varios container
    docker-compose up  //Cria as imagens e depois cria os container

## 29 - Constrói as imagens e roda
    docker-compose up --build

## 30 - Visualiza quais container o composer está executando e o mapeamento das portas
    docker-compose ps  

## 31 - Fechando a aplicação do compose
    docker-compose down  //Fechando a aplicacao do compose

## 32- Rodando compose novamente
    docker-compose up -d // Se ja foi feito o build, entao nao preciso fazer de novo, basta rodar esse comanho novamente


## 33 - Docker tem um DNS resolver, toda vida q sobe um container ele consegue saber qual vai ser o ip dele

## 34 - Exibi logs do docker compose 
    docker-compose logs

## 35 - Apaga todas imagens locais
    docker rmi $(docker images -q) -f

## 36 - Apaga todos os container que estao parados
    docker container prune

    


    
        


