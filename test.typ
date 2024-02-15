#import "./Core/prelude.typ": *

#let teste(doc) = [
    #show: aula(materia: [Aula - Teste], glossary: (), doc)
]

#show: teste
= Aula
Sistema de tipografia para anotações escolares.

== Extensão do `gentle-clues` para português
#advertencia[`#advertencia[]`]
#cita[`#cita[]`]
#conclusao[`#conclusao[]`]
#dica[`#dica[]`]
#erro[`#erro[]`]
#exemplo[`#exemplo[]`]
#info[`#info[]`]
#memo[`#memo[]`]
#pergunta[`#pergunta[]`]
#resumo[`#resumo[]`]
#sucesso[`#sucesso[]`]
#tarefa[`#tarefa[]`]

== Tablelas coloridas

`#color-table(blue)`
#color-table(blue)[
  | *Name* | *Location* | *Height* | *Score* |
  | ------ | ---------- | -------- | ------- |
  | John   | Second St. | 180 cm   |  5      |
  | Wally  | Third Av.  | 160 cm   |  10     |
]

`#color-table(rgb("#af5ff5"))`
#color-table(rgb("#af5ff5"))[
  | *Name* | *Location* | *Height* | *Score* |
  | ------ | ---------- | -------- | ------- |
  | John   | Second St. | 180 cm   |  5      |
  | Wally  | Third Av.  | 160 cm   |  10     |
]

