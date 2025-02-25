import gleam/list
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

import components/career.{CareerDescriptionProps}

pub fn view() -> Element(a) {
  let experiences = [
    CareerDescriptionProps(
      "Gazin Tech",
      "Full Stack",
      "Remote",
      "March 2021 - October 2024",
      "Worked on e-commerce development, rewriting legacy code and adding new features, also helped develop a platform for the sales team",
    ),
    CareerDescriptionProps(
      "HartB Group",
      "Back-end Developer",
      "Remote",
      "November 2020 - December 2020",
      "Maintained a QR code manager system for TV advertisements, using Angular and Node",
    ),
    CareerDescriptionProps(
      "Trade Technology",
      "Full Stack Developer",
      "Maringá - Paraná",
      "October 2019 - October 2020",
      "Maintained and developed different products using Node, React, Express, and Postgresql",
    ),
    CareerDescriptionProps(
      "DevNinjas",
      "Full Stack Developer",
      "Maringá - Paraná",
      "May 2019 - September 2019",
      "Maintained and developed different plataforms and products using, primarily, Node, React, Adonis, and Postgresql.",
    ),
  ]

  html.div([attribute.class("max-w-4xl mx-auto p-6")], [
    html.div(
      [attribute.class("relative border-l-4 border-slate-400 pl-6 space-y-8")],
      list.map(experiences, fn(experience) { career.view(experience) }),
    ),
  ])
}
