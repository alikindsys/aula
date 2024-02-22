#import "../../Core/prelude.typ": *

#colbreak()
= Algebra Linear
== Matriz
#resumo[
  - É uma extrutura matématica disposta em tabela com operações matemáticas bem definidas.
]

#memo(title: "Representação")[
  - As matrizes são sempre representadas por uma letra maiuscula que são acompanhadas por índicies.
  - O #attn[primeiro] índice indica a quantidade de #attn[linhas].
  - O #attn[segundo] índice indica a quantidade de #attn[colunas].
  - $A_(m*n)$\
    Onde:\
    - $A$ é o nome da matriz
    - $m$ é a quantidade de linhas
    - $n$ é a quantidade de colunas
  #exemplo[
    $A_(1*3) = mat(1,2,3)\
     B_(3*1) = mat(1;2;3)\
     C_(2*3) = mat(1,2,3;4,5,6)$
  ]
]

#memo(title: "Matriz Quadrada")[
  Uma matriz é quadrada quando $m = n$.
  Em uma matriz quadrada temos dois elementos importantes:
  #info(title:[Diagonal Principal])[
    Formada por todos os elementos com indices iguais. Ou seja:\
    $a_(i j) "onde" i = j$.
  ]

  #info(title:[Diagonal Secundária])[
    Formada por todos os elementos com indices que quando somados é o numero que succede a ordem da matriz. Ou seja:\
    $a_(i j) "onde" i + j = n + 1$\
    Sendo $n$ a ordem da matriz.
  ]
]

#info(title:"Identidade")[
  Uma matriz é a matriz identidade quando todos os elementos da diagonal principal são iguais à $1$ e o resto são iguais à $0$.

  #exemplo[
    $I_4 = mat(1,0,0,0;0,1,0,0;0,0,1,0;0,0,0,1)\
     I_2 = mat(1,0;0,1)
    $
  ]
]

#info(title:"Nula")[
  Uma matriz é nula quando todos os seus elementos são iguais à 0.

  #exemplo[
    $O_4 = mat(0,0,0,0;0,0,0,0;0,0,0,0;0,0,0,0)\
     O_2 = mat(0,0;0,0)
    $
  ]
]

#info(title: "Escalonada")[
  Uma matriz é escalonada quando:
  - Todas as linhas contendo somente zeros estão no fundo da matriz.
  - O elemento inicial, chamado de "pivô" (primeiro elemento que não é zero) de cada linha não-nula, está a direita do pivô da linha superior.

  #exemplo[
    $mat(1,2,3,4;0,1,2,3;0,0,1,2;0,0,0,1;0,0,0,0)
    $
  ]
]

#info(title: "Escalonada Reduzida")[
  Uma matriz é escalonada reduzida quando:
  - Ela é escalonada.
  - O pivô de cada linha não-nula é igual à 1.
  - Todas as entradas na #attn[coluna] contendo um pivô igual à 1 são zeros.

  #exemplo[
    $A = mat(1,0,0;0,1,3;0,0,0)\
     B = mat(1,0,0;0,1,0;0,0,1)
    $
  ]
] <linalg.repr.redre>

=== Operações
#advertencia[
  Tanto adição quanto subtração requerem que as matrizes tenham a mesma ordem.
]

#info(title:"Adição")[
  - A adição de duas matrizes se dá somando cada elemento.
  - Ou seja: $A + B = [a_(i j) + b_(i j)]_(m*n)$

  #exemplo[
    $A = mat(1,2;2,3;0,-1)\
    B = mat(-1,2;0,-2;2,-3)\
    A+B = mat(0,4;2,1;2,-4)
    $
  ]
]

#info(title:"Subtração")[
  - A subtração de duas matrizes se dá subtraindo cada elemento.
  - Ou seja: $A + B = [a_(i j)- b_(i j)]_(m*n)$

  #exemplo[
    $A = mat(1,2;2,3;0,-1)\
    B = mat(-1,2;0,-2;2,-3)\
    A-B = mat(2,0;2,5;-2,2)
    $
  ]
]

#info(title:"Multiplicação de um numero")[
  - A multiplicação de uma matriz por um numero se dá multiplicando cada elemento pelo numero.
  - Ou seja: $t * A = [t * a_(i j)]_(m*n)$

  #exemplo[
    $A = mat(1,2;2,3;0,-1)\
    2*A = mat(2,4;4,6;0,-2)
    $
  ]
]

