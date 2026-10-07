########### Comandos básicos no R ###############

# Versões do R (Rgui e RStudio)
# Pacotes básicoas e adicionais

# O R um software livre que requer usar comandos e inicalmente 
# foi criado para melhoria do aprendizado em estatística e agora 
# tem sido usado amplamente para também na vida profissional.
# Possui diversos pacotes para diferentes áreas de atuação.


# Em todos softwares que envolvem comandos um dos elementos 
# essenciais é como fazer comentários

# Tudo do lado direito do simbolo do hashtag ou "jogo da velha" 
# é comentário e R enteder que não é um comando

# Associando objetos com sinal de igual

A=2 #  Cria um objeto chamado "A" contendo o número  2
B=3 #  Cria um objeto chamado "B" contendo o número 3
A=4 #  Cria um objeto chamado "A" contendo o número 4 
# Agora A foi atualizado 
a=5 #  Cria um objeto chamado "a" contendo o número 5 
# Distinção entre maiúscula e minúscula "a" é diferente de "A" 


# testar qual destes elementos o r aceita 
2r=2; r2=2 ;r*=2   # OBS: O ponto e virgula (;) permite que mais de um comando 
# seja feito em mesma linha 

ls() # lista todos objetos criados 
rm(A,B) # Apaga os objetos A e B que criamos
rm(list=ls()) # apaga todos objetos que foram criados  

# Sobre instalação e uso de pacotes

# A versão básica do R vem com um grupo limitado de pacotes 
# e caso necessite pode instalar mais

install.packages("qcc") # Instala o pacote denominado "qcc" 
# usado em controle de qualidade
# OBS: Diferença entre instalar e usar 

library(qcc) # Comando que carrega pacotes (ex: qcc)
library() # mostra todos os pacotes instalados 
library(help=qcc) # Mostra todas funções e dados de um pacote (ex qcc)  
data(package="qcc") # Mostra dados de um pacote (ex: qcc)  
data(boiler) # torna acessivel o dado: boiler (do pacote qcc)
### OBS não é uma regra, por exemplo tidyverse não necessita disso.

### Duvidas (help) de funções, dados ou pacotes usar ? antes 
?boiler
?t.test

# Procurar funções envolvendo o termo "Multivariate". 
help.search("multivariate")  

# Operações matemáticas básicas 
7+2 # soma
7-2 # diferença
7*2 # multiplicação
7/2 # divisão

# criando duas variaveis (ou objetos)
x1=7 # recebendo o número 7
x2=2 # recebendo o número 2

# Operações matemáticas básicas usando variáveis
x1+x2 # soma
x1-x2 # diferença
x1*x2 # multiplicação
x1/x2 # divisão


# Muitas funções matemáticas já no padrão

n<-15 # outra forma de atribuir além do sinal de igual
cos(n)  # cosseno
sin(n)  # seno
exp(n)  # exponencial
log(n)  # logaritmo natural
n^4     # ^ sinal de potenciação  
sqrt(n) # raiz quadrada
n^(2/3) # o que deve resultar disto? 
factorial(n) # fatorial  
trunc(n/2) # Inteiro da fração (neste 15/2=7.5, retorna 7)
round(sqrt(n),digits=3) # Arredonda um número, 3 dígitos.
n%/%2 # Quociente da divisão
n%%2 # Resto da divisão
n/0 # Retorna Inf que significa infinito se fosse -n/0 
#retornaria -Inf
0/0 # Retorna NaN que significa que não é um m número 


# Principais Sinais lógicos
# <- e = indica que uma variável irá receber um dado 
# == igualdade 
# != diferença
# < > menor e maior 
# &  "e" lógico
# |  "ou" lógico

# Exemplos 
# O resto da divisão de 15421 por 7 é zero? 
15421 %% 7 == 0 
# O quociente da divisão de 40 por 5 é 8 ? 
40%/%5 != 8  
# O exponencial de -infinito é zero?
exp(-Inf) == 0 

## Principais objetos do R


### Vetores iniciais com 1 dimensão

# o comando c() concatena elementos separados por vírgulas

xx=c(1,2,3,5,7,NA)  # OBS: NA representa valores faltantes
xx[5]  # Refere-se ao 5 elemento
xx[c(1,6)]# Refere-se aos elementos 1 e 6 
xx[1:3] # Refere-se a sequencia do elemento 1 ao 3 

class(xx) # comando que identifica a classe do objeto

# Vetor de caracteres (Necessidade de usar aspas "")
# pode-se usar aspas simples também
xt=c("a","bc",'x') 
class(xt) 
# Vetor com caracteres, número complexo e um número comum.
mix=c("a",2i,4) 
mix # observe que todos foram convertidos em caracteres
## OBS: não se pode usar múltiplos objetos em um mesmo vetor

