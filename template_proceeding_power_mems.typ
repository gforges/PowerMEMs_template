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

 
  set heading(numbering: none)
  show heading.where(level: 1): it => text(font: "Times New Roman",size: 12pt)[
    #set align(left)
    #strong(upper(it.body))
    ]
  show heading.where(level: 2): it => text(font: "Times New Roman",size: 10pt)[
    #set align(left)
    #strong(it.body)
    ]
 
  set align(center)
  strong[#upper(text(14pt,font: "Times New Roman", title))]
  [ \ ]

  text(12pt, font: "Times New Roman", style: "italic", authors.enumerate().map(((i, author)) => author.name + [ ] + super[#(author.affiliation.join(",") )]).join(", "))
  [ \ ]

  text(12pt, font: "Times New Roman", affiliations.enumerate().map(((i, affiliations)) => super[#(affiliations.number.join(",") )] + affiliations.name + [ ]).join("and "))

  set text(
    lang: "En",
    font: "Times New Roman",
    size: 12pt,
  )
  set par(
    justify: true,
    first-line-indent: 0.635cm,
  )
  set align(left)

  show: columns.with(2, gutter: 0.635cm)

  [
    = abstract
    #text(font:"Times New Roman", abstract)
    
    = keywords
    #text(font:"Times New Roman", keywords)
  ]
 
  corps_du_texte
  set math.equation(numbering: n => numbering("(1)"))
}













