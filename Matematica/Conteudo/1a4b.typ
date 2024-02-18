#import "../../Core/prelude.typ": *
#pagebreak()
= Juros Simples
#resumo[
  O juro simples é um tipo de juro onde o valor acrescentado ao decorrer do tempo é #attn[constante].\
  #info(title:"Fórmula")[
    $J = C_i * T_j * t$\
    Onde: 
    - $J$ é o juro
    - $C_i$ é o capital inicial 
    - $T_j$ é a taxa de juro
    - $t$ é o tempo
  ]
]

#advertencia[
  É importante que a taxa de juro e o tempo estejam na #attn[mesma unidade de tempo].\
  Por exemplo, se o tempo for medido em meses a taxa de juro deve ser mensal.\
  Talvez seja necessário converter anos para meses, meses para dias, etc. 
]

#info(title: "Montante")[
  O Montante é o valor do capital somado ao juro.
  #memo[
    $M = C_i + J$
  ]
]

#passo[
  #pergunta[
    Um capital de $"R$" 600$ foi investido em tesouro direto, com uma taxa de $12%_"a.a."$ para ser retirado após 5 anos.\
    Calcule o juro e o montante ao final desse tempo. 
  ]

  Capital Inicial = 600\
  Período = 5 anos\
  Taxa = 12% ao ano\
  Precisa converter? #attn[não].\

  + Converter a porcentagem para um numero decimal
    $12% = 12/100 = 0,12$
  + Calcular o juro
    $J &= C_i * T_j * t\
    C_i &= 600\
    T_j &= 0,12\
    t &= 5\ \
    J &= 600 * 0,12 * 5 \
    J &= 72 * 5 \
    J &= 360
    $
  + Calcular o montante
    $M &= C_i + J\
     M &= 600 + 360\
     M &= 960
    $

  #conclusao[
    O juro acumulado nesse periodo foi de R\$ 360.\
    O montante foi de R\$ 960.
  ]
]

#pagebreak()
= Juros Compostos
#resumo[
  O juro simples é um tipo de juro onde há incidência de #attn[juros sobre juros].\
  Fazendo assim o valor adicionado #attn[não] ser constante.
  #info(title:"Fórmula")[
    $M = C_i * (1 + T_j)^t$\
    Onde: 
    - $M$ é o montante
    - $C_i$ é o capital inicial 
    - $T_j$ é a taxa de juro
    - $t$ é o tempo

    Para se obter o Juro, subtraia o montante pelo capital inicial.\
    $J = M - C_i$
  ]
]

#passo[
  #pergunta[
    Um capital de $"R$" 1400$ foi aplicado a juros compostos, com uma taxa de $7%_"a.a."$ para ser retirado após 24 meses.\
    Calcule o juro e o montante ao final desse tempo. 
  ]

  Capital Inicial = 1400\
  Período = 24 meses\
  Taxa = 12% ao ano\
  Precisa converter? #attn[sim].\

  + Converter o periodo para a mesma unidade de tempo
    Sabemos que existem 12 meses em um ano. Logo:\
    $t &= 24/(12)\
     t &= 2
    $
  + Converter a porcentagem para um numero decimal
    $7% = 7/100 = 0,07$
  + Calcular o montante
    $M &= C_i * (1 + T_j)^t\
     M &= 1400 * (1 + 0,07)^2\
     M &= 1400 * (1,07)^2\
     M &= 1400 * 1,1449\
     M &= 1602,86\
    $
  + Calcular o juro
    $J &= M - C_i\
     J &= 1602,86 - 1400\
     J &= 202,86
    $
  

  #conclusao[
    O juro acumulado nesse periodo foi de R\$ 202,86.\
    O montante foi de R\$ 1602,86.
  ]
]

= Probabilidade
== Espaço Amostral
#resumo[
  - O espaço amostral é o conjunto de todos os possiveis resultados de um experimento.
  - É denotado pela letra $S$.
]


