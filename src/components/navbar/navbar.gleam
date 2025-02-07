import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html
import lustre/event

pub opaque type NavbarProps(msg) {
  NavbarProps(msg: msg, dark: Bool, mobile_menu: Bool)
}

pub fn new(dark: Bool, msg: msg) {
  NavbarProps(msg, dark, False)
}

pub fn view(props: NavbarProps(msg)) -> Element(msg) {
  // Neumorphic classes based on dark mode

  let nav_shadow_classes = case props.dark {
    True ->
      "shadow-[4px_4px_6px_rgba(0,0,0,0.4),-4px_-4px_6px_rgba(255,255,255,0.1)]"
    False ->
      "shadow-[4px_4px_6px_rgba(0,0,0,0.1),-4px_-4px_6px_rgba(255,255,255,0.7)]"
  }

  let logo_classes = case props.dark {
    True ->
      "bg-gray-700 text-white shadow-[inset_2px_2px_4px_rgba(0,0,0,0.4),inset_-2px_-2px_4px_rgba(255,255,255,0.1)]"
    False ->
      "bg-gray-200 text-gray-800 shadow-[inset_2px_2px_4px_rgba(0,0,0,0.1),inset_-2px_-2px_4px_rgba(255,255,255,0.7)]"
  }

  let button_classes = case props.dark {
    True ->
      "bg-gray-800 text-white hover:bg-gray-700 "
      <> "shadow-[4px_4px_6px_rgba(0,0,0,0.4),-4px_-4px_6px_rgba(255,255,255,0.1)] "
      <> "active:shadow-[inset_2px_2px_4px_rgba(0,0,0,0.4),inset_-2px_-2px_4px_rgba(255,255,255,0.1)]"
    False ->
      "bg-gray-100 text-gray-800 hover:bg-gray-200 "
      <> "shadow-[4px_4px_6px_rgba(0,0,0,0.1),-4px_-4px_6px_rgba(255,255,255,0.7)] "
      <> "active:shadow-[inset_2px_2px_4px_rgba(0,0,0,0.1),inset_-2px_-2px_4px_rgba(255,255,255,0.7)]"
  }

  let link_classes = case props.dark {
    True -> "text-gray-300 hover:text-white cursor-pointer"
    False -> "text-gray-700 hover:text-gray-900 cursor-pointer"
  }

  // Mobile menu classes
  let mobile_menu_classes = case props.mobile_menu {
    True -> "block"
    False -> "hidden"
  }
  html.nav(
    [
      attribute.class(
        nav_shadow_classes
        <> " w-full rounded-xl p-4 transition-all duration-300",
      ),
    ],
    [
      html.div([attribute.class("max-w-7xl mx-auto px-4")], [
        html.div([attribute.class("flex justify-between items-center")], [
          // Logo section
          html.div([attribute.class("flex items-center")], [
            html.div(
              [
                attribute.class(
                  logo_classes
                  <> " w-10 h-10 rounded-full flex items-center justify-center transition-all duration-300",
                ),
              ],
              [html.span([attribute.class("font-bold")], [element.text("AN")])],
            ),
          ]),
          // Desktop navigation links
          html.div([attribute.class("hidden md:flex items-center space-x-6")], [
            html.a(
              [
                attribute.class(
                  link_classes <> " font-medium transition-all duration-300",
                ),
              ],
              [element.text("About")],
            ),
            html.a(
              [
                attribute.class(
                  link_classes <> " font-medium transition-all duration-300",
                ),
              ],
              [element.text("Log")],
            ),
            html.button(
              [
                attribute.class(
                  button_classes
                  <> " px-4 py-2 rounded-lg  transition-all duration-300 focus:outline-none",
                ),
                event.on_click(props.msg),
              ],
              [
                case props.dark {
                  False -> element.text("☀️")
                  True -> element.text("🌙")
                },
              ],
            ),
          ]),
        ]),
      ]),
    ],
  )
}
