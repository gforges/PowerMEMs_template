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
== Main focus
#h(0.635cm)
#lorem(140)

== Motivation
#h(0.635cm)
#lorem(140)

== Problem Statement
#h(0.635cm)
#lorem(50)

= related work
#h(0.635cm)
#lorem(200)