#info(title:"Multiplicação de matrizes")[
  - A multiplicação de uma matriz por outra matriz não é tão trivial quanto a subtração ou adição.
  - Para realizar a multiplicação, o numero de colunas da primeira matriz deve ser igual ao numero de linhas da segunda.
  - A matriz produto possui uma ordem dada pela quantidade de linhas da primeira e colunas da segunda.
  - Ou seja: $A_(attn(m) * n) * B_(n * attn(r)) = C_(attn(m*r))$
  
  #exemplo[
    + Se multiplica cada linha da primeira matriz por uma coluna da segunda
    + O primeiro elemento de A é multiplicado ao primeiro elemento de B
    + O segundo elemento de A é multiplicado ao segundo elemento de B
    + E assim sucessivamente, até não terem mais elementos a serem multiplicados
    + Depois todos os multiplicandos são somados

    $A = mat(0,2,4;1,3,5)\
     B = mat(1,3;-2,2;0,4)\
     c_(1,1) = 0*1 + 2 * (-2) + 4 * 0 \
     c_(1,2) = 0*3 + 2 * 2 + 4 * 4 \
     c_(2,1) = 1 * 1 + 3 * (-2) + 5 * 0\
     c_(2,2) = 1 * 3 + 3 * 2 + 5 * 4 \
     A*B = mat(-4, 20;-5, 29)
    $
  ]
]


#info(title:"Inverso")[
  - Duas matrizes são inversas, se e somente se, $a_(i j) = -b_(i j)$.
  - Ou seja, todos os elementos devem ser numeros opostos.

  #exemplo[
    $A_(3*3) &= mat(1,-1,9;7,14,-8; 0,-5,-5)\
    -A_(3*3) &= mat(-1,1,-9;-7,-14, 8;0,5,5)$
  ]
]

#info(title:"Transposição")[
  - Duas matrizes são transpostas, se e somente se, $a_(i j) = b(j i)$.
  - Ou seja, basta tomar as linhas por colunas.

  #exemplo[
    $A = mat(1,5,4;3,7,0)_(2 * 3)\
    A^T = mat(1,3;5,7;4,0)_(3 * 2)$
  ]
]

=== Determinante <linalg.matx.det>
#resumo[

]

#memo(title:"Matriz 2x2")[
  - A determinante de uma matriz de ordem 2 é calculado pela diferença entre os produtos dos das diagonais.
  $A = mat(a, b; c, d)\
   det(A) = a * d - c * b
  $

  #exemplo[
    $A = mat(1,5;2,3)\
     det(A) = (1 * 3) - (2 * 5)\
     det(A) = 3 - 10 \
     det(A) = -7
    $
  ]
]

#memo(title:"Matriz 3x3")[
  - A determinante de uma matriz de ordem 3 é calculado seguindo:\
  $det(mat(delim:"[",a,b,c;d,e,f;g,h,i))&= a det(mat(delim:"[",e,f;h,i))\
   &- b det(mat(delim:"[",d,f;g,i))\
   &+ c det(mat(delim:"[",d,e;g,h))
  $
]

  #passo[
    $A = mat(delim:"[",2,1,-1;1,3,2;3,-2,1)\
    A_x = mat(delim: "[",3,2;-2,1)\
    A_y = mat(delim:"[",1,2;3,1)\
    A_z = mat(delim:"[",1,3;3,-2)\
    det(A) = 2 * det(A_x)\
    - (cancel(1 *) det(A_y))\
    + (-1) * det(A_z)\

    det(A_x) = (3 cancel(* 1)) - ((-2) * 2)\
    = 3 - (-4)\
    = 7\

    det(A_y) = (1 cancel(* 1)) - (3 * 2)\
    = 1 - 6\
    = -5\

    det(A_z) = (cancel(1 *) -2) - (3 * 3)\
    = (-2) - 9\
    = -11\
    $
  ]

  #passo(title:"Continuação")[
    $det(A) &= (2 * 7) \
    &- (-5)\ 
    &+ (-1 * (-11))\
    = 14 - (-5) + 11\
    = 30\
    $

    #conclusao[
      $det(A) = 30$
    ]
  ]
#colbreak()
== Equações Lineares
#resumo[
  - São expressões algébricas com igualdade e o maior expoente das suas incógnitas é $1$.
  - Elas possuem #attn[uma] só solução.
]

#exemplo[
  São exemplos de equações lineares:\
  $2x + y &= 7 arrow.r.bar "2 incógnitas (x,y)" \
   a + 4 &= -3 arrow.r.bar "1 incógnita (a)"
  $
]

