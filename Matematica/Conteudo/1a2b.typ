#import "../../Core/prelude.typ": *

= Função 

#color-table(red)[
    |Competência|SAEB|
    |-----------|-------|
    |EM13MAT401\ EM13MAT404\ EM13MAT501\ EM13MAT502|D17,D18\ D19,D20 \ D21,D23\ D25|
]

#resumo[
   Uma função é uma relação matemática estabelecida entre duas variáveis
]
//TODO: Grafico de Domínio -> Contra domínio

#exemplo[
   + Função $y = (x*3)+3$
   #color-table(blue)[
      |$x$|$f(x)$|
      |---|------|
      |1|6|
      |2|9|
      |3|12|
      |4|15|
   ]
]

== Crescimento e Decrescimento
#info[
   - A função é crescente se $y$ aumenta toda vez que $x$ é aumentado.\
   - A função é decrescente se $y$ diminui toda vez que $x$ é aumentado. 
]

#exemplo(title:"Exemplo de função crescente")[
   Função $y = (x*3)+3$
   
   #color-table(blue)[
      |$x$|$f(x)$|
      |---|------|
      |1|6|
      |2|9|
      |3|12|
      |4|15|
   ]

   #set text(size: 8pt)
   #cetz.canvas({
      import cetz.plot
      plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.north"
      , x-tick-step: 1, y-tick-step: 3,{
         plot.add(domain: (0, 4), label: $f(x) = (x*3)+3$, f => (f,(f*3) + 3))
      }) 
   })
]

#exemplo(title:"Exemplo de função decrescente")[
      Função $y = (-3x)+3$
   
   #color-table(blue)[
      |$x$|$f(x)$|
      |---|------|
      |1|0|
      |2|-3|
      |3|-6|
      |4|-9|
   ]

   #set text(size: 8pt)
   #cetz.canvas({
      import cetz.plot
      plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.north"
      , x-tick-step: 1, y-tick-step: 3,{
         plot.add(domain: (0, 4), label: $f(x) = (-3x)+3$, f => (f,(f*-3) + 3))
      }) 
   })
]

== Função de primeiro grau
#resumo[
   Uma função do 1º grau é expressa da seguinte forma: \ 
   $y = a x + b$ ou $f(x) = a x + b$, onde $a$ e $b$ são números reais ($RR$) e $a eq.not 0$ \

   Também é chamada de função afim.
   ]
#exemplo[
   $y &= 13x - 12$
   
   #info(title:[Gráfico de $y &= 13x - 12$])[
      #set text(size: 8pt)
      #cetz.canvas({
         import cetz.plot
         plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.north"
         , x-tick-step: 1, y-tick-step: 10, {
            plot.add(domain: (0, 4), label: $f(x) = 13x-12$, f => (f,13*f - 12))
         }) 
      })
   ]
]

#passo[
   #pergunta[
      Determine a raiz da função $y = -2x + 10$
   ]
   Para determinar a raiz da função de primeiro grau, devemos considerar o valor de $x$ quando $y = 0$.

   + Separamos as incógnitas dos numeros conhecidos.
      $y &= -2x + 10\
      2x &= 10
      $
   + Resolvemos a equação.
      $2x &= 10\
      x &= 5 space.quad (div 2)\
      $
   + Verificamos se a solução é correta ($y = 0$)
      $y &= -2x + 10 \
      y &= (-2*5) + 10 space.quad (x arrow.r.bar 10)\
      y &= -10 + 10 \
      y &= 0
      $
   #conclusao[
      A raiz da função $y &= -2x + 10$ é $5$.
   ]
]

#colbreak()