#memo(title: [Evento Equiprovável ou Aleatório])[
  Um espaco amostral é chamado de "equiprovável" se todos os resultados possuirem a #attn[mesma] chance de ocorrerem.
]

#exemplo[
  Experimento: Se joga um dado de 6 lados e se observa o numero da face superior.\
  O espaço amostral desse experimento é $S = brace.l 1, 2, 3, 4, 5 ,6 brace.r$.
]

== Evento
#resumo[
  - É um conjunto específico de resultados de um experimento
  - Geralmente é representado por uma letra maiúscula
]

#exemplo[
  Experimento: Se joga um dado de 6 lados e se observa o numero da face superior.\
  Alguns eventos podem ser:
  - $A$ = Obter um número par
  - $B$ = Obter um número impar
  - $C$ = $brace.l 1,2 brace.r$ (Obter 1 ou 2)
  - $D$ = $brace.l 1, 2, 3, 4, 5 ,6 brace.r$ (Obter os numeros de 1 à 6)
  - $E$ = $brace.l 7 brace.r$ (Obter o numero 7)

  #info[
    Note que os eventos A, B, C e D são subconjuntos do espaço amostral (O evento D é igual o espaco amostral).\

    Assim os eventos A, B e C são eventos possíveis e o evento D é um evento certo.\
    Já o evento E é um evento impossível.
  ]
]

== Fórmula
  #memo[
    $P(A) = (n(A))/(n(Omega))$\
    Onde:\
    $P(A) arrow.r.bar "Probabilidade de " \ "A acontecer"\
     n(A) arrow.r.bar "Número de elementos " \ " do conjunto A"\
     n(Omega) arrow.r.bar "Número de elementos " \ "do espaco amostral"
    $
  ]

  #info[
  - Frequentemente essa razão é expressa nas formas percentual e decimal.
  - $0 >= P(A) >= 1$
  - Se $P(A) = 0$ o evento tem $0%$ de chance de ocorrer.
  - Se $P(A) = 1$ o evento tem $100%$ de chance de ocorrer.
  ]


= Análise Combinatória
== Princípio aditivo da Contagem
#resumo[
  $n(A union B) = n(A) + n(B) arrow.l.r.double A sect B = emptyset$\
  Lê-se: "O numero dos elementos da união entre o conjuto $A$ e $B$ é igual à soma dos numeros dos elementos dos conjuntos $A$ e $B$, #attn[se e somente se] a interseção entre $A$ e $B$ for o conjunto nulo."
]

#info(title:"Símbolos")[
  - $union$ - União
  - $sect$ - Intersessão
  - $emptyset$ - Conjunto Nulo
  - $arrow.l.r.double$ - Se e somente se

  #exemplo[
    Seja $A = brace.l 1, 2, 3 brace.r$ e $B = brace.l 3, 4, 5 brace.r$\

    - $A union B$ = $brace.l 1, 2, 3, 4, 5 brace.r$\
    - $A sect B$ = $brace.l 3 brace.r$
    - $A union emptyset = A$
    - $A sect emptyset = emptyset$
  ]
]

#passo[
  #pergunta[
    Suponha que tenha entrado em cartaz 3 filmes e 2 peças de teatro e você só tenha dinheiro para assistir #attn[apenas um] desses programas. Quantos programas você pode fazer?
  ]
  
  + Defina os conjuntos\
    $A &= {x | x "é filme" } = {"F1", "F2", "F3"} \
     B &= {x | x "é teatro"} = {"T1", "T2"}$
  
  + Aplique o princípio aditivo \
   $n(A union B) &= n(A) + n(B)\
    n(A union B) &= 3 + 2\
    n(A union B) &= 5
   $

  #advertencia[
    Note que $A sect B = emptyset$.
  ]

  #conclusao[
    Eu posso fazer 5 programas.
  ]
]

