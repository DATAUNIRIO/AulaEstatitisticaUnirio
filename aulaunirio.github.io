---
title: "Estatística, Ciência de Dados e Sociedade"
author: "Steven Dutt Ross"
output:
  xaringan::moon_reader:
    lib_dir: libs
    nature:
      highlightStyle: github
      highlightLines: true
---

```{r setup, include=FALSE}
options(htmltools.dir.version = FALSE)
knitr::opts_chunk$set(cache=TRUE)
knitr::opts_chunk$set(echo = TRUE)
library(highcharter)
library(dplyr)
library(viridis)
library(ggplot2)
```


## Por que usar o R?
<P>1 . O R é a principal ferramenta para estatística e para análise de dados. É mais do que um software estatístico, é uma linguagem de programação.
<P>2. Você pode usá-lo facilmente em qualquer lugar.
<P>3. É grátis. Você pode usa-lo em qualquer empresa, escola, em qualquer local sem ter que convencer o chefe a comprar uma licença.
<P>4. Existem mais de 10.000 pacotes de contribuições de usuários disponíveis no site do R (cran). Muitos pacotes  são colocados pelos membros mais proeminentes de seus respectivos campos.
<P>5. R tem uma grande (e crescente) comunidade de usuários. As listas de discussões fornecem acesso a muitos usuários e autores de pacotes que são especialistas em  seus campos.
<BR>
<P>OBS - Esses slides foram feitos no R

---

## Por que usar o R?

```{r, echo=FALSE, fig.height=5, fig.width=10}
library(png)
library(grid)
img <- readPNG("C:/Users/Hp/Desktop/R/Apresentacoes/Companies using R.png")
#img <- readPNG("C:/Users/Steven/Google Drive/google maps e R/R Markdown/Slidify/teste 1/teste/Companies using R.png")
 grid.raster(img)
#![] (https://1.bp.blogspot.com/-CytixCJHq6w/WGOlcgvciDI/AAAAAAAAFvY/TkNVgC_bA5oEHutbmETCOXnxmzsaOJDzwCLcB/s1600/Companies%2Busing%2BR.png)
#![] (C:/Users/Steven/Google Drive/google maps e R/R Markdown/Slidify/teste 1/teste/Companies using R.png)
#![](/Companies using R.png =1000x200)
#<img src="Companies using R.png" width="1000px" height="200px" />
```
<BR>
Outras organizações que utilizam o R: IBGE, FGV, IBOPE, Ministério do planejamento, etc...

--- 

