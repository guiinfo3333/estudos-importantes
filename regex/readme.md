Site para teste:---  https://regexr.com/

### 1)  /-\d\d\d5/g     --- "Três caracteres seguido de uma barra e um 5 depois  /d significa dígito de 0 a 9

Ex:
    (85) 98533-7317
    (85) 98533-7315
    (85) 98533-7317
    (85) 98533-7315
    (85) 98533-7317
    (85) 98533-7315
    (85) 98533-7317
    (85) 98533-7315


### 2) "." significa qualquer caractere em regex. Assim quando quiser localizar o ponto realmente, usando um caractere
    de escape.  Ex: /\./g. E a mesma coisa acontece com "*", basta botar um contra barra.

    Ex: Teste. Alo. Tamo junto.

### 3) /\s\g  -- Meta caractere para espaço em branco

### 4) /G..A\g -- Identifando uma sequencia genética que começa com A maiuscula e possui qualquer coisa 2 passos
a frente e termina com A maiusculo

    Ex: CAACAACTTCGGCAATBUAA

### 5) /^Eu\gm  - o acento circunflexo indica que só deve encontrar no inicio do paragrafo, nao vale no meio do paragrafo

Ex: /^\w\ a primeira letra do paragrafo

### 6) /\.$\gm   -  O cifrão restringe a busca para o final do parágrafo.

Expressão: /etc\.$\gm   - busca por "etc." no final do parágrafo. "gm significa multi linhas".

Ex: O interesse pelo texto como objeto de estudo gerou vários trabalhos importantes 
de teóricos da Linguística e etx. Textual, que percorreram fases diversas cujas características
principais eram transpor os limites da frase descontextualizada da gramática tradicional e ainda 
incluir os relevantes papéis do autor e do leitor na construção de textos e etc.


### 7) /[a-f]\gm  - Caractere Set , aí é um range de a até f.


### 8) Quantificadores. Servem pra evitar repetição
 
    Expressão : /c\w{3}o\g  -- Procura por toda palavra q inicia com c + 3 letras e termine com "o"
    Ex:  carro carroceiro cachaceiro capoteiro castro cadastro carra carroceiro castra cadastra

    Outros : /c\w{3,7}o\g  aqui são 3 ou 7 metacaracteres
    /c\w{6,}\g   "c" seguido de 6 caracteres ou mais

### 9) Expressão  /colou?r\g  -- O interrogação indica que o caractere anterior a ele pode existir ou nao
    Ex: color colour


### 10) "*" é um quantificador pode está vazio ou qualquer coisa. 
    Expressão: /vo*a\g
    Ex: va voa voooa voooooa  vooooooaaa  . Mas ele seleciona o o va, pq é 0 ou mais

### 11) "+" uma ou mais. Também um quantificador
    Expressão: /vo+a\g
    Ex: va voa voooa voooooa  vooooooaaa  . Ele nao seleciona o "va', pq é 1 ou mais


### 12) Lazy selecao, seleção preguiçosa
    Expressão: /<p>.*</p>\g -- Desse jeito, iria seleclionar o exemplo por completo, mas se colocarmos um
    ponto de interrogação no final ele separa. Ficando assim /<p>.*?</p>\g
    Ex: <p>Primeiro Parágrafo</p><p>Segundo Parágrafo</p><p>Terceiro Parágrafo</p><p></p>


### 13) Operadores Lógicos

    13.1) <p>(Primeiro)\sParágrafo</p>  Assim eu estou selecionando apenas a palavra "Primeiro Parágrafo". O parenteses
    significa conjunto. Agora assim <p>(Primeiro|Segundo)\sParágrafo</p>, ele selecionaria Primeiro e o Segundo

    Ex: <p>Primeiro Parágrafo</p><p>Segundo Parágrafo</p><p>Terceiro Parágrafo</p><p></p>


    13.2) \D -- todos os que nao sao digitos, negacao de \D e \W negacao de \w.

    13.3) /[a,b,c]\gm --- Pega todas as situações que tenha a,b,c. Mas isso /[^a,b,c]\gm nega e só vai pegar
    todas as situações que NAO tem a,b,c.


### 14- lookahead ou negative lookahead  -- "Pensar a frente"
    /Guilherme(?=\sMenino)\gm  -- Seleciona a palavra "Guilherme" que é seguida de "espaço" e "Menino"

    Ex: Guilherme Wallace

        Guilherme de Castro

        Guilherme Menino

        Guilherme Pecador

        Guilherme Antônio

### 15- negative lookahed -- Só substituir o "=" por "!"
    /Guilherme(?!\sMenino)\gm

       Ex: Guilherme Wallace

        Guilherme de Castro

        Guilherme Menino

        Guilherme Pecador

        Guilherme Antônio



