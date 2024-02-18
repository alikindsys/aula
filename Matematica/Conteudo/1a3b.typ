#import "../../Core/prelude.typ": *

= Progressão Aritmética 
#resumo[
  É uma sequencia numérica onde a diferença entre cada número e seu antecessor resulta sempre em um mesmo valor.\
  Esse valor é denominado "razão".
]

#exemplo[
  $brace.l 2,4,6,8,10,12,14,16,18, dots.h.c brace.r$
]

#info[Vamos observar o que acontece quando subtraimos qualquer termo por seu antecessor\
  #passo[
    $18-16 &= 2\
     16-14 &= 2\
     14-12 &= 2 \
     dots.v &dots.v \
     4-2 &= 2
    $
  ]

  #conclusao[
    A razão da PA $brace.l 2,4,6,8,10,12,14,16,18, dots.h.c brace.r$\ é $2$.
  ]
]

#memo(title:[Termo geral de uma PA])[
  Observe que um termo subtraído de seu antecessor sempre resulta na razão.\
  Em uma PA, conseguimos escrever $n$ igualdades que seguem esse padrão, o que nos deixa criar um sistema de equações.\

  Somando as $n$ equações lado a lado, teremos:
  $a_2 - a_1 &= r \
   a_3 - a_2 &= r \
   a_4 - a_5 &= r \
   dots.v    &dots.v \
   a_n - a_(n-1) &= r \
   a_n - a_1 &= (n - 1)*r \
   a_n &= a_1 + (n - 1)*r
  $

  Através desta formula ($a_n &= a_1 + (n - 1)*r$) conseguimos identificar qualquer termo de uma progressão aritmética. \
]

#passo[
  #pergunta[
    Encontre o quinto termo da progressão exemplo.
  ]

  Sabemos que a progressão começa com 2. Logo $a_1 = 2$.\
  Queremos achar o quinto termo, então $n = 5$.\
  A razão da PA é 2, $r = 2$.\

  $a_n &= a_1 + (n - 1)*r\
    a_5 &= 2 + (5 - 1) * 2\
    a_5 &= 2 + (4) * 2\
    a_5 &= 10
  $

  #conclusao[
    O quinto termo ($a_5$) da PA $brace.l 2,4,6,8,10,12,14,16,18, dots.h.c brace.r$ é $10$.
  ]
]

#memo(title:"Soma de termos de uma PA finita")[
  Se quisermos identificar a soma de uma PA finita, podemos observar que em qualquer PA finita, a soma do primeiro e ultimo termo é igual a soma do segundo mais o penúltimo termo.\

  $S_n = a_1 + a_2 dots.h ++ a_(n-1) + a_n\
   a_1 + a_n = a_2 + a_(n-1) = dots.h
  $

  Se agruparmos os numeros em pares e todos os pares tem o mesmo valor, o valor da soma da PA então será o produto dessa soma pela quantidade de elementos da PA, dividido por dois, pois estamos somando esses numeros "dois a dois".\
  Ficamos assim com a seginte fórmula:\
  $S_n = ((a_1 + a_n)*n)/2$
]

#passo[
  #pergunta[
    Encontre a soma da seguinte PA finita:\
    $brace.l 2,4,6,8,10,12,14,16 brace.r$
  ]

  O primeiro elemento é 2. $a_1 = 2$\
  O último elemento é 16. $a_n = 16$ \
  A PA possui 8 elementos. $n = 8$ \

  $S_n &= ((a_1 + a_n)*n)/2 \
   S_n &= ((2 + 16)*8)/2  \
   S_n &= (18*8)/2 \
   S_n &= 144/2 \
   S_n &= 72
  $

  #conclusao[
    A Soma da PA finita  $brace.l 2,4,6,8,10,12,14,16 brace.r$ é $72$.
  ]
]

= Progressão Geométrica
#resumo[
    É uma sequencia numérica onde o quociente entre cada número e seu antecessor resulta sempre em um mesmo valor. \

    Em outras palavras, o número #attn[multiplicado] pela razão, resulta no próximo número.
]


#exemplo[
  $brace.l 2,4,8,16,32,64,128,256, dots.h.c brace.r$
]

#info[Vamos observar o que acontece quando dividimos qualquer termo por seu antecessor\
  #passo[
    $256/128 &= 2\
     128/64 &= 2\
     64/32 &= 2 \
     dots.v &dots.v \
     4/2 &= 2
    $
  ]

  #conclusao[
    A razão da PG $brace.l 2,4,8,16,32,64,128,256, dots.h.c brace.r$\ é $2$.
  ]
]

#memo(title:[Termo geral da PG])[
  Assim como na PA, existe uma formula capaz de encontrar qualquer termo de uma PG, sabendo o primeiro numero da PG ($a_1$), a posição do numero que queremos obter ($n$) e a razão ($r$).

  $a_n = a_1 * r^(n-1)$
]

#passo[
  #pergunta[
    Obtenha o nono valor da PG exemplo.
  ]

  $a_n &= a_1 * r^(n-1)\
   a_9 &= 2 * 2^(9-1)\
   a_9 &= 2 * 2^8 \
   a_9 &= 2 * 256 \
   a_9 &= 512
  $

  #conclusao[
    O nono valor da PG $brace.l 2,4,8,16,32,64,128,256, dots.h.c brace.r$\ é $512$.
  ]
]

#colbreak()
#memo(title: [Soma dos termos da PG])[
  Assim como na PA, existe uma formula capaz de calcular a soma de uma PG finita, sabendo o primeiro numero da PG ($a_1$), a quantidade de elementos ($n$) e a razão ($r$).

  $S_n = (a_1*(r^n - 1))/(r-1)$ 
]