== Função de segundo grau
#resumo[
   Uma função de segundo grau é expressa da seguinte forma: \
   $y = a x^2 + b x + c$ ou $f(x) = a x^2 + b x + c$ onde $a eq.not 0$.

   Também chamada de função quadratica.\
   Sempre é uma parábola.\
   Têm até duas raizes, uma positiva ($x'$) e outra negativa ($x''$), podendo não ter solução nos numeros reais.
]
#exemplo[
   $y = x^2 + x - 6$
   
   #info(title:[Gráfico de $y = x^2 + x - 6$])[
      #set text(size: 8pt)
      #cetz.canvas({
         import cetz.plot
         plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.north"
         , x-tick-step: 2, y-tick-step: 2.5,{
            plot.add(domain: (-4, 3), label: $f(x) = x^2 + x - 6$, f => (f,(f*f) + f - 6))
         }) 
      })
   ]
]

#memo(title:"Fórmula de Bhaskara")[
   #info[
      Para usar a fórmula de Bhaskara, a equação de segundo grau deve estar na forma reduzida.
      #exemplo(title:"Forma reduzida das equações de segundo grau")[
         $a x^2 + b x + c = 0$
      ]
   ]

   $Delta = b^2 - 4a c$\
   $x = (-b plus.minus sqrt(Delta))/2a$
]

=== Concavidade
#resumo[A concavidade da parábola é determinada pelo coeficiente $a$ da equação.\
   #memo[
      - Se $a > 0$ a concavidade da parabola é voltada para #attn([cima]).
      - Se $a < 0$ a concavidade da parabola é voltada para #attn([baixo]).
   ]
]

#exemplo(title:[Função com concavidade para cima)])[
   #set text(size: 8pt)
   #cetz.canvas({
      import cetz.plot
      plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.north"
      , x-tick-step: 2, y-tick-step: 2.5,{
         plot.add(domain: (-4, 3), label: $f(x) = x^2 + x - 6$, f => (f,(f*f) + f - 6))
      }) 
   })
]

#exemplo(title:[Função com concavidade para baixo])[
   #set text(size: 8pt)
   #cetz.canvas({
      import cetz.plot
      plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.north"
      , x-tick-step: 2, y-tick-step: 2.5,{
         plot.add(domain: (-3, 4), label: $f(x) = -x^2 + x - 6$, f => (f,-(f*f) + f - 6))
      }) 
   })
]

=== Ponto Maximo e Mínimo
#resumo[
   O ponto maximo ou minimo de uma função quadratica é o vertice da parábola.\
   - Uma função com concavidade para #attn[cima] possui #attn[ponto minimo].
   - Uma função com concavidade para #attn[baixo] possui #attn[ponto maximo].

   #memo[
      - $a<0$ é maximo.
      - $a>0$ é minimo.
   ]
]

#memo(title: [Calculo do vértice de uma parabola])[
   Como o vertice é um ponto em duas dimensões, precisamos calcular cada componente.\
   $"Componente X" arrow.l.bar X_v &= b/(2a)\
    "Componente Y" arrow.l.bar Y_v &= Delta/(4a)
   $

   O vértice da parabola então é: $\(X_v, Y_v\)$
]

#passo[
   #pergunta[
      Calcule o vértice da função $y = x^2 + 2x - 1$.
   ]

   Como $a=1, b=2, c= -1$, temos que $a>0$, logo a parabola tem concavidade voltada para cima e o vértice dela é o #attn[ponto minimo].

   + Calcule o Componente X.
     $X_v &= b/(2a)\
      X_v &= 2/(2*1) \
      X_v &= 1
     $
   + Calcule o Componente Y.
     $Y_v &= Delta/(4a) \
      Delta &= -b^2 - 4a c \ \
      Delta &= -2^2 - 4*1*-1 \
      Delta &= -4 - (4*-1) \
      Delta &= cancel(-4) + cancel(4) \
      Delta &= 0 \ \

      Y_v &= 0/4*1 \
      Y_v &= 0
     $
   
   #conclusao[
      O vértice da função $y = x^2 + 2x - 1$ é $\(1,0\)$.
   ]
]

=== Raizes
#resumo[
   A raiz de uma função são os valores de x que fazem $f(x) = 0$.\
   Uma função de segundo grau possui até 2 raizes.
]

