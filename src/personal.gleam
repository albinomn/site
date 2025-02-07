import components/navbar/navbar
import lustre
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub type Msg {
  ToggleDarkMode
}

pub type Model {
  Model(dark_mode: Bool)
}

pub fn init(_) -> Model {
  Model(dark_mode: False)
}

pub fn update(model: Model, msg: Msg) -> Model {
  case msg {
    ToggleDarkMode -> Model(dark_mode: !model.dark_mode)
  }
}

pub fn view(model: Model) -> Element(Msg) {
  let navbar_props = navbar.new(model.dark_mode, ToggleDarkMode)

  html.div(
    [
      attribute.class(
        case model.dark_mode {
          True ->
            "dark bg-gray-800 bg-gradient-to-br from-bg-gray-800 to-gray-900"
          False ->
            "light bg-gray-100 bg-gradient-to-br from-bg-gray-100 to-gray-200"
        }
        <> " w-full mx-auto transition-all duration-300 p-3",
      ),
    ],
    [
      html.div([attribute.class("max-w-[1080px] mx-auto w-full ")], [
        navbar.view(navbar_props),
      ]),
    ],
  )
}

pub fn main() {
  let app = lustre.simple(init, update, view)

  let assert Ok(_) = lustre.start(app, "#app", Nil)

  Nil
}
