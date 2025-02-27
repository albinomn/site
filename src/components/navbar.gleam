import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html
import lustre/event
import lustre/ui/icon

pub opaque type NavbarProps(msg) {
  NavbarProps(toggle_dark: msg, toggle_menu: msg, dark: Bool, open_menu: Bool)
}

pub fn new(
  dark: Bool,
  open_menu: Bool,
  toggle_dark: msg,
  toggle_menu: msg,
) -> NavbarProps(msg) {
  NavbarProps(toggle_dark, toggle_menu, dark, open_menu)
}

pub fn view(props: NavbarProps(msg)) -> Element(msg) {
  html.nav(
    [
      attribute.class(
        "w-full rounded-md p-4 md:flex md:justify-between md:items-center "
        <> "shadow-neu dark:shadow-dark-neu "
        <> "transition-all duration-300",
      ),
    ],
    [
      // Logo section
      html.div([attribute.class("flex justify-between items-center")], [
        html.label(
          [attribute.class("w-10 h-7 cursor-pointer md:hidden relative ")],
          [
            html.input([
              attribute.type_("checkbox"),
              attribute.id("burguer"),
              attribute.class("hidden peer"),
              event.on_click(props.toggle_menu),
            ]),
            html.span(
              [
                attribute.class(
                  "absolute h-[2px] w-full bg-gray-800 dark:bg-gray-300 rounded-full transition-all duration-300 ease-in-out "
                  <> "origin-[left_center] "
                  <> "peer-checked:rotate-45 peer-checked:-translate-y-[3px]",
                ),
              ],
              [],
            ),
            html.span(
              [
                attribute.class(
                  "absolute h-[2px] w-full bg-gray-800 dark:bg-gray-300 rounded-full left-0 transition-all rotate-0 duration-300 ease-in-out "
                  <> "top-1/2 -translate-y-1/2 origin-[left_center] "
                  <> "peer-checked:opacity-0 peer-checked:w-0",
                ),
              ],
              [],
            ),
            html.span(
              [
                attribute.class(
                  "absolute h-[2px] w-full bg-gray-800 dark:bg-gray-300 rounded-full transition-all duration-300 ease-in-out "
                  <> "top-full -translate-y-full origin-[left_center] "
                  <> "peer-checked:-rotate-45 peer-checked:-translate-y-[3px]",
                ),
              ],
              [],
            ),
          ],
        ),
      ]),
      // Links section
      html.div(
        [
          attribute.class(
            "flex-col justify-center items-center md:block md:h-full ",
          ),
        ],
        [
          html.div(
            [
              attribute.class(
                "md:gap-4 md:flex md:h-12 font-medium "
                <> "text-gray-800 "
                <> "dark:text-gray-100 "
                <> "transition-all duration-300 md:overflow-visible "
                <> case props.open_menu {
                  True -> "h-28"
                  False -> "h-0 overflow-hidden"
                },
              ),
            ],
            [
              // html.button(
              //   [
              //     attribute.class(
              //       "rounded-md py-1 px-3 uppercase "
              //       <> "shadow-neu active:shadow-neu-inner "
              //       <> "dark:shadow-dark-neu dark:active:shadow-dark-neu-inner "
              //       <> "w-full",
              //     ),
              //   ],
              //   [icon.github_logo([attribute.class("w-2")])],
              // ),
              html.button(
                [
                  attribute.class(
                    "rounded-md py-1 px-3 uppercase "
                    <> "shadow-neu active:shadow-neu-inner "
                    <> "dark:shadow-dark-neu dark:active:shadow-dark-neu-inner "
                    <> "w-full",
                  ),
                ],
                [element.text("Log")],
              ),
              html.label(
                [
                  attribute.class(
                    "md:flex md:items-center cursor-pointer "
                    <> case props.open_menu {
                      True -> "absolute top-10 left-[60%]"
                      _ -> ""
                    },
                  ),
                ],
                [
                  html.div(
                    [
                      attribute.class(
                        "h-[30px] w-[60px] overflow-hidden rounded-full "
                        <> "bg-gradient-to-br from-bg-gray-800 to-gray-900 "
                        <> "shadow-neu-switch "
                        <> "dark:shadow-dark-neu-switch",
                      ),
                    ],
                    [
                      html.input([
                        attribute.type_("checkbox"),
                        attribute.name("check"),
                        attribute.value("check"),
                        attribute.class("hidden peer"),
                        event.on_click(props.toggle_dark),
                      ]),
                      html.div(
                        [
                          attribute.class(
                            "top-0 left-0 h-full w-[30px] rounded-[15px] "
                            <> "shadow-neu bg-sky-100 "
                            <> "dark:bg-sky-900 dark:shadow-slider "
                            <> "transition-all duration-[350ms] peer-checked:translate-x-full peer-checked:rotate-[120deg]",
                          ),
                        ],
                        [
                          case props.dark {
                            True ->
                              icon.moon([
                                attribute.class("text-gray-200 p-1 w-full"),
                              ])
                            False ->
                              icon.sun([
                                attribute.class("text-gray-800 p-1 w-full"),
                              ])
                          },
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  )
}