== Princípio Multiplicativo
#resumo[
  Se um evento $A$ pode ocorrer de $m$ #attn[maneiras diferentes], e se para cada uma dessas $m$ maneiras possiveis de $A$ ocorrer, um outro evento $B$ pode ocorrer de $n$ #attn[maneiras diferentes], então o numero de maneiras de ocorrer o evento $A$ seguido de $B$ é $m*n$.
]

#exemplo[
  #pergunta[
     Suponha que tenha entrado em cartaz 5 filmes e 4 peças de teatro e você só tenha dinheiro para assistir #attn[um filme e uma peça de teatro]. Quantos programas você pode fazer?
  ]

  + Defina os conjuntos \
    $A &= {"F1", "F2", dots, "F5"}\
     B &= {"T1", "T2", "T3", "T4"}    
    $
  + Aplique o prinicipio multiplicativo \
    $n(A) * n(B)\
     5 * 4 \
     20
    $
  
  #conclusao[
    Eu posso fazer 20 programas.
  ]
]

== Arranjo Simples
#resumo[
  - Conhecendo um conjunto com $n$ elementos, chamamos de arranjo simples todos os agrupamentos formados sem repetições de elementos.
  - No arranjo a posição dos elementos #attn[importa], $brace.l 1,2 brace.r eq.not brace.l 2,1 brace.r$.
]

#exemplo[
  Dado o conjunto $S = brace.l 1, 2, 3, 4 brace.r$,  podemos listar todos os arranjos simples possiveis com $2$ elementos.

  $brace.l brace.l 1,2 brace.r, brace.l 1,3 brace.r, brace.l 1,4 brace.r, brace.l 2,1 brace.r, brace.l 2,3 brace.r, \
   brace.l 2,4 brace.r, brace.l 3,1 brace.r, brace.l 3,2 brace.r, brace.l 3,4 brace.r, brace.l 4,1 brace.r, \
   brace.l 4,2 brace.r, brace.l 4,3 brace.r brace.r
  $

  Podemos afirmar que existem 12 arranjos possiveis de 4 elementos tomados de 2 em 2.
]

#memo(title:[Fórmula])[
  $A_(n,k) = n!/((n-k)!)$\
  Onde:
  $A_(n,k) arrow.r.bar "Arranjo de " n " elementos" \ "tomados de " k "em" k \
   n arrow.r.bar "Quantidades de elementos no " \ "conjunto"\
   k arrow.r.bar "Quantidades de elementos " \ "por argupamento"
  $
]

#passo[
  #pergunta[
    Calcule a quantidade de arranjos que podemos formar com 8 elementos tomados de 3 em 3.
  ]

  $A_(n,k) &= n!/((n-k)!)\
  A_(8,3) &= 8!/((8-3)!)\
  A_(8,3) &= (8 * 7 * 6 * cancel(5!))/(cancel(5!))\
  A_(8,3) &= 8 * 7 * 6\
  A_(8,3) &= 336
  $

  #conclusao[
    Existem 336 possíveis arranjos formados com 8 elementos tomados de 3 em 3.
  ]
]

#colbreak()
== Combinação simples
#resumo[
  - Conhecendo um conjunto com $n$ elementos, chamamos de combinação simples todos os subconjuntos formados com uma quantidade de elementos de um conjunto maior.
  - No conjunto a posição dos elementos #attn[não] importa, $brace.l 1,2 brace.r eq brace.l 2,1 brace.r$.
]

#memo(title:[Fórmula])[
  $C^n_k = n!/(k!(n-k)!)$\
  Onde:
  $C^n_k arrow.r.bar "Combinação de " n " elementos" \ "tomados de " k "em" k \
   n arrow.r.bar "Quantidades de elementos no " \ "conjunto"\
   k arrow.r.bar "Quantidades de elementos " \ "por argupamento"
  $
]

