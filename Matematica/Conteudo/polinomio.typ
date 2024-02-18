
== Polinômio
#resumo[
   Um polinômio nada mais é que a soma algébrica de monômios(expressão algébrica inteira composta \
    por letras e numeros), ou seja, são mais monômios separados por adição ou subtração entre si.
]
#exemplo[ 
   #tabela(blue)[ 
      |Tipo|Exemplo|
      |----|-------|
      |Monômio|$3x$|
      |Polinomio de uma variável|$3x^2 + 4x$|
      |Polinomio com mais de uma variável|$3x + 4y$|    
   ]
]

=== Grau de um polinômio
Para caulcular o grau de um polinômio devemos primeiro ver se ele se trata de um polinômio com uma variável, ou se têm mais de uma variável.

==== Polinômio de uma variável
O monômio de maior grau indica o grau do polinômio.
#exemplo[
   #tabela(green)[
      |Polinomio|Grau|
      |---------|----|
      |$3x^2 + 4x$|2|
      |$4x^5 - 21x^3 + x$|5|
      |$5a^2 - 2a$|2|
   ]
]

==== Polinomio com mais de uma variável
Se soma todos os expoentes de cada uma das variáveis.

#exemplo[
   #tabela(green)[
     |Polinomio|Grau|Expoentes|
     |---------|----|---------|
     |$a x$|2|$a=1$, $x=1$|
     |$x^2y^3$|5|$x=2$, $y=3$|
     |$x^3a^2b$|6|$x=3$, $a=2$, $b=1$|
   ]
]

#colbreak()
=== Adição de Polinomios
#info[
   Quando monômios possuem o mesmo grau e variavel eles podem ser simplificados.
]


#passo[
   #pergunta[
      Seja $P(x) = x^2 + 4x + 3$ e $Q(x) = 4x^2 - 2x + 4$.\
      Calcule o valor de $P(x) + Q(x)$.
   ]

   + Soma \
     #set text(red)
     $P(x)$ 
     #set text(black)
     $+$ 
     #set text(blue)
     $Q(x)$ \
     #set text(black)
     $=$ \
     #set text(red)
     $x^2 + 4x + 3$
     #set text(black)
     $+$ 
     #set text(blue)
     $4x^2 - 2x + 4$
   
   + Simplificar
     $2x^2 + 4x + 3 + 4x^2 - 2x + 4$ \
     #set text(red)
     $2x^2$
     #set text(black)
     $+$
     #set text(blue)
     $4x$
     #set text(black)
     $+ 3 +$
     #set text(red)
     $4x^2$
     #set text(black)
     $-$
     #set text(blue)
     $2x$
     #set text(black)
     $+ 4$ \
     #set text(red)
     $(2 + 4)x^2$
     #set text(black)
     $+$
     #set text(blue)
     $(4 - 2)x$
     #set text(black)
     $+ 3 + 4$ \
     $6x^2 + 2x + 7$
     
   #conclusao[
      A Soma de $P(x)$ e $Q(x)$ é $6x^2 + 2x + 7$
   ]
]

#colbreak()
=== Subtração de polinômios
#info[
   Não é muito diferente da adição, a unica diferença é que o polinômio inverso deverá ser calculado. 
]

#passo(title: "Inversão de um polinômio")[
   Para inverter o polinômio simplesmente inverta todos os sinais de cada um dos termos.

   #pergunta[
      Inverta o polinômio $Q(x) = 4x^2 - 2x + 4$.
   ]

   $Q(x)  &= 4x^2 - 2x + 4\
    -Q(x) &= -4x^2 + 2x - 4
   $

   #conclusao[
      O inverso de $Q(x)$ é $-4x^2 + 2x - 4$.
   ]
]

#passo[
   #pergunta[
      Seja $P(x) = x^2 + 4x + 3$ e $Q(x) = 4x^2 - 2x + 4$.\
      Calcule o valor de $P(x) - Q(x)$.
   ]

   + Inversão de $Q(x)$
     $Q(x)  &= 4x^2 - 2x + 4\
      -Q(x) &= -4x^2 + 2x - 4
     $
   + Soma \
     #set text(red)
     $P(x)$ 
     #set text(black)
     $+$ 
     #set text(blue)
     $-Q(x)$ \
     #set text(black)
     $=$ \
     #set text(red)
     $x^2 + 4x + 3$
     #set text(black)
     $+$ 
     #set text(blue)
     $(-4x^2) + 2x - 4$
   
   + Simplificar
     $2x^2 + 4x + 3 + (-4x^2) + 2x - 4 \
      2x^2 + 4x + 3 - 4x^2 + 2x - 4$
     #set text(red)
     $2x^2$
     #set text(black)
     $+$
     #set text(blue)
     $4x$
     #set text(black)
     $+ 3 $
     #set text(red)
     $-4x^2$
     #set text(black)
     $+$
     #set text(blue)
     $2x$
     #set text(black)
     $- 4$ \
     #set text(red)
     $(2 - 4)x^2$
     #set text(black)
     $+$
     #set text(blue)
     $(4 + 2)x$
     #set text(black)
     $+ 3 - 4$ \
     $-2x^2 + 6x - 1$
     
   #conclusao[
      A Subtração de $P(x)$ e $Q(x)$ é $-2x^2 + 6x - 1$
   ]
]

=== Multiplicação de polinomios
#info[
  Multiplicamos cada monômio do primeiro polinômio por um monômio do segundo.
]

#exemplo[
  Seja $P(x) = 2a^2 + b$ 
]