# Matrizes

# 1 coluna feita pelos 2 primeiros elementos
xx=matrix(c(1,2,3,4),ncol=2) 
# Retorna o elemento da linha 2 coluna 1 
xx[2,1] 
# 1 linha feita pelos 2 primeiros elementos
yy=matrix(c(1,2,3,4),ncol=2, byrow=T)  
yy[1:2,1] # Retorna da 1º a 2º linha que são  da 1ª coluna
yy[2,]    # Retorna da linha 2 de todas colunas

# Operações possiveis com matrizes ou vetores 
# (OBS: válidas obviamente se as regras matemáticas permitirem)

0.5*yy      # multiplicaçao de uma constante por uma matriz
0.5+yy      # soma de uma constante por uma matriz
somax=xx+yy # soma de matrizes
xx%*%yy     # multiplicaçao de matrizes 
t(xx)       # transposta de uma matriz 
solve(yy)   # inversa ( para matrizes quadradas )
det(xx)     # determinante de uma matriz
diag(yy)    # Pega a diagonal da matriz
eigen(xx)   # auto valores e auto vetores de uma matriz
rbind(xx,yy)# concatena duas matrizes (ou vetores) por linha
cbind(xx,yy)# concatena duas matrizes (ou vetores) por coluna


##### Fatores

# Fatores tem uma função semelhante a de variáveis categóricas

A=rep(c(1,2),times=8) # Repete o vetor (1,2) oito vezes
class(A)
fa=as.factor(A) #  "fa" é a conversão do vetor "A" em um fator
A;fa # saidas diferem
class(fa)

# É possível renomar as variáveis que são fatores:
nfa=factor(fa,labels=c("I","II"))
nfa

# Tabelas de Contigência no R - 
# Bastante usadas em Estatística descritiva e Não Paramétrica

# Simulando conjunto de dados:
# sexo, origem e notas de 16 alunos

sexo=rep(c("Masculino","Feminino"),8)
notas=c(10,8,8,7,2,3,5,4,4,5,8,9,9,8,8,10)
origem1=rep(c("Pub","Par"),each=7) ;origem2=c("Fed","Fed")
origem=c(origem1,origem2)

table(sexo) # contagem por sexo
table(origem) # contagem por Origem
tab=table(sexo,origem) # Contagem de sexo x origem em "tab"
tab
class(tab)

margin.table(tab,1) # marginal da variável de linha
margin.table(tab,2)  # marginal da variável de coluna

prop.table(tab) # percentual geral
prop.table(tab,1) # percentual por linha
prop.table(tab,2) # percentual por coluna

# Listas objetos mais amplos, pois permitem múltiplas classes
# Tipo vetores, matrizes (com números e/ou caracteres) 
# e até mesmo outras listas

## Exemplo
R<-list(versao=4, origem='Áustria', notas=c(9,10,8))
names(R) #ver objetos guardados dentro de R
R$versao # Fazendo referência a um objeto da lista
R[[2]] # Outra forma de referencia segundo elemento origem

### Principal que iremos usar são Data frames
# Data frames São semelhantes a matrizes por terem duas 
# dimensões, onde cada elemento (coluna) tem um tipo de classe
# e são focados em conjunto de dados


# Usando os dados gerados anteriormente

dado=data.frame(Sexo=sexo,Proeminencia=origem)
dado # observe que as variáveis foram renomeadas 
class(dado)
str(dado) # observando características das variáveis

# OBS agora temos sexo externo ao dataframe "dado" e 
# Sexo dentro do "dado" (mesmo que fossem igualmente escrito)

sexo;dado$Sexo


# pode-se ter muita confusão
# Exemplo: Alterar um elemento do sexo 

# O que está fora de "dado"

sexo[1]="Feminino" # alterando de masculino para feminino
## Note que isso não altera o que está dento de "dado"
dado$Sexo

## para fazer o mesmo em dado temos duas opções
# Rodar novamente o comando dado=data.frame(Sexo=sexo,Proeminencia=origem)
# Assim eu atualizo o dado ... ou diretamente no banco de dados:

dado$sexo[1]="Feminino"


### Medidas de Resumo e família apply

#### Medidas de Resumo

# Medidas de posiçao e variabilidade mais usadas 
# Para exemplicifar usaremos os dados:
# InsectSprays e HairEyeColor

# InsectSprays - Variaveis: 
# "count" o número de insetos mortos 
# "spray" que é o tipo de spray usado

attach(InsectSprays) # acessa diretamente suas variáveis
### Obs alterações da variável permanente deverá conter nome dos dados + $ + variável

