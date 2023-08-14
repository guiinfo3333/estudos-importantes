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

## Comandos
    1- Executando kubernets através do kind que roda kubernets utilizando docker https://kind.sigs.k8s.io/
    2 - kind create cluster  -- criar o Cluter kubernets
    3- kubectl cluster-info --context kind-kind     executar esse comando para ele saber qual é p cluster
    4- kubectl get nodes  -- exibe quias nodes estão naquele cluster
    5- kubectl apply -f pod.yaml  --aplica o manifesto q eu criei no kubernets
    6- kubectl get pods  -- mostra quais pods estão rodando
    7- kubectl delete pod nginx -- deleta o pod do nginx que foi criado


## Mas se o pod tiver problema e ficar fora do ar? Assim entra o conceito de ReplicaSet que gerencia os PODS, ve se esta no ar
    1- kubectl apply -f replicaset.yaml  //aplicaca o replicaset
    2- kubectl get res   // verifica quais são os replicaset criados

## Acessando o container pela porta
    kubectl port-forward pod/nginx-vw5wc 8080:80   //redireciona do pc meu da 8080 para 80 do container
