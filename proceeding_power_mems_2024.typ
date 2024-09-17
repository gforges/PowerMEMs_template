#import "template_proceeding_power_mems.typ": template_proceeding
#show: corps_du_texte => template_proceeding(
  title: [
    electromechanical coupling coefficient: new approach to study auxetic piezoelectric harvesters
  ],
  authors: (
    (
      name: "G. Forges",
    affiliation: ("1","2"),
      
    ),
    (
      name: "D. Gibus",
      affiliation: ("1",) ,
      
    ),
  ),
  affiliations: ("1":"Université de Lorraine, France", 
  "2":"Univ. Savoie Mont Blanc, France"),

  abstract: [ceci est l'abstract du proceeding je veux tester la justification ainsi que la présence des deux colonnes],
  corps_du_texte,
  keywords: [Energy harvesting; Piezoelectricity; auxetic structures; coupling coefficient; material coefficients; energy ratio]
)

= introduction
#lorem(140)

== Motivation
#lorem(140)

== Problem Statement
#lorem(50)

= related Work
#lorem(200)
