#let template_proceeding(
  title: none, 
  authors: (),
  abstract: [],
  keywords: [],
  affiliations: (),
  corps_du_texte,
  ) = {

  set page(
    paper: "a4", 
    margin: (x: 1.9cm, y: 1.9cm), 
    
  )

  set text(
    lang: "En",
    font: "Times New Roman",
    size: 10pt,
  )
  show figure.caption: emph
  show figure.where(kind: table): set figure.caption(position: top)
  show heading: set block(spacing: 1em)
  show heading.where(level: 1): it => block(text(size: 12pt,strong(upper(it.body))) + v(-0.5em))
  show heading.where(level: 2): it => block(text(size: 10pt, strong(it.body))+ v(-0.4em))
  
  set align(center)
  strong[#upper(text(14pt, title))]

  linebreak()

  text(12pt, style: "italic", authors.enumerate().map(((i, author)) => author.name + [ ] + super[#(author.affiliation.join(",") )]).join(", "))

  linebreak()

  text(12pt, affiliations.enumerate().map(((i, affiliations)) => super[#(affiliations.number.join(",") )] + affiliations.name + [ ]).join("and" + linebreak()))
  
  set align(left)

  set par(
    justify: true,
  )

  show: columns.with(2, gutter: 0.635cm)
  [
    = Abstract
    #h(0.635cm)
    #text(abstract)

    = keywords
    #h(0.635cm)
    #text(keywords)
  ]
  corps_du_texte
  set math.equation(numbering: n => numbering("(1)"))
}













