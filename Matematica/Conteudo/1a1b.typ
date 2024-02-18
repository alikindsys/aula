 #import "../../Core/prelude.typ": *

= Notação Científica <notc>
#resumo[A notação científica é uma forma de escrever números usando potências de 10.]

Na notação científica os numeros são escritos da seguinte forma:

#set text(red)
$N$
#set text(black)
$*$
#math.attach([10], t:[#set text(blue);n])
#set text(black)

Onde #set text(red); N #set text(black); é um numero real maior que 1 e menor que 10.
e #set text(blue);n #set text(black); é um numero inteiro.

== Conversão

#exemplo(title:"Nûmeros maiores que 1")[
    $6590000000000000$

    1. #set text(blue);13 zeros #set text(black);e #set text(red);659
    #set text(black)
    2. 659 #set text(black); é maior que 1? #set text(green); sim. #set text(black); é menor que 10? #set text(red); não.
    3. Ande com a virgula para a esquerda até que 659 seja menor que 10.

      $659 &= 659*10^0 \ 659 &= 65,9 * 10^1 \ 659 &= 6,59*10^2$ 

    4. Some o numero de casas andadas com o numero de zeros.

       $6,59*$
       #math.attach([10], t:[#set text(blue);2+13])
    #set text(black)

   $6590000000000000 = 6,59*10^15$
]

#exemplo(title:"Nûmeros menores que 1")[
    $0,00039$

    1. #set text(blue);4 zeros #set text(black);e #set text(red);39
    #set text(black)
    2. 39 #set text(black); é maior que 1? #set text(green); sim. #set text(black); é menor que 10? #set text(red); não.
    3. Ande com a virgula para a esquerda até 39 seja menor que 10.

      $39 &= 39*10^0 \ 39 &= 3.9*10^1$      

    4. Somar o expoente de 39 aos 4 zeros.
      #advertencia[Como o numero é menor que zero, o expoente é negativo.]
      $0,00039 = 3.9*$
      #math.attach([10], t:[$-$#set text(blue);(1+4)])
    #set text(black)

   $0,00039 = 3,9*10^(-5)$
]

#pagebreak()
= Algarismos significativos e técnicas de arredondamento
== Algarismos significativos

#resumo[
   - São todos os algarismos relevantes para determinar a precisão de um número.
   - O #set text(red);último #set text(black); algarismo relevante é chamado de #set text(blue);"duvidoso"#set text(black);.
   - Zeros à #set text(red);esquerda #set text(black); do #set text(red);primeiro #set text(black); digito diferente de zero não são significativos.
   - Zeros à #set text(red);direita #set text(black); do #set text(red);ultimo #set text(black); digito diferente de zero não são significativos.
]

#exemplo[
   0,0000#set text(red);12301#set text(blue);2#set text(black);0000

   #set text(red);12,#set text(blue);6 #set text(black);cm
]

== Tecnicas de arredondamento

#resumo[
   - É a retirada de casas decimais consideradas menos relevantes de um numero real.
   - Representada pelo simbolo $approx$. Exemplo: $32.81 approx 32.8$.
]

#info(title:"Definições")[
   Para facilitar a compreensão, iremos definir uns termos:
   + Algarismo de interesse: O numero que ocupa a casa decimal a ser mantida 
   + Algarismo posterior: O numero logo após o algarismo de interesse
] <def>

Para arredondar um numero deve se determinar qual é o algarismo de interesse e seguir as seguinte regras:

#memo(title: "Posterior menor que 5")[
   O algarismo de interesse permanece inalterado.
   #exemplo[
      $2,314$\
      Interesse: 3 (dezenas)\
      Posterior: 1 (centena)\   
      $1<5$? #set text(green); sim. #set text(black);\
      Resposta: $2,3 approx 2,314$  
   ]
]

#memo(title: "Posterior maior que 5")[
   Acrecenta-se uma unidade ao algarismo de interesse.
   #exemplo[
      $35,182$\
      Interesse: 1 (dezenas)\
      Posterior: 8 (centena)\   
      $8>5$? #set text(green); sim. #set text(black);\
      Resposta: $35,2 approx 35,182$  
   ]
]

#memo(title: "Posterior igual à 5")[
   Nesse caso, é necessário analizar os algarismos subsequentes.
   
   #info(title:"Posterior é seguido por numero diferente de zero")[
      Acrecenta-se uma unidade ao algarismo de interesse.

      #exemplo[
         $6,25003$\
         Interesse: 2 (dezena)\
         Posterior: 5 (centena)\
         $6,3 approx 6,25003$
      ]
   ]

   #info(title:"Posterior é o ultimo algarismo ou seguido exclusivamente de zeros")[
      + Se o algarismo de interesse for par, permanece inalterado.
      + Se o algarismo de interesse for impar, acrecenta-se uma unidade.

      #exemplo[
         + $1,365$\
           Interesse: 6 (centena)\
           Posterior: 5 (milhar)\
           $6$ é par ou impar? #set text(green); par. #set text(black);\
           $1,36 approx 1,365$
         + $0,17500000$\
           Interesse: 7 (centena)\
           Posterior: 5 (milhar)\
           $7$ é par ou impar? #set text(green); impar. #set text(black);\
           $0,18 approx 0,175$
      ]
   ]
]

= Ordem de grandeza

#resumo[
   - É a análise dos numeros que estão em potências de 10.
   - Algumas ordens de grandeza possuem prefixos e simbolos específicos.
]

== Prefixos comuns
#color-table(blue)[
   |Prefixos|Notação Científica|Símbolo|
   |--------|------------------|-------|
   |Tera|$10^12$|T|
   |Giga|$10^9$|G|
   |Mega|$10^6$|M|
   |Kilo|$10^12$|k|
   |Deci|$10^(-1)$|d|
   |Centi|$10^(-2)$|c|
   |Milli|$10^(-3)$|d|
   |Micro|$10^(-6)$|$mu$|
   |Nano|$10^(-9)$|n|
   |Pico|$10^(-12)$|p|
]

