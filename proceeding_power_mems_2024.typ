#import "template_proceeding_power_mems.typ": template_proceeding
#show: corps_du_texte => template_proceeding(
  title: [
    My Paper
  ],
  authors: (
    (
    name: "David Smith",
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
#lorem(140)
== Motivation
#lorem(140)
== Problem Statement
#lorem(50)
= related work
#lorem(200)