#passo[
   #pergunta[
      Usando a função do exemplo.\
      Obtenha as raizes de $y = x^2 + x - 6$
   ]
   A resolução de uma equação do segundo grau depende do valor do delta ($Delta$). \
   #memo[
      Se $Delta > 0$, a equação possui duas raizes reais e distintas.\
      Se $Delta = 0$, a equação possui raizes iguais. \
      Se $Delta < 0$, a equação não possui raizes reais.
   ]
   + Extraia o valor de $a$, $b$ e $c$ \
      $y &= x^2 + x - 6 \
       y &= 1x^2 + 1x - 6 
      $
      $a = 1, b = 1, c = -6$
   + Calcule o valor do $Delta$ \
      $Delta &= b^2 - 4a c \
       Delta &= 1^2 - 4*1*(-6) \
       Delta &= 1 - 4*(-6) \
       Delta &= 1 - (-24) \
       Delta &= 25
      $   
]

#passo(title:"Continuação")[
   3. Resolva $x'$ e $x''$ \
      $x' &= (-b + sqrt(Delta))/(2a) \
         x' &= (-1 + sqrt(25))/2*1 \
         x' &= (-1 + 5)/2 \
         x' &= 4/2 \
         x' &= 2 \ \
         x'' &= (-b - sqrt(Delta))/(2a) \
         x'' &= (-1 - sqrt(25))/2*1 \
         x'' &= (-1 -5)/2 \
         x'' &= -3
      $
   
   #conclusao[
      As raizes da função $y = x^2 + x - 6$ são $2$ e $-3$.
   ]
]

#pagebreak()

== Função definida por partes
#resumo[ 
   Funções que podem ser expressas por diferentes sentenças algébricas para respectivos intervalos numéricos
]

#exemplo[
   $ f(x) := cases(
      -x-4 "se" x < 3,
      x^2-7 "se" 3 >= x >= 10,
      120/x + 5 "se" x > 10
   )$

   #info(title:[Gráfico de $f(x)$])[
      #set text(size: 8pt)
      #cetz.canvas({
         import cetz.plot
         plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.north"
         , x-tick-step: 2, y-tick-step: none,{
         plot.add(domain: (1, 12), f => {
            if f < 3 {
               return (f, -f - 4)
            }
            if f >= 3 and f <= 10 {
               return (f, calc.pow(f, 2) - 7)
            }
            if f > 10 {
               return (f, (120/f) + 5)
            }
            return (f,f)
         })
         plot.annotate({
            cetz.draw.rect((0,0),(3,-7), fill: rgb("#0074d96a"), stroke: none)
            cetz.draw.rect((3,2),(10,97), fill: rgb("#74d9006a"), stroke: none)
            cetz.draw.rect((10,0),(12,17), fill: rgb("#7400d96a"), stroke: none)
         })
      })
      })

   ]
]
 
#passo[
   #pergunta[
      Usando a função $f(x)$ dos exemplos.\
      Resolva $f(4)$.
   ]
   + Verifique qual condição é valida para o valor dado \
     $cancel(4 < 3, stroke: #red) "ou" 3 >= 4 >= 10 "ou" cancel(4 > 10, stroke: #red)$
   + Aplique a função equivalente \
     $f(x) &= X^2-7 \
      f(4) &= 4^2-7 \
      f(4) &= 16-7 \
      f(4) &= 9
     $
   #conclusao[
      $f(4) = 9$
   ]
]

#pagebreak()

== Transformação do grafico da função
#resumo[
   Ao aplicar algumas operações numa função o seu gráfico será transformado.\
]

#info[
   Nessa parte temos a convenção de que a função original $f(x)$ terá cor azul, e a função obtida pela transformação $g(x)$ terá cor vermelha. \
   A função $f(x)$ será sempre a mesma.
]

#let fn(f) = (-0.2 * (f + 1) * (f - 5) * (f - 2));