## Grandes organizações que usam o R
- 1. Facebook - For behavior analysis related to status updates and profile pictures.
- 2. Google - For advertising effectiveness and economic forecasting.
- 3. Twitter - For data visualization and semantic clustering
- 4. Microsoft - Acquired Revolution R company and use it for a variety of purposes.
- 5. Uber - For statistical analysis
- 6. Airbnb - Scale data science.
- 7. IBM - Joined R Consortium Group
- 8. ANZ - For credit risk modeling   
- 9. HP
- 10. Ford
- 11. Roche
- 12. New York Times - For data visualization
- 13. Mckinsey
- [Fonte](http://www.listendata.com/2016/12/companies-using-r.html?m=1)

---

## Número de pacotes do R ao longo do tempo
```{r, echo=FALSE, fig.height=5, fig.width=10}
library(png)
library(grid)
img1 <- readPNG("C:/Users/Hp/Desktop/R/Apresentacoes/CRAN Packages.png")
#img1 <- readPNG("C:/Users/Steven/Google Drive/google maps e R/R Markdown/Slidify/teste 1/teste/CRAN Packages.png")
grid.raster(img1)
#![](https://2.bp.blogspot.com/-_g4B3uM17hY/WGJpUaiypHI/AAAAAAAAFvI/1TSwAEw1vtUBG8trJinfc2grhmeXiwFdgCLcB/s1600/CRAN%2BPackages.png)
```

---

## Entender não basta 
Não quero só que você entenda esse gráfico, mas também quero dar oportunidade para você construir diversas análises desse tipo.
```{r, echo=FALSE, fig.height=6, fig.width=8}
library(ggplot2)
library(ggthemes)
df <- read.csv("buzzfeed_linkbait_headlines.csv", header=T)
ggplot(df, aes(x=listicle_size, y=num_fb_shares)) +
    geom_point(alpha=0.05, color="#c0392b") +
    scale_x_continuous(breaks=seq(0,50, by=5)) +
    scale_y_log10(breaks=10^(0:6)) +
    geom_hline(yintercept=1, size=0.4, color="black") +
    geom_smooth(alpha=0.25, color="black", fill="black") +
    labs(x="num de palavras no artigo", y="Num de compartilhamentos no Facebook", title="Facebook vs. tamanho do artigo")

```
###Parece interessante?

---

## Estatística 
um sistema formal de **signos** regidos por regras **gramaticais** que, quando combinadas,**geram significados**
(visão estruturalista da linguagem)

### Estatística como linguagem
- 1. Natural: idiomas (oral, escrita, de sinais)
- 2. Artificial: linguagem concebida por um indivíduo ou grupo (em vez de ter evoluído naturalmente)
- 3. Formal:Matemática, Lógica, Computação e Estatística

---

## Estatística 
### Estatística como ciência do aprendizado
1. Estatística é a ciência do aprendizado a partir dos dados

---

## Estatística 
### Estatística como ciência do aprendizado
1. Estatística é a ciência do aprendizado a partir dos dados
2. Sempre olhe os dados: A procedência dos dados é importante

---

## Estatística 
### Estatística como ciência do aprendizado
1. Estatística é a ciência do aprendizado a partir dos dados
2. Sempre olhe os dados: A procedência dos dados é importante
3. A variação está em toda parte

---

## Estatística 
### Estatística como ciência do aprendizado
1. Estatística é a ciência do aprendizado a partir dos dados
2. Sempre olhe os dados: A procedência dos dados é importante
3. A variação está em toda parte

### Letramento (Literacia) e Numeramento (Numeracia)
"Saber em uso",**saber agir no cotidiano** para resolver situações reais (em oposição ao"saber inerte", **acumulação de conteúdos** sem saber como utilizá-los)

---

## Sobre o trabalho final da disciplina

Você deve **formular** um problema em seu contexto do mundo real, **planejar** seu trabalho estatístico em detalhes, **resolver** o problema através dos gráficos e estatísticas necessárias, e **concluir**, explicando que suas descobertas dizem sobre o contexto do mundo real (parecer)

---

## Registros e variáveis 

Os registros são objetos descritos por um conjunto de dados, podendo ser pessoas, animais, municípios, estados ou objetos.

Uma variável é qualquer característica do registro. Uma variável pode assumir valores diferentes para registros diferentes

---


## Variáveis qualitativas e quantitativas

**Variáveis qualitativas**  posiciona um registro em um dos diversos grupos ou categorias. Também chamada de **Variável categórica**

**Variáveis quantitativa**  assume valores númericoscom os quais faz sentido efetuarem-se operações aritméticas, tais como adição e cálculo de médias. Os valores de uma variável quantitativa são usualmente registrados em uma unidade de medida, tal como segundos ou quilogramas 

---

## O que é um banco de dados
Iris Data: 50 flores de 03 espécies
```{r iris, echo=FALSE}
knitr::kable(head(iris, 10), 'html')
#DT::datatable(
#  head(iris, 10),
#  fillContainer = FALSE, options = list(pageLength = 5))
```
Cada linha é um registro e cada coluna é um atributo (que chamamos de variável)

---

## Outro exemplo: Swiss Data
Províncias da Suiça
```{r swiss, eval=require('DT'), tidy=FALSE, echo=FALSE}
data("swiss")
DT::datatable(
  head(swiss, 10),
  fillContainer = FALSE, options = list(pageLength = 5))
#Standardized fertility measure and socio-economic indicators for each of 47 French-speaking provinces of Switzerland at about 1888.
#Fertility	Ig, ‘common standardized fertility measure’
#Agriculture	 % of males involved in agriculture as occupation
#Examination	 % draftees receiving highest mark on army examination
#Education	 % education beyond primary school for draftees.
#Catholic	 % ‘catholic’ (as opposed to ‘protestant’).
#Infant.Mortality	 live births who live less than 1 year.
```

---

## Outro exemplo: Midwest Data
Informações Demográficas dos municípios do Meio-Oeste
```{r midwest, echo=FALSE}
data(midwest)
dim(midwest)
DT::datatable(
  head(midwest, 10),
  fillContainer = FALSE, options = list(pageLength = 5))

```

---

## Outro exemplo: Mtcars Data
Performance de carros (10 informações)
```{r, echo=FALSE}
DT::datatable(
  head(mtcars, 10),
  fillContainer = FALSE, options = list(pageLength = 5))
```

---

## Geralmente acompanhado de um DICIONÁRIO DE DADOS
Por exemplo:
* mpg: Miles/(US) gallon
* cyl: Number of cylinders
* disp: Displacement (cu.in.)
* hp: Gross horsepower
* drat:Rear axle ratio
* wt: Weight (1000 lbs)
* qsec: 1/4 mile time
* vs: V/S
* am: Transmission (0 = automatic, 1 = manual)
* gear: Number of forward gears
* carb: Number of carburetors

---

Por exemplo, esse banco de dados que estamos trabalhando tem 32 carros e 11 variáveis. No R isso pode ser verificado pelo comando dim(mtcars), e names(mtcars)
```{r, echo=TRUE}
dim(mtcars)
names(mtcars)
```

---

## O objetivo é extrair informações de um banco de dados
Por exemplo:
Valor médio das variáveis HP & mpg e tabela dos CyL dos carros desse banco de dados
```{r, echo=FALSE}

mean(mtcars$hp)
mean(mtcars$mpg)
table(mtcars$cyl)

```

---

## Outro modo de fazer isso é por meio de gráficos
```{r, echo=FALSE}
library(ggplot2)
qplot(wt, mpg, data = mtcars)
```

---

## Criando vetores

O comando c() pode ser usada para criar vetores de objetos juntando coisas.

```{r vetor}
x <- c(0.3, 0.9, 1.1)          ## numerico
y <- c(TRUE, FALSE, FALSE)     ## logico
y <- c(T, F, F)                ## logico
z <- c("a", "b", "c")          ## caracter
w <- 10:20                     ## inteiro
k <- c(1+9i, 2+4i, 8+2i)       ## complexo
l <- c("red","blue","green")   ## cores
```

---

## Data.Frame: O seu banco de dados no R

Podemos utilizar mais informações do que apenas dados de uma mesma classe, como um vetor ou uma matriz. Uma base de dados, em geral, é feita de dados de diversas classes diferentes.

Como guardar informações de diversas classes diferentes? A resposta para isso é o data.frame. Por exemplo, se eu tivesse um departamento de uma empresa com esses funcionarios:

```{r, echo=TRUE}
Funcionarios <- data.frame(nome = c("Marx", "Weber", "Durkheim","Arendt", "Maquiavel"),
                           sexo = c("M", "M", "M", "F","M"),
                           salario = c(1000, 1200, 1300, 2000, 500),              
                           stringsAsFactors = FALSE)
Funcionarios
```

---

## Data.Frame: Outro banco de dados
Outro exemplo. Se eu tivesse uma turma desse semestre com esses alunos:
```{r turma, echo=TRUE}
Turma <- data.frame(nome_aluno = c("Jurgen Habermas", "Karl Popper", "John Rawls","Paulo Freire"),
                           sexo = c("M", "M", "M","M"),
                           CR = c(6.98, 7.01, 7.03, 8.88), stringsAsFactors = FALSE)
```

```{r turma2, echo=FALSE}
library(DT)
Turma
#datatable(Turma)


```

---

## Data.Frame: Outro banco de dados

Para selecionar colunas em um data.frame é utilizado o simbolo $ 

```{r}
Funcionarios$nome
Turma$nome_aluno
```


---

## Exploração dos dados

1. Inicie pelo exame de cada variável por si mesma. Em seguida, estude as relações entre essas variáveis.
<p> 
2. Sugestão: Tente fazer duas ações. 1) Inicie pelo gráfico. 2) Adicione então resumos numéricos (exemplo média, moda, mediana) de aspectos específicos dos dados.

