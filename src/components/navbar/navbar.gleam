import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html
import lustre/event

pub opaque type NavbarProps(msg) {
  NavbarProps(toogle_dark: msg, toogle_menu: msg, dark: Bool, open_menu: Bool)
}

pub fn new(
  dark: Bool,
  open_menu: Bool,
  toogle_dark: msg,
  toogle_menu: msg,
) -> NavbarProps(msg) {
  NavbarProps(toogle_dark, toogle_menu, dark, open_menu)
}

pub fn view(props: NavbarProps(msg)) -> Element(msg) {
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
    True -> "text-gray-300 hover:text-white cursor-pointer "
    False -> "text-gray-700 hover:text-gray-900 cursor-pointer "
  }

  // Mobile menu classes
  let mobile_menu_classes = case props.open_menu {
    True -> "block h-full"
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
                  <> " w-12 h-12 rounded-full flex items-center justify-center transition-all duration-300",
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
                  <> " px-4 py-2 rounded-lg w-full transition-all duration-300 focus:outline-none",
                ),
                event.on_click(props.toogle_dark),
              ],
              [
                case props.dark {
                  False -> element.text("☀️")
                  True -> element.text("🌙")
                },
              ],
            ),
          ]),
          // Mobile Navigation
          // Mobile button
          html.div([attribute.class("md:hidden")], [
            html.label([attribute.class("flex flex-col gap-2 w-8")], [
              html.input([
                attribute.class("peer hidden"),
                attribute.type_("checkbox"),
                event.on_click(props.toogle_menu),
              ]),
              html.div(
                [
                  attribute.class(
                    "rounded-2xl h-[3px] w-1/2 bg-black duration-500 peer-checked:rotate-[225deg] origin-right peer-checked:-translate-x-[12px] peer-checked:-translate-y-[1px]",
                  ),
                ],
                [],
              ),
              html.div(
                [
                  attribute.class(
                    "rounded-2xl h-[3px] w-full bg-black duration-500 peer-checked:-rotate-45",
                  ),
                ],
                [],
              ),
              html.div(
                [
                  attribute.class(
                    "rounded-2xl h-[3px] w-1/2 bg-black duration-500 place-self-end peer-checked:rotate-[225deg] origin-left peer-checked:translate-x-[12px] peer-checked:translate-y-[1px]",
                  ),
                ],
                [],
              ),
            ]),
          ]),
        ]),
      ]),
      // Mobile Menu
      html.div(
        [
          attribute.class(
            mobile_menu_classes
            <> " md:hidden rounded-xl mt-4 p-4 overflow-hidden transition-all duration-300 ease-in-out",
          ),
        ],
        [
          html.div([attribute.class("space-y-3")], [
            html.a(
              [
                attribute.class(
                  link_classes
                  <> button_classes
                  <> " block px-3 py-2 rounded-lg text-center transition-all duration-300",
                ),
              ],
              [element.text("About")],
            ),
            html.a(
              [
                attribute.class(
                  link_classes
                  <> button_classes
                  <> " block px-3 py-2 rounded-lg text-center transition-all duration-300",
                ),
              ],
              [element.text("Log")],
            ),
            html.button(
              [
                attribute.class(
                  button_classes
                  <> " w-full px-3 py-2 rounded-lg text-center transition-all duration-300 focus:outline-none",
                ),
                event.on_click(props.toogle_dark),
              ],
              [
                case props.dark {
                  True -> element.text("☀️")
                  False -> element.text("🌙")
                },
              ],
            ),
          ]),
        ],
      ),
    ],
  )
}
