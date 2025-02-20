import components/container
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub fn view() -> Element(a) {
  html.footer([attribute.class("w-full bottom-0 left-0 mt-auto")], [
    container.view([
      html.div(
        [
          attribute.class(
            "flex items-center justify-center text-sm "
            <> "text-gray-800 "
            <> "dark:text-gray-200",
          ),
        ],
        [element.text("Made with Lustre")],
      ),
    ]),
  ])
}
