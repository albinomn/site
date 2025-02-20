import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub fn view() -> Element(a) {
  html.div([attribute.class("max-w-4xl mx-auto p-6")], [
    html.div(
      [attribute.class("relative border-l-4 border-slate-400 pl-6 space-y-8")],
      [
        html.div([attribute.class("relative mb-8")], [
          html.h3(
            [
              attribute.class(
                "text-xl font-semibold text-gray-600 dark:text-slate-200",
              ),
            ],
            [html.text("Full Stack Developer")],
          ),
          html.p(
            [attribute.class("font-medium text-slate-600 dark:text-slate-300")],
            [html.text("Gazin Tech (Remote) - March 2021 – October 2024")],
          ),
          html.p([attribute.class("mt-2")], [
            html.text(
              "Worked on e-commerce development, rewriting legacy code and adding new features, also helped develop a platform for the sales team.",
            ),
          ]),
        ]),
        html.div([attribute.class("relative mb-8")], [
          html.h3([attribute.class("text-xl font-semibold")], [
            html.text("Back-end Developer"),
          ]),
          html.p([attribute.class("text-gray-600")], [
            html.text("HartB Group (Remote) - November 2020 – December 2020"),
          ]),
          html.p([attribute.class("text-gray-500 mt-2")], [
            html.text(
              "Maintained a QR code manager system for TV advertisements, working with Angular and Node.",
            ),
          ]),
        ]),
        html.div([attribute.class("relative mb-8")], [
          html.h3([attribute.class("text-xl font-semibold")], [
            html.text("Full Stack Developer"),
          ]),
          html.p([attribute.class("text-gray-600")], [
            html.text(
              "Trade Technology (Maringá - Paraná) - October 2019 – October 2020",
            ),
          ]),
          html.p([attribute.class("text-gray-500 mt-2")], [
            html.text(
              "Developed products using Node, React, Express, and Postgresql. Maintained a system for a beverage company using Node, Angular, and Express.",
            ),
          ]),
        ]),
        html.div([attribute.class("relative mb-8")], [
          html.h3([attribute.class("text-xl font-semibold")], [
            html.text("Full Stack Developer"),
          ]),
          html.p([attribute.class("text-gray-600")], [
            html.text(
              "DevNinjas (Maringá - Paraná) - May 2019 – September 2019",
            ),
          ]),
          html.p([attribute.class("text-gray-500 mt-2")], [
            html.text(
              "Developed social media platforms for a contractor, handling both front-end and back-end using Node, React, Adonis, and Postgresql. Also contributed to a project using Django and Postgresql.",
            ),
          ]),
        ]),
      ],
    ),
  ])
}