sum(count)# Total 
mean(count) # Média
median(count) # Mediana
var(count) # Variância
sd(count) # desvio padrão
summary(count)# Apresenta mínimo, máximo, média mediana e 1º e 3º  quartil


# Medidas especificas para um determinado tipo de spray, 
# por exemplo o tipo A

mean(count[spray=="A"]) 
median(count[spray=="A"]) 
var(count[spray=="A"]) 
sd(count[spray=="A"]) 
summary(count[spray=="A"])

####### Comandos da família apply
####### Outra forma de resumir dados


# 1) Apply : Aplicada uma funçao em margens de um array, 
# matriz ou dataframe (obviamente deve ter números).  

# exemplo dados de HairEyeColor

HairEyeColor 

# Observe que este conjunto de dados é um array
is.array(HairEyeColor)
# dimensões 1 linha (Cor dos cabelos) 2ª coluna cor dos olhos 
# 3ª(Gera duas matrizes) refere-se ao Sexo  

# (a) Qual a proporçao de homens e mulheres na amostra?
apply(HairEyeColor,3,sum) # Total por sexo
# Proporçao por sexo 
apply(HairEyeColor,3,sum)/sum(HairEyeColor) 

# (b) Quantos são os homens de cabelos pretos?

apply(HairEyeColor,c(1,3),sum) # Total por Cabelo e Sexo. Logo a resposta ? 56

# Para ser mais e usar um comando
cx=apply(HairEyeColor,c(1,3),sum) ; cx[1,1] # homens de cabelo preto



#2) tapply : Tem objetivo de aplicar funçoes em grupos (Ou categorias) diferentes.  

## voltando ao exemplo InsectSprays

# número médio de insetos por tipo de spray
tapply(count,spray,mean) 
# Variância de insetos por tipo de spray
tapply(count,spray,var) 


#3)  lapply : Funçao para listas

lista = list(x1=c(1,2,NA,4,5), x2=seq(1,100,1), x3=rnorm(100))
# OBS: O comando "rnorm" gera elementos da distribuição normal 

lapply(lista, mean)

# observe que o meam não faz o cálculo para X1 
# por ter dados faltantes (NA) uma soluçao é incluir o 
# argumento na.rm=T na funçao lapply conforme mostra abaixo

lapply(lista, mean, na.rm=T)

#4) sapply : Similar ao lapply, com saída diferente. 

sapply(lista, mean,na.rm=T)


#5) mapply: Versão multivariada do sapply. 
# Apesar de mais complexa a programação, pode ter saidas 
# computacionais mais rápidas


#Exemplo fazendo uma lista com dados de dist normal com médias
#  6 8 e 10, com tamanhos 20, 30 e 50 variância igual a 1


l1=list(rnorm(20,6,1),rnorm(30,8,1),rnorm(60,10,1))

sapply(l1, mean);sapply(l1, length)

# Mesma lista usando mapply

l2=mapply(rnorm, c(20,30,50),mean=c(6,8,10), 1)

sapply(l2, mean);sapply(l2, length)


### algunas funções muito importantes

### Repetições

x=c('a','b')
# repete a variável 'x' 4 vezes
rep(x,times=4) 
# repete cada elemento da variável 'x' 3 vezes
rep(x,each=3) 
# repete cada elemento da variável 'X' 3 vezes 
# e tal vetor é repetido duas vezes
rep(x,times=2,each=3)


### Sequências

# Gerando sequencia de inteiros 

1:10 #sequencia de 1 a 10 de um a um
-20:30  #sequencia de -20 a 30 de um a um
# sequencia de a=0 até b=20 pulando de 5 em 5 
seq(0,20,5)
# sequencia de n elementos de a até b (igualmente espaçados)
seq(0,20,length.out=50)

### Criando uma variável categórica a partir de uma
### variável quantitativa

## Gerando 100 números da distribuição normal
## com média 10 e variância 2
set.seed(403) # semente geradora (para gerar mesmos números)
am=rnorm(100,10,2)

#### Criando variáveis categóricas via variável contínua:

## 'cut" categorias a serem criadas 
# [6,9.5), [9.5,12.5) e [12.5,16) 
# right = TRUE padrão gera (] vamos alterar isso

c_am=cut(am,breaks=c(6,9.5,12.5,16),right=F)
table(c_am)

### Nomeando os intervalos
c_am=cut(am,breaks=c(6,9.5,12.5,16),right=F,
         labels=c("C","B","A"))
table(c_am)

########### laços e condições no R ###############

#### For :  Existe um começo e um fim determinado  

# Sintaxe

for(i in a:b){       # Repetir de "a" até "b" indexado 
  #por um indice (neste caso "i") 
  comando1  # comandos
  . 
  . 
  comandok
}

