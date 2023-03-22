## 1- Criando usuario
    useradd -m andre //cria usuario-andre  , -m cria home diretório

## 2- Verificando usuário root
    whoami

## 3- Deletar usuário
    userdel andre

## 4- Verificando usuarios, na vdd senhas
    cat /etc/passwd

## 5- Rodando docker com um usuário específico
    docker exec -it -u andre <id_do_container> bash 

## 6- Mostrando grupos
    cat /etc/group

## 7- Qual grupo meu usuario pertence?
    groups gui

## 8- Adicionando usuário no grupo
    usermod -G docker andre   //estou adicionando o usuário andre ao grupo docker

## 9-  Dando permissao de execucao
    chmod u+x text.text  //permissao de execucao
    chmod u+w text.text  //permissao de escrita
    chmod u+r text.text  //permissao de leitrua