=== Translação horizontal (Eixo x)
#exemplo[    
   Translação de $a$ na direção do eixo $x$, para a esquerda se $a>0$ e para a direita se $a<0$.
   #set text(size: 8pt)
   #cetz.canvas({
      import cetz.plot
      plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.east"
      , x-tick-step: none, y-tick-step: none, y-min: -3, y-max: 3, x-min:-5, x-max: 8, {
         plot.add(domain: (-10, 10), label: $f(x)$, f => (f, fn(f)) )
         plot.add(domain: (-10, 10), label: $g(x) = f(x + a) $, f => (f, fn(f + 2)))
         plot.add(domain: (-10, 10), label: $g(x) = f(x - a)$, f => (f, fn(f - 2)))
      }) 
   })
]

#colbreak()
=== Translação Vertial (Eixo y)
#exemplo[
   Translação de $a$ na direção do eixo $y$, para a cima se $a>0$ e para a baixo se $a<0$.
   #set text(size: 8pt)
   #cetz.canvas({
      import cetz.plot
      plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.east"
      , x-tick-step: none, y-tick-step: none, y-min: -6, y-max: 6, x-min:-5, x-max: 8, {
         plot.add(domain: (-10, 10), label: $f(x)$, f => (f, fn(f)) )
         plot.add(domain: (-10, 10), label: $g(x) = f(x) + a $, f => (f, fn(f) + 2))
         plot.add(domain: (-10, 10), label: $g(x) = f(x) - a$, f => (f, fn(f) - 2))
      }) 
   })
]

=== Expansão (Eixo x)
#exemplo[
   Expansão ou contração segundo o fator $1/a$ na direção do eixo $x$.
   #set text(size: 8pt)
   #cetz.canvas({
      import cetz.plot
      plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.east"
      , x-tick-step: none, y-tick-step: none, y-min: -6, y-max: 6, x-min:-5, x-max: 8, {
         plot.add(domain: (-10, 10), label: $f(x)$, f => (f, fn(f)) )
         plot.add(domain: (-10, 10), label: $g(x) = f(a x)$, f => (f, fn(f * 2)))
         plot.add(domain: (-10, 10), label: $g(x) = f(x div a)$, f => (f, fn(f / 2)))
      }) 
   })
]

=== Expansão (Eixo y)
#exemplo[
   Expansão ou contração segundo o fator $a$ na direção do eixo $y$.
   #set text(size: 8pt)
   #cetz.canvas({
      import cetz.plot
      plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.east"
      , x-tick-step: none, y-tick-step: none, y-min: -6, y-max: 6, x-min:-5, x-max: 8, {
         plot.add(domain: (-10, 10), label: $f(x)$, f => (f, fn(f)) )
         plot.add(domain: (-10, 10), label: $g(x) = a f(x)$, f => (f, fn(f) * 2 ))
         plot.add(domain: (-10, 10), label: $g(x) = f(x) div a$, f => (f, fn(f)  / 2))
      }) 
   })
]
#colbreak()
=== Reflexão (Eixo x)
#exemplo[
   Reflexão em relação ao eixo $x$.
   #set text(size: 8pt)
   #cetz.canvas({
      import cetz.plot
      plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.east"
      , x-tick-step: none, y-tick-step: none, y-min: -6, y-max: 6, x-min:-5, x-max: 8, {
         plot.add(domain: (-10, 10), label: $f(x)$, f => (f, fn(f)) )
         plot.add(domain: (-10, 10), label: $g(x) = -f(x)$, f => (f, fn(f) * -1))
      }) 
   })
]

=== Reflexão (Eixo y)
#exemplo[
   Reflexão em relação ao eixo $y$.
   #set text(size: 8pt)
   #cetz.canvas({
      import cetz.plot
      plot.plot(axis-style: "school-book", size: (3,2), legend: "legend.east"
      , x-tick-step: none, y-tick-step: none, y-min: -6, y-max: 6, x-min:-6, x-max: 8, {
         plot.add(domain: (-10, 10), label: $f(x)$, f => (f, fn(f)) )
         plot.add(domain: (-10, 10), label: $g(x) = f(-x)$, f => (f, fn(f * -1)))
      }) 
   })
]