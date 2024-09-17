#import "template_proceeding_power_mems.typ": template_proceeding
#show: corps_du_texte => template_proceeding(
  title: [
    My Paper
  ],
  authors: (
    (
    name: "Gregoire Forges",
    affiliation: ("1","2"),
    ),
    (
    name: "Julian Ferrera",
    affiliation: ("1",), 
    ),
  ),

  affiliations: (
  (
    name : "Git hub"  ,
    number: ("1",)
  ),
  (
    name : "Typst"  ,
    number: ("2",)
  ),
  ),

  corps_du_texte,

  abstract: lorem(20),
  keywords: lorem(20),
  
)
= introduction
== Main focus
#h(0.635cm)
#lorem(140)

= test figure - image

#figure(
  align(center,image("test.jpg", width: 70%)),
  caption: [test image et légende],
)

#h(0.635cm)
#lorem(100)

= test figure - tab

#figure(
  table(
  columns: (1fr, auto, auto),
  inset: 10pt,
  align: center + horizon,
  table.header(
    [], [*Area*], [*Parameters*],
  ),
  "cylinder",
  $ pi h (D^2 - d^2) / 4 $,
  [
    $h$: height \
    $D$: outer radius \
    $d$: inner radius
  ],
  "tetrahedron",
  $ sqrt(2) / 12 a^3 $,
  [$a$: edge length]
), 
caption: [test tableau] 
)

Voici des exemples de citation d'article @hernandez_christelle_2015 ou de livre @flandrin_ecrire_nodate

#bibliography("test_pour_template.bib", style:"institute-of-electrical-and-electronics-engineers")