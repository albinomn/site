import components/timeline
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub fn view() -> Element(a) {
  html.div([], [
    html.div([attribute.class(" md:flex pt-5 gap-4")], [
      html.img([
        attribute.class("w-72 p-2 shadow-neu dark:shadow-dark-neu"),
        attribute.src(
          "https://avatars.githubusercontent.com/u/43091506?s=400&u=d9e0f540eaa24476f70ed2148e6eaa9a9bc958d3&v=4",
        ),
      ]),
      html.div(
        [
          attribute.class(
            "p-4 mt-3 md:mt-0 max-h-72 custom-scrollbar shadow-neu  dark:shadow-dark-neu",
          ),
        ],
        [
          html.h2([attribute.class("font-semibold text-2xl")], [
            element.text("Hey there!"),
          ]),
          html.p([attribute.class("leading-relaxed inline")], [
            html.p([attribute.class("font-semibold inline text-lg")], [
              element.text("I’m Albino"),
            ]),
            html.p([attribute.class("inline")], [
              element.text(
                "—a creator, problem-solver, and speed enthusiast who thrives on precision, performance, and pushing limits. Whether it’s designing seamless digital experiences or shaving seconds off a lap time, I love the thrill of crafting something exceptional.",
              ),
            ]),
            html.p([], [
              element.text(
                "When I’m not deep in creative work, you’ll likely find me behind the wheel at a track day, enjoying the art of speed and control. There's something about the way a well-balanced machine flows through corners that mirrors the elegance of a well-structured idea—it’s all about rhythm, adaptability, and execution. Let’s build something amazing—or talk cars. Either way, I’m in.",
              ),
            ]),
          ]),
        ],
      ),
    ]),
    timeline.view(),
  ])
}