#info(title:"Definição")[
  Uma equação linear pode ser descrita por:\
  $a_1 x_1 + a_2 x_2 + dots + a_n x_n = c$\
  Onde:
  - $c$ é uma constante
  - $a_1, dots, a_n$ é um coeficiente
  - $x_1, dots, x_n$ é uma incógnita
]
== Sistemas Lineares
#resumo[
  São formados por duas ou mais equações lineares que possuem suas incógnitas relacionadas.
]

#exemplo[
  São exemplos de sistemas lineares:\
  $cases(
    3x + 2y &= 6,
    2x + 3y &= 5 
  )\
  cases(
    2x + y &= 3,
    x + 2y &= -1 
  )
  $
]

#colbreak()
=== Sistemas lineares de duas equações e duas incógnitas
#resumo[
  São o tipo de sistema linear mais simples possível.
]

#memo(title:"Solução")[
  Esses sistemas podem ser resolvidos por vários métodos, como:
  - @linalg.22.subst[Substituição]
  - @linalg.22.cmp[Comparação]
  - @linalg.22.add[Adição]

  #info[
    Esses métodos #attn[não] são tão eficientes para resolver sistemas mais complexos.
  ]
]

#info(title:"Convenções")[
  - Nessa seção iremos adotar a convenção de chamar a #attn[primeira] equação de $A$ e a #attn[segunda] de $B$.
  - Todas as alterações feitas em uma equação serão demarcadas por traços ao lado do simbolo da equação, ex: $A'$, $B''$, etc.
  - A quantidade de traços denota o numero de modificações feitas nessa equação.
]

#colbreak()
==== Método da Substituição <linalg.22.subst>
#resumo[
  Consiste em isolar uma das incógnitas e realizar a Substituição na outra equação.
]

#passo[
  #pergunta[
    Considere o sistema linear:\
    $cases(
      x + 2y &= 5,
      3x - 5y &= 4
    )
    $
  ]

  + Isolar uma das incógnitas
    Na equação $A arrow.l.bar x + 2y = 5$, a incógnita $x$ não possui coeficiente, o que faz com que isolar o $x$ seja mais facil nessa equação.\

    Reescrevemos a equação assim:\
    $A arrow.l.bar x + 2y &= 5\
     A' arrow.l.bar x &= 5 - 2y
    $
  + Substituir $A'$ em $B$\
    Agora que temos uma equação com o $x$ isolado, podemos substituir o valor de $x$ na equação $B$.\
    $B arrow.l.bar 3x - 5y &= 4\
     B' arrow.l.bar 3(5 - 2y) - 5y &= 4\
    $ 
]

#passo(title:"Continuação")[
    3. Resolver o $y$ em $B'$\
    Como $B'$ tem apenas uma incógnita podemos resolver a equação normalmente.\
    $B' arrow.l.bar 3(5 - 2y) - 5y &= 4\
     (15 - 6y) - 5y &= 4\
     15 - 11y &= 4\
     -11y &= 4 - 15\
     -11y &= -11\
     y &= 1
    $
    4. Resolver $x$ em $A$\
    Como sabemos o valor de $y$ podemos substituir o valor na equação $A$ e resolver.\
    $A arrow.l.bar x + 2y &= 5\
     x + 2(1) &= 5\
     x + 2 &= 5\
     x &= 5 -2\
     x &= 3
    $

  
  #conclusao[
    A solução do sistema linear é ${3,1}$.
  ]
]

#colbreak()
==== Método da Comparação <linalg.22.cmp>
#resumo[
  Consiste em isolar uma das incógnitas nas #attn[duas] equações e igualar esses valores.
]

#passo[
  #pergunta[
    Considere o sistema linear:\
    $cases(
      2x + y &= 2,
      x + 3y &= -4
    )
    $
  ]

  + Isolar uma das incógnitas\
    Escolhemos isolar o $x$ em ambas as equações.
    $A arrow.l.bar 2x + y &= 2\
     A' arrow.l.bar x &= (2 - y)/2\
     B arrow.l.bar x + 3y &= -4 \
     B' arrow.l.bar x &= -4-3y 
    $
  + Igualar $A'$ e $B'$ já que $x = x$\
    $A' arrow.l.bar x &= (2 - y)/2\
     B' arrow.l.bar x &= -4-3y
    $\
    $A' &= B'\
     (2 - y)/2 &= -4 -3y
    $   
]