#pagebreak()
== Comparação
Para comparar diferentes grandezas deve-se converter o numero para @notc[notação científica] e seguir as seguintes regras:
#memo(title:"Ordem de grandeza igual")[
   Compare os numeros antes da grandeza.
   #exemplo[
      $3,14*10^3$ e $8,12*10^3$\
      Comparar $3,14$ e $8,12$\
      $8,12 > 3,14$ logo:\
      $8,12*10^3 > 3,14*10^3$
   ]
]

#memo(title:"Ordem de grandeza distinta")[
   Compare as grandezas.
   #exemplo[
      $9,22*10^(-140)$ e $0,2*10^10$\
      Comparar $-140$ e $10$\
      $10 > (-140)$ logo:\
      $0,2*10^10 > 9,22*10^(-140)$
   ]
]

#colbreak()

= Unidades de Medida

== Unidades Fundamentais
#resumo[
   A unidade de medida é uma convenção usada para representar dimensões como por exemplo, o metro é uma unidade para medir um comprimento.
]

#color-table(blue)[
   |Grandeza|Nome|Símbolo|
   |--------|----|-------|
   |Comprimento|Metro|m|
   |Corrente Elétrica|Ampère|A|
   |Intensidade Luminosa|Candela|cd|
   |Massa|Quilogama|kg|
   |Quantidade de substância|Mol|mol|
   |Temperatura|Kelvin|K|
   |Tempo|Segundo|s|
]


== Unidades Derivadas
#resumo[
   Unidade composta é aquela formada por combinação (divisão e/ou multiplicação) de duas ou mais unidades, ou pela multiplicação de uma mesma unidade, formando, assim, uma nova unidade. 
]

#exemplo[
   #color-table(green)[
      |Grandeza|Relação|Símbolo|
      |--------|-------|--------|
      |Velocidade|$m/s$||
      |Aceleração|$m/s^2$|a|
      |Força|$"kg"*a$|N|
      |Densidade|$("kg")/m^3$||
   ]
]


= Erro de medição
#color-table(red)[
    |Competência|SAEB|
    |-----------|-------|
    |EM13MAT313 |D15|
]

#resumo[ 
   - É a diferença entre o valor indicado pelo instrumento e o valor de referência.
   - Representado pelo símbolo $plus.minus$. Exemplo: $123.45"cm" plus.minus 2"mm"$ 
]

= Geometria
#resumo[
   É o estudo das formas presentes na natureza e das propriedades que essas formas possuem.\
   A Geometria é uma das três grandes áreas da Matemática.
]

#memo(title:"Perímetro de figuras planas")[
   #color-table(blue)[
      |Figura|Fórmula|
      |------|-------|
      |Triângulo|Soma dos lados|
      |Retângulo|$2b/h$|
      |Quadrado|$4l$|
      |Losango|$4l$|
      |Trapésio|Soma dos lados|
      |Círculo|$2pi*r$|
   ]
   #info(title:"Legenda")[
      #color-table(gray)[
         |Simbolo|Significado|
         |-------|-----------|
         |$b$|Base|
         |$h$|Altura|
         |$l$|Lado|
         |$pi$|$approx 3,14$|
         |$r$| Raio|
      ]
   ]
]

#memo(title:"Área de figuras planas")[
   #color-table(blue)[
      |Figura|Fórmula|
      |------|-------|
      |Triângulo|$(b*h)/2$|
      |Retângulo|$b*h$|
      |Quadrado|$l^2$|
      |Losango|$(D*d)/2$|
      |Trapésio|$((B+b)*h)/2$|
      |Círculo|$pi*(r^2)$|
   ]

   #info(title:"Legenda")[
      #color-table(gray)[
         |Simbolo|Significado|
         |-------|-----------|
         |$B$|Base Maior|
         |$b$|Base/Base menor|
         |$h$|Altura|
         |$l$|Lado|
         |$D$|Diagonal Maior|
         |$d$|Diagonal Menor|
         |$pi$|$approx 3,14$|
         |$r$| Raio|
      ]
   ]
]

= Trigonometria

== Triangulo retângulo
// Desenhar triangulo retângulo com lados nomeados
// angulos e linhas tracejadas que mostram qual cateto é oposto
// ou adjacente baseado nos angulos
// #cetz.canvas({
//    import cetz.draw: *
   
// })


#info(title:"Teorema de Pitágoras")[
   $"Hipotenusa"^2 &= "Oposto"^2 + "Adjacente"^2 \
   A^2 &= B^2 + C^2
   $
]


== Funções trigonométricas
// Seno, Cosseno e Tangente
#resumo[
   Relacionam o valor do ângulo em graus ou radianos com o valor da razão trigonométrica
]

#memo(title:"No Triangulo retângulo")[
   #info(title: "Seno")[
      $"Cateto Oposto"/"Hipotenusa"$
   ]

   #info(title: "Coseno")[
      $"Cateto adjacente"/"Hipotenusa"$
   ]

   #info(title: "Tangente")[
      $"Cateto oposto"/"Cateto adjacente"$
   ]
]

#memo(title:"Angulos notáveis")[
   #color-table(blue)[
      |Angulo|Seno|Cosseno|Tangente|
      |------|----|-------|--------|
      |30º|$1/2$|$sqrt(2)/2$|$sqrt(3)/2$|
      |45º|$sqrt(3)/2$|$sqrt(2)/2$|$1/2$|
      |60º|$sqrt(3)/3$|$1$|$sqrt(3)$|
   ]
]
