import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub type CareerDescriptionProps {
  CareerDescriptionProps(
    company: String,
    position: String,
    location: String,
    period: String,
    description: String,
  )
}

pub fn view(props: CareerDescriptionProps) -> Element(a) {
  html.div([attribute.class("relative mb-8")], [
    html.h3(
      [
        attribute.class(
          "text-xl font-semibold text-gray-600 dark:text-slate-200",
        ),
      ],
      [html.text(props.position)],
    ),
    html.p([attribute.class("font-medium text-slate-600 dark:text-slate-300")], [
      html.text(
        props.company <> " (" <> props.location <> ") - " <> props.period,
      ),
    ]),
    html.p([attribute.class("mt-2 text-slate-600 dark:text-slate-300")], [
      html.text(props.description),
    ]),
  ])
}