#passo(title:"Continuação")[
  3. Resolver $y$\
    $(2 - y)/2 &= -4 -3y \
     2-y &= 2(-4-3y)\
     2-y &= -8-6y\
     -y + 6y &= -8 -2\
     5y &= -10\ 
     y &= -2
    $
  4. Resolver $x$ em $B$\
    Escolhemos a equação $B$ pois nela $x$ não tem quociente.\
    $B arrow.l.bar x + 3y &= -4 \
     x &= -4 -3y\
     x &= -4 -3(-2)\
     x &= -4 + 6\
     x &= 2
    $

  #conclusao[
    A solução do sistema linear é ${2,-2}$
  ]
]

#colbreak()
==== Método da Adição <linalg.22.add>
#resumo[
  Consiste em multiplicar uma das equações para que a soma das equações elimine uma incógnita.
]

#passo[
  #pergunta[
    Considere o sistema linear:\
    $cases(
      5x - 4y &= -5,
      x + 2y &= 13
    )
    $
  ]
  + Multiplicar uma das equações para que uma incógnita seja eliminada.\
    Se multiplicarmos a equação $B$ por $2$, teremos $4y$ em $B$ e $-4y$ em $A$.\
    $cases(
      B arrow.l.bar x + 2y &= 13\
      B' arrow.l.bar 2x + 4y &= 26 (*2)
    )
    $
  + Somar $A$ com $B'$.\
    $A arrow.l.bar 5x - 4y &= -5 \
     B' arrow.l.bar 2x + 4y &= 26
    $\ \
    $A + B'\
    5x cancel(-4y) = -5\
    underline(2x cancel(+4y) &= 26)\
    7x &= 21\
    x &= 3
    $
  + Resolver $y$ em $B$\
    $B arrow.l.bar x + 2y &= 13\
     3 + 2y &= 13\
     2y &= 13-3\
     2y &= 10\
     y &= 5
    $
  
  #conclusao[
    A solução do sistema linear é ${3,5}$
  ]
]

=== Sistema linear de três equações e três incógnitas
#resumo[
  Adotamos novos métodos de resolução quando o sistema possui três equações e três incógnitas.
]

#memo(title:"Solução")[
  - Os métodos para solução desse tipo de sistema involvem a representação matricial.\
  - Os mais utilizados são:
    // + @linalg.cram[Regra de Crammer]
    + @linalg.gje[Eliminação Gauss-Jordan]
]

==== Representação matricial
#resumo[
  - Todo sistema de equação, incluindo o 2x2 pode ser representado por uma matriz.
  - Existem duas representações possiveis:
    + @linalg.matc[Matriz Completa]
    + @linalg.mati[Matriz Incompleta]
]

#exemplo[
  O sistema:\ \
  $cases(a_1 x_1 + a_2 x_2 + a_3 x_3 &= d,
   b_1 x_1 + b_2 x_2 + b_3 x_3 &= e,
   c_1 x_1 + c_2 x_2 + c_3 x_3 &= f)
  $\
  
  Pode ser representado por:
  #info(title:"Matriz Completa")[
    $mat(
    a_1, a_2, a_3, d;
    b_1, b_2, b_3, e;
    c_1, c_2, c_3, f;
    augment: #(-1)
    )$\
    Onde $d$, $e$ e $f$ são chamados de termos independentes.
  ] <linalg.matc>
  #info(title:"Matriz Incompleta")[
    $mat(
    a_1, a_2, a_3;
    b_1, b_2, b_3;
    c_1, c_2, c_3
    )$
  ] <linalg.mati>
]

#info(title: [Sistema linear exemplo])[
  Em todos os passo-a-passo iremos usar o seguinte sistema linear.\
  $cases(
    2x+y-z=3,
    x+3y+2z=4,
    3x-2y+z=-5
  )
  $\

  Esse sistema possui a seguinte @linalg.matc[representação matricial].\ \
  $mat(2,1,-1,3;1,3,2,4;3,-2,1,-5; augment: #(-1))
  $
]

#colbreak()
=== Eliminação de Gauss-Jordan <linalg.gje>
#resumo[
  É um metodo para resolver equações lineares utilizando @linalg.gje.ops[operações] aplicadas às #attn[linhas] da 
  @linalg.mati[matriz completa] visando transformar essa matriz em uma @linalg.repr.redre[escalonada reduzida].
]

