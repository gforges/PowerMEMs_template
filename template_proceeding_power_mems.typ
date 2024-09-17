#let template_proceeding(
  title: none, 
  authors: (),
  abstract: [],
  keywords: (),
  affiliations: (),
  corps_du_texte,
  ) = {

    set text(lang: "En")

  set page(
    paper: "a4", 
    margin: (x: 1.9cm, y: 1.9cm), 
  )

  set par(justify: true)
  
  set text(
    font: "PT sans",
    size: 10pt,
  )

  set heading(numbering: none)
  show heading.where(level: 1): it => text(font: "Times New Roman",size: 12pt)[
    #set align(left)
    #strong(smallcaps(it.body))\
    ]
  show heading.where(level: 2): it => text(font: "Times New Roman",size: 10pt)[
    #set align(left)
    #strong(it.body)\
    ]
 
  set align(center)
  strong[#smallcaps(text(14pt, title))]
  [ \ ]

  text(12pt, font: "Times New Roman", style: "italic", authors.enumerate().map(((i, author)) => author.name + [ ] + super[#(author.affiliation.join(",") )]).join(", "))
  [ \ ]

  text(12pt, font: "Times New Roman", affiliations.enumerate().map(((i, affiliations)) => affiliations.name + [ ] + super[#(affiliations.number.join(",") )]).join("and "))

  // for (num, aff) in affiliations {
  //   text(12pt, font: "Times New Roman", super[#(num)]+ [] + aff + [ ])
  // }
  
  set text(10pt)
  set par(justify: true)
  set align(left)

  show: columns.with(2)

  [
    = abstract
    #text(font:"Times New Roman", abstract)
    = keywords
    #text(font:"Times New Roman", keywords)
  ]
 
  corps_du_texte
  set math.equation(numbering: n => numbering("(1)"))
}