#passo[
  #pergunta[
    Obtenha a soma dos dez primeiros valores da PG exemplo.
  ]

  $S_n &= (a_1*(r^n - 1))/(r-1)\
   S_n &= (2*(2^10 -1))/(2-1) \
   S_n &= (2 * (1024 - 1) )/(2-1) \
   S_n &= (2 * 1023) / cancel(1) \
   S_n &= 2046
  $

  #conclusao[
    A Soma dos dez primeiros elementos da PG é $2046$.
  ]
]

= Logarítmo
#resumo[
  O Logarítmo é a operação inversa da exponenciação e é utilizada para calculos de equações exponenciais que não possuem soluções imediatas.\
  Ou seja: $log_a b = x arrow.l.r.double a^x = b$.\
]

#info(title:"Nomenclatura")[
  $log_a b = x\
  a arrow.r "base"\
  b arrow.r "logaritmando"\
  x arrow.r "logaritmo"$
]

#advertencia[
  Um logarítmo só pode existir:
  - Quando sua base for diferente de zero e diferente de um
  - Seu logaritmando for maior que zero

  Ou seja:\ \
  $cases(
   a > 0 space "e" space a eq.not 1,
   b > 0)
   $ 
]

#exemplo[
  $log_6 36 = 2, "pois" 6^2 = 36 \
   log_2 16 = 4, "pois" 2^4 = 16 \
   log_(1/5) 5 = -1, "pois" (1/5)^(-1) = 5
  $
]

#info(title:"Logaritmo decimal")[
  Um logaritmo é considerado decimal quando a base dele é igual a 10.\
  #memo[
    É convencionado que quando um logaritmo é decimal não é necessário escrever a base.\
    
    $log_10 b arrow.l.r.double log b$
  ]
]

#info(title: "Logaritmo natural")[
  Um logaritmo é considerado natural quando a base dele é igual a $e$.

  #memo[
    Representamos um logaritmo natural por $ln$.\
    
    $log_e b arrow.l.r.double ln b$
  ]
]

== Propriedades

#info(title: "Multiplicação de fatores")[
  O Logaritmo é igual à soma dos logaritmos desses fatores.\
  $log_a (n*m) = log_a n + log_a m$
]

#info(title: "Divisão de fatores")[
  O logaritmo é igual a subtração dos logaritmos desses fatores.\
  $log_a (n/m) = log_a n - log_a m$
]

#info(title: "Exponenciação de fatores")[
  O logaritmo é igual a multiplicação do logaritmo pelo expoente da potência.\
  $log_a (b^n) = n * log_a b$
]

#info(title: "Radiciação de fatores")[
  O logarítmo é igual a multiplicação do logaritmo pelo inverso do indice da raiz.\
  $log_a (root(n,b)) = 1/n * log_a b$
]

#info(title: "Base elevada a uma potência")[
  O logarítmo é igual a multiplicação do logaritmo pelo inverso do expoente da base.\
  $log_a^n b = 1/n * log_a b$
]

== Mudança de base
#resumo[
  Em um logaritmo natural ($ln$) a base é $e$. Podemos mudar de base para a base decimal.
]

#passo[
  Sabemos que $ln a = log_e a$.\
  $log_e a = log_10 a / log_10 e$.\
  Como $log_10 e approx 0,43$, temos: \ \
  $log_e a &= (log_10 a) / (0,43) \
           &= 1/(0,43) * log a \
           &= 2,3 * log a 
  $

  #conclusao[
    Podemos trocar um logaritmo natural para base decimal se usarmos a seguinte fórmula:
    #memo[
      $ln a = 2,3 * log a$
    ]
  ]
]

#colbreak()
= Função logarítmica
#resumo[
  Uma funçao logarítmica é expressa da seguinte forma:\
  $f(x) = log_a x$.

  Sendo $a$ real e $a eq.not 1$.\
]

#exemplo[
  $f(x) = log_2 (x + 3)$

  #info(title: [Gráfico de $f(x)$])[
   #set text(size: 8pt)
   #cetz.canvas({
      import cetz.plot
      plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.north"
      , x-tick-step: 8, y-tick-step: 0.5, {
         plot.add(domain: (0, 64), label: $f(x) = log_2 (x + 3)$, f => (f, calc.log(calc.abs(f) + 3), 2) )
      }) 
   })
  ]
]

#info(title: "Crescimento e decrescimento")[
  O crescimento de uma função logaritmica é dependende em sua base.
  #memo[
    - Quando a base for maior que 1, a função é crescente.
    - Quando a base for maior que 0 e menor que 1, a função é decrescente.
  ]
]
#colbreak()
= Função exponencial
#resumo[
  Uma funçao exponencial é expressa da seguinte forma:\
  $f(x) = a^x$.\
  Onde $a$ é um numero real positivo e $a eq.not 1$.
]

#exemplo[
  $f(x) = 2^x$
  #info(title: [Gráfico de $f(x)$])[
   #set text(size: 8pt)
   #cetz.canvas({
      import cetz.plot
      plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.north"
      , x-tick-step: 1, y-tick-step: 8, {
         plot.add(domain: (0, 6), label: $f(x) = 2^x$, f => (f, calc.pow(2, f)) )
      }) 
   })
  ]
]

#info(title: "Crescimento e decrescimento")[
  O crescimento de uma função exponencial é dependende em sua base.
  #memo[
    - Quando a base for maior que 1, a função é crescente.
    - Quando a base for maior que 0 e menor que 1, a função é decrescente.
  ]
]

