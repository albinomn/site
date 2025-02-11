import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html
import lustre/event
import lustre/ui/icon

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
  // let link_classes = case props.dark {
  //   True -> ""
  //   False -> ""
  // }

  // // Mobile menu classes
  // let mobile_menu_classes = case props.open_menu {
  //   True -> ""
  //   False -> "hidden"
  // }

  html.nav(
    [
      attribute.class(
        "shadow-neu dark:shadow-dark-neu w-full rounded-md p-4 flex justify-between items.center transition-all duration-300",
      ),
    ],
    [
      // Logo section
      html.div([attribute.class("flex items-center justify-center")], [
        html.div(
          [
            attribute.class(
              "w-12 h-12 rounded-full"
              <> " flex items-center justify-center transition-all duration-300"
              <> " text-gray-800 shadow-neu-inner"
              <> " dark:text-gray-100 dark:shadow-dark-neu-inner",
            ),
          ],
          [html.span([attribute.class("font-bold")], [element.text("AN")])],
        ),
      ]),
      // Links section
      html.div([attribute.class("items-center justify-center flex")], [
        html.button([], [element.text("Sobre")]),
        html.button([], [element.text("Log")]),
        html.label(
          [attribute.class("inline-flex items-center cursor-pointer")],
          [
            html.div(
              [
                attribute.class(
                  "bg-gradient-to-br from-bg-gray-800 to-gray-900"
                  <> "relative h-[30px] w-[60px] rounded-full overflow-hidden shadow-neu-switch dark:shadow-dark-neu-switch",
                ),
              ],
              [
                html.input([
                  attribute.type_("checkbox"),
                  attribute.name("check"),
                  attribute.value("check"),
                  attribute.class("hidden peer"),
                  event.on_click(props.toogle_dark),
                ]),
                html.div(
                  [
                    attribute.class(
                      "top-0 left-0 h-full w-[29px] rounded-[15px] shadow-neu bg-sky-100 dark:bg-sky-900 dark:shadow-slider duration-[350ms]   peer-checked:translate-x-[30px] peer-checked:rotate-[120deg]",
                    ),
                  ],
                  [
                    case props.dark {
                      True ->
                        icon.moon([attribute.class("inline text-gray-200 p-1")])
                      False ->
                        icon.sun([attribute.class("inline text-gray-800 p-1")])
                    },
                  ],
                ),
              ],
            ),
          ],
        ),
      ]),
    ],
  )
  // html.nav(
  //   [
  //     attribute.class(
  //       "shadow-[4px_4px_6px_rgba(0,0,0,0.1),-4px_-4px_6px_rgba(255,255,255,0.7)]"
  //       <> " dark:shadow-[4px_4px_6px_rgba(0,0,0,0.4),-4px_-4px_6px_rgba(255,255,255,0.1)]"
  //       <> " w-full rounded-xl p-4 transition-all duration-300",
  //     ),
  //   ],
  //   [
  //     html.div([attribute.class("max-w-7xl mx-auto px-4")], [
  //       html.div(
  //         [attribute.class("md:flex md:justify-between md:items-center")],
  //         [
  //           // Logo section
  //           html.div([attribute.class("flex items-center")], [
  //             html.div(
  //               [
  //                 attribute.class(
  //                   "bg-gray-200 text-gray-800 shadow-[inset_2px_2px_4px_rgba(0,0,0,0.1),inset_-2px_-2px_4px_rgba(255,255,255,0.7)]"
  //                   <> " dark:bg-gray-700 dark:text-white dark:shadow-[inset_2px_2px_4px_rgba(0,0,0,0.4),inset_-2px_-2px_4px_rgba(255,255,255,0.1)]"
  //                   <> " w-12 h-12 rounded-full flex items-center justify-center transition-all duration-300",
  //                 ),
  //               ],
  //               [
  //                 html.span([attribute.class("font-bold")], [element.text("AN")]),
  //               ],
  //             ),
  //           ]),
  //           // Desktop navigation links
  //           html.div(
  //             [attribute.class("hidden md:flex items-center space-x-6")],
  //             [
  //               html.a(
  //                 [
  //                   attribute.class(
  //                     "text-gray-700 hover:text-gray-900 cursor-pointer dark:text-gray-300 dark:hover:text-white font-medium transition-all duration-300",
  //                   ),
  //                 ],
  //                 [element.text("About")],
  //               ),
  //               html.a(
  //                 [
  //                   attribute.class(
  //                     "text-gray-700 hover:text-gray-900 cursor-pointer dark:text-gray-300 dark:hover:text-white font-medium transition-all duration-300",
  //                   ),
  //                 ],
  //                 [element.text("Log")],
  //               ),
  //               html.button(
  //                 [
  //                   attribute.class(
  //                     "bg-gray-100 text-gray-800 hover:bg-gray-200"
  //                     <> " active:shadow-[inset_2px_2px_4px_rgba(0,0,0,0.1),inset_-2px_-2px_4px_rgba(255,255,255,0.7)]"
  //                     <> " shadow-[4px_4px_6px_rgba(0,0,0,0.1),-4px_-4px_6px_rgba(255,255,255,0.7)]"
  //                     <> " dark:bg-gray-800 dark:text-white dark:hover:bg-gray-700"
  //                     <> " dark:active:shadow-[inset_2px_2px_4px_rgba(0,0,0,0.4),inset_-2px_-2px_4px_rgba(255,255,255,0.1)]"
  //                     <> " dark:shadow-[4px_4px_6px_rgba(0,0,0,0.4),-4px_-4px_6px_rgba(255,255,255,0.1)]"
  //                     <> " px-4 py-2 rounded-lg w-full transition-all duration-300 focus:outline-none",
  //                   ),
  //                   event.on_click(props.toogle_dark),
  //                 ],
  //                 [
  //                   case props.dark {
  //                     False -> element.text("☀️")
  //                     True -> element.text("🌙")
  //                   },
  //                 ],
  //               ),
  //             ],
  //           ),
  //           // Mobile Navigation
  //         // Mobile button
  //         // html.div([attribute.class("md:hidden")], [
  //         //   html.label([attribute.class("flex flex-col gap-2 w-8")], [
  //         //     html.input([
  //         //       attribute.class("peer hidden"),
  //         //       attribute.type_("checkbox"),
  //         //       event.on_click(props.toogle_menu),
  //         //     ]),
  //         //     html.div(
  //         //       [
  //         //         attribute.class(
  //         //           "rounded-2xl h-[3px] w-1/2 bg-black duration-500 peer-checked:rotate-[225deg] origin-right peer-checked:-translate-x-[12px] peer-checked:-translate-y-[1px]",
  //         //         ),
  //         //       ],
  //         //       [],
  //         //     ),
  //         //     html.div(
  //         //       [
  //         //         attribute.class(
  //         //           "rounded-2xl h-[3px] w-full bg-black duration-500 peer-checked:-rotate-45",
  //         //         ),
  //         //       ],
  //         //       [],
  //         //     ),
  //         //     html.div(
  //         //       [
  //         //         attribute.class(
  //         //           "rounded-2xl h-[3px] w-1/2 bg-black duration-500 place-self-end peer-checked:rotate-[225deg] origin-left peer-checked:translate-x-[12px] peer-checked:translate-y-[1px]",
  //         //         ),
  //         //       ],
  //         //       [],
  //         //     ),
  //         //   ]),
  //         // ]),
  //         ],
  //       ),
  //     ]),
  //   ],
  // )
}