#passo[
  #pergunta[
    Calcule a quantidade de combinações que podemos formar com 10 elementos tomados de 4 em 4.
  ]

  $C^n_k &= n!/(k!(n-k)!)\
  C_10^4 &= 10!/(4! * (10-4)!)\
  C_10^4 &= (10 * 9 * 8 * 7 * cancel(6!))/(4! * cancel(6!)) \
  C_10^4 &= (10 * 9 * 8 * 7) / 4!\
  C_10^4 &= 5040 / 24 \
  C_10^4 &= 210
  $

  #conclusao[
    Existem 210 possíveis combinações formados com 10 elementos tomados de 4 em 4.
  ]
]

= Estatística
== Medidas de Dispersão
#resumo[
  - São utilizadas para indicar o grau de variação entre um conjunto e sua média.
  - Existem quatro medidas de dispersão:
    + @est.disp.am[Amplitude]
    + @est.disp.des[Desvio]
    + @est.disp.var[Variância]
    + @est.disp.var[Desvio Padrão]
]

#colbreak()
=== Amplitude <est.disp.am>
#resumo[
  É a diferença entre o maior e o menor número do conjunto.
]

#exemplo[
  Considere $S = {1,2,3,4,5,6}$\
  A amplitude de $S$ é igual à $6-1$, ou seja $5$.
]
=== Desvio <est.disp.des>
#resumo[
  É a diferença entre cada valor pela média aritmética do conjunto.
]

#exemplo[
  Considere $S = {1,2,3,4,5,6}$\
  - A média aritmética de $S$ é igual a soma de todos os valores dividida pelo numero de valores.\ \
    $M_a &= (1 + 2 + 3 + 4 + 5 + 6) / 6 \
     M_a &= 21 / 6 \ 
     M_a &= 3,5
    $
  
  $d_0 = 1 - 3,5 &= -2,5\
   d_1 = 2 - 3,5 &= -1,5\
   d_2 = 3 - 3,5 &= -0,5\
   dots.v        &dots.v\
   d_5 = 6 - 3,5 &= 2,5
  $
]

#colbreak()
=== Variância <est.disp.var>
#resumo[
  - A Variância indica quão distante um numero está de um valor central.
  - Quanto menor a variância, mais próximo os valores estão da média.
]

#memo(title: "Cálculo da variância")[
  É calculada pela média aritmética dos quadrados dos desvios.
]

#passo[
  #pergunta[
     Considere $S = {1,2,3,4,5,6}$\
     Calcule a variância de $S$.
  ]

  + Calcule a média das amostras.\
    $M_a &= (1 + 2 + 3 + 4 + 5 + 6) / 6 \
     M_a &= 21 / 6 \ 
     M_a &= 3,5
    $
  
  + Calcule os desvios dos elementos.\
    $d_0 = 1 - 3,5 &= -2,5\
     d_1 = 2 - 3,5 &= -1,5\
     d_2 = 3 - 3,5 &= -0,5\
     d_3 = 4 - 3,5 &= 0,5\
     d_4 = 5 - 3,5 &= 1,5\
     d_5 = 6 - 3,5 &= 2,5
    $
  
  + Elevar ao quadrado os desvios
    $(-2,5)^2 &= 6,25\
     (-1,5)^2 &= 2,25\
     (-0,5)^2 &= 0,25
    $
]

#passo(title: "Continuação")[
  #dica[
      $x^2 = -x^2$
    ]

    #info[
      - Como podemos observar, a variância nesse caso é #attn[simétrica].
      - Isso permite que nós não precisemos calcular os quadrados do lado positivo pois o quadrado de um numero negativo é igual ao quadrado do numero positivo.
      - Nós só precisamos lembrar que cada valor repete duas vezes. 
    ]
  
  4. Calcular a média aritmética do quadrado dos desvios
    $V &= (6,25 + 6,25 + 2,25 + 2,25 + 0,25 + 0,25)/6\
     V &= (2(6,25 + 2,25 + 0,25))/6 \
     V &= (cancel(2) (8.75)) /cancel(6) space arrow.l.bar (div 2) \
     V &= (8, 75)/3 \
     V &approx 2,92
    $
  
  #conclusao[
    A Variância de $S$ é aproximadamente $2,92$.
  ]
]
#colbreak()
=== Desvio Padrão <est.disp.sd>
#resumo[
  - É a raiz quadrada da variância.
  - Indicado pelo simbolo $sigma$.
]