## Distribuição de uma variável

* A Distribuição de uma variável nos diz quais os valores assumidos por ela e qual a frequência com que ela os assume.

*  Os valores de uma variável categórica são rótulos para as categorias. A distribuição de uma variável categorica lista as categorias e dá a contagem e o percentual de registros que estão em cada uma delas.

*exemplo de um gráfico e uma distribuição de frequencia no R*

---

background-image: url(http://www.planwallpaper.com/cool-background#static/images/cool-background.jpg)
background-position: 50% 50%
class: center, bottom, inverse

## Distribuição de uma variável quantitativa

---

## Distribuição de uma variável quantitativa
variáveis quantitativas geralmente assumem muitos valores. A distribuição nos diz quais valores ela assume e com qual frequência os assume. O gráfico da distribuição torna-se mais claro se agrupamos valores próximos. O gráfico mais comum da distribuição de uma variável quantitativa é o **histograma**.

```{r hist, echo=FALSE, fig.height=4, fig.width=6}
hist(mtcars$hp, col="red", main = "Histograma do HP")
```

---

## Análise de um histograma

1. Em qualquer gráfico de dados, procure pelo **padrão geral** e por **desvios** notáveis desse padrão.
2. Você pode descrever o padrão geral de um histograma por sua ** forma, centro e dispersão.**
Um tipo importante de desvio é o **outlier** (valor atípico), um valor individual que está fora do padrão geral.

---

## Medida de centro: média, mediana, moda
Relembrando...
A Média é a soma de todos os valores de um conjunto de observações dividido pelo número de observações.

```

```

$$\bar{X}=\frac{1}{n}\sum_{i=1}^nX_i$$

A Mediana (Md) é o ponto no meio de uma distribuição, o número tal que metade das observações é menor que ele e metade , maior.
<p>
A Moda é a observação que mais se repete

---

background-image: url(http://www.planwallpaper.com/cool-background#static/images/cool-background.jpg)
background-position: 50% 50%
class: center, bottom, inverse

## Média, mediana e moda

---

## Medida de centro: média, mediana, moda
Quando a  Mediana é melhor do que a média para representar o centro de um conjunto de dados?
Para responder isso, vamos criar dois vetores no R:
<p> 
vetor1<- c(1,2,3,4,5)
e 
<p> vetor2<- c(1,2,3,4,50000) 

---

## Medida de centro: média, mediana, moda
Quando a  Mediana é melhor do que a média para representar o centro de um conjunto de dados?
Agora vamos calcular a média e a mediana desses vetores.
```{r mean, echo=TRUE}
vetor1<- c(1,2,3,4,5)
vetor2<- c(1,2,3,4,50000) 
mean(vetor1)
mean(vetor2)
median(vetor1)
median(vetor2)

```

---

## Medida de centro: média, mediana, moda
Quando a  Mediana é melhor do que a Média para representar o centro de um conjunto de dados?
<p>
A média e a mediana de uma distribuição razoavelmente simétrica estão bem próximas uma da outra. Se a distribuição for exatamente simétrica, a média e a mediana serão exatamente iguais. Em uma distribuição assimétrica, a média está numa posição mais extrema do que a mediana. A média também é mais sensível aos outliers. 


---

## Para calcular os quartis 
1. Ordene as observações em ordem crescente e localize a mediana.
2. O **primeiro quartil Q1** é a mediana das observações localizadas a esquerda da mediana 
3. O **terceiro quartil Q3** é a mediana das observações localizadas a direita da mediana

---

## O resumo dos cinco números
O resumo dos cinco números consiste no menor valor, no primeiro quartil, na mediana, no terceiro quartil e no maior valor. Estes cinco números oferecem uma descrição razoavelmente completa do cento e da dispersão dos dados. No R podemos obter esse resumo com o comando summary( )

```{r quartil, echo=TRUE}
summary(vetor1)
summary(vetor2)

```


---

## O resumo dos cinco números
O resumo dos cinco números para a variável HP do banco de dados Mtcars

```{r quartil1, echo=TRUE}
summary(mtcars$hp)
```

O resumo dos cinco números para a variável MPG do banco de dados Mtcars
```{r quartil2, echo=TRUE}
summary(mtcars$mpg)
```

O resumo dos cinco números para a variável popdensity do banco de dados Midwest

```{r quartil3, echo=TRUE}
summary(midwest$popdensity)
```


---

## Poderíamos representar graficamente o resumo dos cinco números?

---

## Poderíamos representar graficamente o resumo dos cinco números?
### O BOX PLOT
```{r quartil4, echo=FALSE, fig.height=6, fig.width=8}
boxplot(mtcars$hp, col="royalblue")
```

---

### O BOX PLOT
O Box-Plot é o gráfico do resumo dos cinco números.
1. A caixa central abarca os quartis Q1 e Q3.
2. Uma linha central marca a mediana.
3. Linhas se estendem da caixa até o menor e o maior valor


---

### O BOX PLOT
A Amplitude interquartil AIQ é a distância entre o primeiro e o terceiro quartil

```{r quartil5, echo=FALSE, fig.height=6, fig.width=8}
a<-rnorm(1000, 50, 10) 
b<-rnorm(1000, 50, 30) 
c<-rep("a",1000)
d<-rep("b",1000)
e<-data.frame(a,b,c,d)
suppressWarnings(library(reshape))
mdata <- melt(e, id=c("c","d"))
boxplot(mdata$value ~ mdata$variable, col=c("tomato","royalblue"),data=mdata)
```


---

### O BOX PLOT
A Amplitude interquartil AIQ é a distância entre o primeiro e o terceiro quartil

```

```



$$AIQ=Q1-Q3$$

Uma observação é um valor suspeito de ser um outlier se ela cais a mais de 1,5*AIQ acima do terceiro quartil ou abaixo do primeiro quartil. No caso do HP


```

```

$$ Q3+1,5*AIQ = 180+1,5*(180-96,5) = 180 + 125.25 = 305,5 $$


---

background-image: url(http://www.planwallpaper.com/cool-background#static/images/cool-background.jpg)
background-position: 50% 50%
class: center, bottom, inverse

## Medidas de dispersão: Variância e Desvio Padrão

---