# Exemplo 1: Calcular a soma de um vetor numérico qualquer

x=1:20

soma=0 # soma começando em zero

for(i in 1:length(x)){ 
  # contar do elemento i=1 até o tamanho do vetor x
  soma=soma+x[i]
}
soma
# comando pronto do R
sum(x) 

## Mostre a soma da sequencia de fibonacci para 
## k números

# 1 1 2 3 5 8 13 21....


k=25 # fazendo para k=25
x=rep(0,k) # Repetindo 0 k vezes

x[1]=x[2]=1 # atribuindo 1 aos primeiros elementos 

for(t in 3:k){ # usando indece t de 3 até k (25 no caso)
  x[t]=x[t-1]+x[t-2]    # somando o elemento t com os dois elementos anteriores          
}
x


###### While (enquanto) 
## estrutura no qual a quantidade de laços é indefinida 
## termina devido a uma condição pré-fixada

# Sintaxe

#while (condição){  # repetir até a condição ser cumprida
#  .  comandos 
#  . 
#  . 
#}


# Exemplo 1 :Imprimindo cada elemento 

i = 1 # contador para repetições

while ( i<6) { # repetir enquanto o indice i for diferente (!=) de 6
  print(i) # comando que imprime o indice i em cada repetição (usado tb no for)
  i = i+1  # somando o indice i em cada repetição
}


##############  Condições #########

#### if e else  para duas condições

## para duas condições

x = -5
if(x > 0){
  print("Positivo")
} else {
  print("Negativo")
}

# OBS: else é o contrário de if. 
# Note que o else deve ser escrito ao lado do 
# fechamento da chave "}" do if 

## Para mais de duas condições:

x <- 0
if (x < 0) {
  print("Negativo")
} else if (x > 0) {
  print("Positivo")
} else
  print("Zero")


### usando um loop e uma condição juntos

# Suponha que precisamos classificar 2000 notas de alunos
# da seguinte maneira:
# nota > ou igual 7 retorna: aprovado 
# nota < que 3 retorna: reprovado
# entre 3 e 6,9 recuperação

set.seed(18)
notas=rnorm(2000,6,1.2)
max(notas); min(notas)


### Opção 1 usando for e if

sit=rep("Indefinida",2000)
for (i in 1:2000){
  if(notas[i]>=7){ 
    sit[i]="Aprovado"
  } else if (notas[i]<3){ 
    sit[i]="Reprovado"
  } else sit[i]="Recuperação"   
}
table(sit)

### Opcão 2 : Usando a função ifelse (lembra função SE do excel)
# Usada para aplicar uma condição em vários elementos 
# de um vetor (alternativa para não usar loops)

# Exemplo: Verificar se os elementos de um ve pares ou impares

a=2:7
# se o resto da divisão for 2 par senão impar

ifelse(a %% 2 == 0,"Par","impar") 

# Para mais de duas deve-se usar esta 
# mesma função dentro de outra

x=c(0,-1,2)
ifelse(x>0,"Positivo",
       ifelse(x<0,"Negativo",
              "Zero"))


# Refazendo a situação dos estudantes usando ifelse

sit=ifelse(notas>7,"Aprovado",
           ifelse(notas<3,"Reprovado",
                  "Recuperação"))
table(sit)



##### Criando Funções


## sintaxe

#nomefuncao=function(argumento(s)){ 
#  comandos 
#  retorno
#}

#EX1: Escrever função x^2 + y^2 + 2xy


fxy=function(x,y){ x^2+y^2+2*x*y}
fxy(2,3)

# EX2: Função que mostra algumas estatísticas descritivas

fm=function(x){ 
  media=mean(x)
  mediana=median(x)
  variancia=var(x)
  return(media,mediana,variancia)
}
a=rnorm(100,10,2)
fm(a) # erro por múltiplos retornos

####  refazendo corretamente

fm=function(x){ 
  media=mean(x)
  mediana=median(x)
  variancia=var(x)
  l=data.frame(media,mediana,variancia)
  return(l)
  
}

fm(a) # Agora sim

# Aplicando essa função no conjunto de dados.

tapply(count,spray,fm) 

### funções com parâmetros fixos

# função que sorteia uma moeda viciada n vezes
# onde pc é a prob de cara que inicalmente é 2/3

mv=function(n,pc=2/3){ 
  am=sample(c("c","k"),n,replace=T,prob=c(pc,1-pc))
  return(table(am))
}
prop.table(mv(10000))
prop.table(mv(10000,9/10)) # alterando p/ 9/10


## Lista rápida de funções do R
## link: http://www.leg.ufpr.br/~walmes/cursoR/guia_rapido_R.pdf

