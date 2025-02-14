import components/about
import components/navbar
import lustre
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub type Msg {
  ToggleDarkMode
  ToggleMobileMenu
}

pub type Model {
  Model(dark_mode: Bool, open_mobile_menu: Bool)
}

pub fn init(_) -> Model {
  Model(dark_mode: False, open_mobile_menu: False)
}

pub fn update(model: Model, msg: Msg) -> Model {
  case msg {
    ToggleDarkMode -> Model(..model, dark_mode: !model.dark_mode)
    ToggleMobileMenu ->
      Model(..model, open_mobile_menu: !model.open_mobile_menu)
  }
}

pub fn view(model: Model) -> Element(Msg) {
  let navbar_props =
    navbar.new(
      model.dark_mode,
      model.open_mobile_menu,
      ToggleDarkMode,
      ToggleMobileMenu,
    )

  html.div(
    [
      attribute.class(
        case model.dark_mode {
          True ->
            "dark bg-gray-800 bg-gradient-to-br from-bg-gray-800 to-gray-900"
          False ->
            "light bg-gray-200 bg-gradient-to-br from-bg-gray-100 to-gray-200"
        }
        <> " transition-all duration-300 min-h-screen",
      ),
    ],
    [
      html.div([attribute.class("max-w-[1080px] mx-auto w-full p-4")], [
        navbar.view(navbar_props),
        about.view(),
      ]),
    ],
  )
}

pub fn main() {
  let app = lustre.simple(init, update, view)

  let assert Ok(_) = lustre.start(app, "#app", Nil)

  Nil
}
