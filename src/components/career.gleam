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
    html.h3([attribute.class("text-xl font-semibold")], [
      html.text(props.position),
    ]),
    html.div([attribute.class("flex")], [
      html.p([attribute.class("font-medium")], [
        html.text(props.company <> " (" <> props.location <> ") -"),
      ]),
      html.p([attribute.class("pl-1 font-small")], [html.text(props.period)]),
    ]),
    html.p([attribute.class("mt-2")], [html.text(props.description)]),
  ])
}