==== Operações valídas <linalg.gje.ops>
#info[
  Seja $A$ a matriz de exemplo:\
  $A = mat(2,1,-1,3;1,3,2,4;3,-2,1,-5; augment: #(-1))$\
  Suas linhas são:
  - $L_1$: $mat(2,1,-1,3;augment: #(-1))$
  - $L_2$: $mat(1,3,2,4;augment: #(-1))$
  - $L_3$: $mat(3,-2,1,-5;augment: #(-1))$
]

#memo(title:"Troca")[
  Podemos trocar duas linhas entre sí.\
  $A = mat(2,1,-1,3;1,3,2,4;3,-2,1,-5; augment: #(-1))\
   A' = mat(1,3,2,4;2,1,-1,3;3,-2,1,-5; augment: #(-1)) <-> S(L_1,L_2)
  $
] <linalg.gje.op.swap>

#memo(title: "Multiplicação")[
  Podemos multiplicar uma linha por um número que  #attn[não] seja zero.\
  $A = mat(2,1,-1,3;1,3,2,4;3,-2,1,-5; augment: #(-1))\
   A' = mat(6,3,-2,9;1,3,2,4;3,-2,1,-5; augment: #(-1)) <-> L_1 * 3
  $
] <linalg.gje.op.mul>

#memo(title: "Adição / Subtração")[
  Podemos adicionar ou subtrair uma linha, ou seu multiplo, por outra linha\
  $A = mat(2,1,-1,3;1,3,2,4;3,-2,1,-5; augment: #(-1))\
   A' = mat(1,-2,-3,-1;1,3,2,4;3,-2,1,-5; augment: #(-1)) <-> L_1' = L_1 - L_2
  $
] <linalg.gje.op.add>

==== Algoritmo
#resumo[
  Para realizar a eliminação de Gauss-Jordan:
  + @linalg.gje.op.swap[Troque] as linhas para todas as linhas que tenham só zeros fiquem no fundo.
  + @linalg.gje.op.swap[Troque] as linhas para que a coluna com o #attn[maior número] inicial fique no #attn[topo].
  + @linalg.gje.op.mul[Multiplique] a coluna do topo por algum número que faça o pivô se tornar 1.
  + @linalg.gje.op.add[Adicione ou Subtraia] múltiplos da linha do topo nas outras linhas para que todas as outras entradas na coluna do pivô se tornem zero.
  + Repita os passos 2-4 na proxima coluna até que todos os pivôs se tornem 1. 
]

#passo[
    $A = mat(2,1,-1,3;1,3,2,4;3,-2,1,-5; augment: #(-1))\
        mat(3,-2,1,-5;2,1,-1,3;1,3,2,4; augment: #(-1)) <-> S(L_3, L_1)\
        mat(1,-2/3,1/3,-5/3;2,1,-1,3;1,3,2,4; augment: #(-1)) <-> L_1 * 1/3\
        mat(1,-2/3,1/3,-5/3;0,7/3,-5/3,19/3;1,3,2,4;augment: #(-1)) <-> L_2' = L_2 - 2L_1\
        mat(1,-2/3,1/3,-5/3;0,7/3,-5/3,19/3;0,11/3,5/3,17/3;augment: #(-1)) <-> L_3' = L_3 - L_1\
        mat(1,-2/3,1/3,-5/3;0,7,-5,19;0,11/3,5/3,17/3;augment:#(-1)) <-> L_2 * 3\
        mat(1,-2/3,1/3,-5/3;0,7,-5,19;0,11,5,17;augment: #(-1)) <-> L_3 * 3\
        mat(1,-2/3,1/3,-5/3;0,1,-5/7,19/7;0,11,5,17;augment: #(-1)) <-> L_2 * 1/7\
        mat(1,-2/3,1/3,-5/3;0,1,-5/7,19/7;0,0,90/7,-90/7;augment: #(-1)) <-> L_3' = L_3 - 11 L_2\
        mat(1,-2/3,1/3,-5/3;0,1,-5/7,19/7;0,0,1,-1; augment: #(-1)) <-> L_3 * 7/90
    $
]

#passo(title:[Redução para matriz identidade])[
  #memo[
    A Matriz identidade nos dará os valores de cada incógnita.
  ]
  $
    mat(1,-2/3,1/3,-5/3;0,1,0,2;0,0,1,-1;augment:#(-1)) <-> L_2' = L_2 + 5/7L_3\
    mat(1,-2/3,0,-4/3;0,1,0,2;0,0,1,-1;augment:#(-1)) <-> L_1' = L_1 - 1/3L_3\
    mat(1,0,0,0;0,1,0,2;0,0,1,-1;augment:#(-1)) <-> L_1' = L_1 + 2/3L_2
  $
]

#conclusao[
  A solução do sistema linear exemplo é ${0,2,-1}$.
]
