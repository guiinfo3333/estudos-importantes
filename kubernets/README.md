# Kubernets

## -1 O que é o Kubernets ?
    É um orquestrador de containeirs
## -2 O que é um POD
    é a estrutura básica do kubernets, assim como o container é a estrutura básica do docker.

## 3- Ciclo de vida de um POD
    Pending -> quando um container ainda não foi criado
    Running -> quando um ou mais containers estão rodando dentro de um servidor
    Succeded -> os PODS foram executados, e os container foram executados e sem erro
    Failed -> pelo menos algum POD com falha.
    Unknown -> quando o pod não pode ser obtido. Ex:Quando o POD perde a internet.
    
## 4 - O cluster é formado pelo MASTER e o WORK
    Master - é o cérebro do cluste, o nó mestre, Ele é responsável pela tomada de decisões globais e pelo controle do cluster.
    WORK - o nó work é onde os container estão sendo executados e recebe as tarefas agendadas pelo nó mestre e
            as executa

## 5- 