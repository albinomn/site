import components/container
import components/timeline
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub fn view() -> Element(a) {
  html.div([], [
    container.view([
      html.div([attribute.class(" md:flex ")], [
        html.img([
          attribute.class("w-72"),
          attribute.src(
            "https://media.discordapp.net/attachments/1014167799209402371/1338960528537813033/80b194a7-80e4-4bc7-a670-b02207f226fc_removalai_preview.png?ex=67acfbaa&is=67abaa2a&hm=eea532df12d5f14c8ce7a9625e7ba19e754a896cdab8591ec83ff4c1daa43c62&=&format=webp&quality=lossless",
          ),
        ]),
        html.div(
          [
            attribute.class(
              "p-4 mt-3 md:mt-0 max-h-72 custom-scrollbar transition-all shadow-neu-inner dark:shadow-dark-neu-inner",
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
    ]),
    timeline.view(),
  ])
}
