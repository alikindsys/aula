#import "packages.typ": chic-hdr, gentle-clues, gloss-awe, oxifmt, tablem, tablex

#import chic-hdr: *
#import gentle-clues: *
#import tablem: tablem
#import tablex: tablex, hlinex
#import gloss-awe: *

#let aula(
  materia: [],
  glossary: (),
  doc
) = {

set page(
  paper: "a4",
  // ABNT 
  margin: (bottom: 2.0cm, right: 2.0cm ,left: 3.0cm, top: 3.0cm),
  columns: 2
)

set text(
  font: "Bree Serif",
  lang: "por",
  region: "br",
  size: 12pt
)

set par(
  justify: true,
  linebreaks: "optimized"
)

// set quote(block: true)

show figure.where(kind: "jkrb_glossary"): it => [#link(<glossar>)[#it.body]]

show: chic.with(
  chic-header(
    left-side: emph(chic-heading-name(fill:true)),
    right-side: smallcaps(materia)
  ),
  chic-footer(
    left-side: strong("Grupo de Estudos do Bloco Vermelho"),
    right-side: chic-page-number()
  ),
  chic-separator(1pt)
)

doc

[
= Glossário <glossar>
Essa secção contém o glossário automáticamente gerado.
]

make-glossary(glossary)
}

#let color-table(rgb, rest) = {
  let original = color.oklab(rgb).components()
  let darker = color.oklab(80%, original.at(1), original.at(2),100%)
  let lighter = color.oklab(90%,original.at(1), original.at(2),100%)

  let func = tablem.with(
    render: (columns: auto, ..args) => {
      tablex(
        columns: columns,
        auto-lines: false,
        align: center + horizon,
        map-rows: (row, cells) => cells.map(c =>
          if row != 0 {
            (..c, fill: if calc.odd(row) { darker } else { lighter } )
          } else {
            (..c, fill: color.luma(80%))
          }
        ),
        ..args
      )
    }
  )

  func(rest)
}

#let pt_abstract(title: auto, ..args) = abstract(
  title: if (title != auto) { title } else {"Resumo"},
  ..args
)

#let pt_info(title: auto, ..args) = info(
  title: if (title != auto) { title } else {"Informação"},
  ..args
)

#let pt_question(title: auto, ..args) = question(
  title: if (title != auto) { title } else {"Pergunta"},
  ..args
)

#let pt_memo(title: auto, ..args) = memo(
  title: if (title != auto) { title } else {"Memorizar"},
  ..args
)

#let pt_task(title: auto, ..args) = task(
  title: if (title != auto) { title } else {"Tarefa"},
  ..args
)

#let pt_conclusion(title: auto, ..args) = conclusion(
  title: if (title != auto) { title } else {"Conclusão"},
  ..args
)


#let pt_tip(title: auto, ..args) = tip(
  title: if (title != auto) { title } else {"Dica"},
  ..args
)


#let pt_success(title: auto, ..args) = success(
  title: if (title != auto) { title } else {"Sucesso"},
  ..args
)


#let pt_warning(title: auto, ..args) = warning(
  title: if (title != auto) { title } else {"Advertência"},
  ..args
)

#let pt_error(title: auto, ..args) = error(
  title: if (title != auto) { title } else {"Erro"},
  ..args
)

#let pt_example(title: auto, ..args) = example(
  title: if (title != auto) { title } else {"Exemplo"},
  ..args
)

#let pt_quote(title: auto, ..args) = example(
  title: if (title != auto) { title } else {"Citação"},
  ..args
)










