# `aula` - Um sistema de tipografia para anotações escolares.

## Features

- Separação entre código compartilhado e código relacionado a uma matéria especifica.
- Geração de glossário automática
- Facilidade de criação de uma matéria nova

## Como criar uma nova matéria
*Opcional:* Crie uma nova pasta com o nome dessa matéria.

Crie um novo arquivo `.typ` com o nome dessa matéria, esse arquivo será a base de todos arquivos que forem desta mesma matéria.
```typst
// Tema aula
#import "../Core/prelude.typst": *

// Glossário vazio, por enquanto.
#let glossario = ()

#let portugues(doc) = [
    #show: aula(materia: [Portugûes], glossary: glossario, doc);
]
```

Para usar sua matéria, crie um novo arquivo e use:
```typst
#import "portugues.typ"

#show: portugues

= Seu texto aqui.
Descrição que você desejar
```

Veja um exemplo em [test.typ](test.typ). [Renderizado](test.pdf)