#exemplo[
  Considerando o exemplo anterior, o desvio padrão corresponde a raiz quadrada de $2,92$.\
  $sigma(S) &= sqrt(2.92)\
   sigma(S) &approx 1.4  
  $
]

== Medidas de Centralidade
#resumo[
  - São valores retirados para representar, de algum modo, todo o conjunto.
  - Existem quatro medidas de dispersão:
    + @est.cent.med[Média arítmética]
    + @est.cent.medp[Media aritmética ponderada]
    + @est.cent.moda[Moda]
    + @est.cent.mean[Mediana]
]

=== Média aritmética <est.cent.med>
#resumo[
  É igual a soma de todos os valores dividida pelo numero de valores.
]

#exemplo[
  $M_a &= (1 + 2 + 3 + 4 + 5 + 6) / 6 \
   M_a &= (21)/6 \
   M_a &= 3,5
  $
]

#colbreak()
=== Média aritmética ponderada <est.cent.medp>
#resumo[
  É uma média aritmética onde os numeros involvidos possuem "pesos".
]

#memo(title:"Fórmula")[
  $M_p = ((p_1 * x_1) + (p_2 * x_2) + dots + (p_n * x_n))/(p_1 + p_2 + dots + p_n)$\
  Onde:
  - $M_p$ é a média ponderada
  - $p_1, dots, p_n$ são os pesos de cada valor
  - $x_1, dots, x_n$ são os valores
]

#exemplo[
  Supomos que a primeira fase de um processo tenha peso $1$, a segunda tenha peso $2$ e o terceira tenha peso $3$.\

  O calculo da média ponderada neste caso seria:\
  $M_p = ((1 * "1ª Fase") + (2 * "2ª Fase") + (3 * "3ª Fase"))/(1 + 2 + 3)
  $

  #info[
    Resumidamente, a média ponderada é uma média onde cada valor é multiplicado pelo seu peso, e dividido pela soma dos pesos.
  ]
]

#colbreak()
=== Moda <est.cent.moda>
#resumo[
  É o valor mais frequente de um conjunto.\
  Caso o conjunto não apresente uma moda, ele é chamado de "amodal".\
  Caso apresente uma moda, ele é chamado de "unimodal".\
  Caso apresente duas modas, é "bimodal"; etc.
]

#exemplo[
  Considere os seguinte conjuntos:
  $A = {1,2,3,4,5}$\
  $B = {1,2,1,3,1}$\
  $C = {1,1,2,2,3}$\

  - O conjunto $A$ é amodal, pois não existe um numero mais frequente que os outros.
  - O conjunto $B$ é unimodal, e sua moda é $1$.
  - O conjunto $C$ é bimodal, e suas modas são ${1, 2}$.
]
#colbreak()
=== Mediana <est.cent.mean>
#resumo[
  - É o valor que indica #attn[exatamente] o centro de um conjunto quando esse conjunto é ordenado.
  - Um conjunto é ordenado quando todos os seus valores seguem uma ordem crescente #attn[ou] decrescente.
]

#advertencia[
  Se o numero de objetos do conjunto for #attn[par] é calculado pela média aritmética dos #attn[dois] valores centrais.
]

#exemplo[
  Considere o conjunto $S = {5,2,8,4,7,8}$.\
  Ao ordernar (crescente) $S$ obtemos $S' = {2, 4, 5, 7, 8, 8}$.\

  Como esse conjunto é par precisamos obter os dois valores centrais.\
  Que neste caso são ${5,7}$.

  $M_d &= (5+7)/2\
   M_d &= 6
  $

  #conclusao[
    A mediana ($M_d$) de $S$ é 6.
  ]
]
