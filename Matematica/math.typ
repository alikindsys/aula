#import "../Core/prelude.typ": *


#let glossario-matematica = (
    Função:(
        description:[
            Uma função é uma relação de um conjunto $A$ com um conjunto $B$.
            Denotamos uma função por $f: A -> B, y(x) = f(x)$.
        ],
        link: [https://pt.wikipedia.org/wiki/Fun%C3%A7%C3%A3o_(matem%C3%A1tica)]
    )
)

#let matematica(doc) = [
#show: aula(materia: [Matemática], glossary: glossario-matematica, doc);
]
