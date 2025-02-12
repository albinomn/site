import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

type ContainerProps(a) =
  List(Element(a))

pub fn view(children: ContainerProps(a)) -> Element(a) {
  html.div(
    [
      attribute.class(
        "mt-3 min-h-12 w-full rounded-md p-4 "
        <> "shadow-neu dark:shadow-dark-neu text-gray-700 dark:text-gray-100 "
        <> "transition-all duration-300",
      ),
    ],
    children,
  )
}
