import components/container
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html
import lustre/element/svg

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
    container.view([
      html.div([attribute.class("mb-4")], [
        html.h3([attribute.class("font-bold text-gray-600")], [
          element.text("Technologies:"),
        ]),
      ]),
      html.div([attribute.class("flex flex-wrap gap-4")], [
        html.div([attribute.class("group")], [
          html.button(
            [
              attribute.class(
                "px-4 py-2 rounded-xl flex "
                <> "text-gray-800 shadow-neu hover:shadow-neu-inner "
                <> "dark:text-gray-200 dark:shadow-dark-neu dark:hover:shadow-dark-neu-inner",
              ),
            ],
            [
              html.img([
                attribute.class(
                  "w-5 mr-1 transition-transform duration-500 group-hover:rotate-[360deg]",
                ),
                attribute.src("https://gleam.run/images/lucy/lucytiny.svg"),
              ]),
              element.text("Gleam"),
            ],
          ),
        ]),
        html.div([attribute.class("group")], [
          html.button(
            [
              attribute.class(
                "px-4 py-2 rounded-xl flex "
                <> "text-gray-800 shadow-neu hover:shadow-neu-inner "
                <> "dark:text-gray-200 dark:shadow-dark-neu dark:hover:shadow-dark-neu-inner",
              ),
            ],
            [
              html.img([
                attribute.class(
                  "h-5 mt-[2px] mr-1 transition-transform duration-500 group-hover:rotate-[360deg]",
                ),
                attribute.src(
                  "https://raw.githubusercontent.com/elixir-lang/elixir-lang.github.com/refs/heads/main/downloads/logos/elixir-drop-only.png",
                ),
              ]),
              element.text("Elixir"),
            ],
          ),
        ]),
        html.div([attribute.class("group")], [
          html.button(
            [
              attribute.class(
                "px-4 py-2 rounded-xl flex "
                <> "text-gray-800 shadow-neu hover:shadow-neu-inner "
                <> "dark:text-gray-200 dark:shadow-dark-neu dark:hover:shadow-dark-neu-inner",
              ),
            ],
            [
              html.img([
                attribute.class(
                  "w-4 mr-1 transition-transform duration-500 group-hover:rotate-[360deg]",
                ),
                attribute.src(""),
              ]),
              element.text("Go"),
            ],
          ),
        ]),
        html.div([attribute.class("group")], [
          html.button(
            [
              attribute.class(
                "px-4 py-2 rounded-xl flex "
                <> "text-gray-800 shadow-neu hover:shadow-neu-inner "
                <> "dark:text-gray-200 dark:shadow-dark-neu dark:hover:shadow-dark-neu-inner",
              ),
            ],
            [
              html.div(
                [
                  attribute.class(
                    "flex items-end mr-1 justify-end bg-blue-600 dark:bg-[#235a97] text-white text-xs w-6 h-6 font-bold rounded-sm "
                    <> "transition-transform duration-500 group-hover:rotate-[360deg]",
                  ),
                ],
                [element.text("TS")],
              ),
              element.text("TypeScript"),
            ],
          ),
        ]),
        html.div([attribute.class("group")], [
          html.button(
            [
              attribute.class(
                "px-4 py-2 rounded-xl flex "
                <> "text-gray-800 shadow-neu hover:shadow-neu-inner "
                <> "dark:text-gray-200 dark:shadow-dark-neu dark:hover:shadow-dark-neu-inner",
              ),
            ],
            [
              svg.svg(
                [
                  attribute.attribute("xmlns", "http://www.w3.org/2000/svg"),
                  attribute.attribute("viewBox", "0 0 512 512"),
                  attribute.class(
                    "w-6 mr-1 fill-blue-400 dark:fill-blue-300 transition-transform duration-500 group-hover:rotate-[360deg]",
                  ),
                ],
                [
                  svg.g(
                    [
                      attribute.attribute("stroke-width", "0"),
                      attribute.id("SVGRepo_bgCarrier"),
                    ],
                    [],
                  ),
                  svg.g(
                    [
                      attribute.attribute("stroke-linejoin", "round"),
                      attribute.attribute("stroke-linecap", "round"),
                      attribute.id("SVGRepo_tracerCarrier"),
                    ],
                    [],
                  ),
                  svg.g([attribute.id("SVGRepo_iconCarrier")], [
                    svg.title([], []),
                    svg.path([
                      attribute.attribute(
                        "d",
                        "M410.66,180.72h0q-7.67-2.62-15.45-4.88,1.29-5.25,2.38-10.56c11.7-56.9,4.05-102.74-22.06-117.83-25-14.48-66,.61-107.36,36.69q-6.1,5.34-11.95,11-3.9-3.76-8-7.36c-43.35-38.58-86.8-54.83-112.88-39.69-25,14.51-32.43,57.6-21.9,111.53q1.58,8,3.55,15.93c-6.15,1.75-12.09,3.62-17.77,5.6C48.46,198.9,16,226.73,16,255.59c0,29.82,34.84,59.72,87.77,77.85q6.44,2.19,13,4.07Q114.64,346,113,354.68c-10,53-2.2,95.07,22.75,109.49,25.77,14.89,69-.41,111.14-37.31q5-4.38,10-9.25,6.32,6.11,13,11.86c40.8,35.18,81.09,49.39,106,34.93,25.75-14.94,34.12-60.14,23.25-115.13q-1.25-6.3-2.88-12.86,4.56-1.35,8.93-2.79c55-18.27,90.83-47.81,90.83-78C496,226.62,462.5,198.61,410.66,180.72Zm-129-81.08c35.43-30.91,68.55-43.11,83.65-34.39h0c16.07,9.29,22.32,46.75,12.22,95.88q-1,4.8-2.16,9.57a487.83,487.83,0,0,0-64.18-10.16,481.27,481.27,0,0,0-40.57-50.75Q276,104.57,281.64,99.64ZM157.73,280.25q6.51,12.6,13.61,24.89,7.23,12.54,15.07,24.71a435.28,435.28,0,0,1-44.24-7.13C146.41,309,151.63,294.75,157.73,280.25Zm0-48.33c-6-14.19-11.08-28.15-15.25-41.63,13.7-3.07,28.3-5.58,43.52-7.48q-7.65,11.94-14.72,24.23T157.7,231.92Zm10.9,24.17q9.48-19.77,20.42-38.78h0q10.93-19,23.27-37.13c14.28-1.08,28.92-1.65,43.71-1.65s29.52.57,43.79,1.66q12.21,18.09,23.13,37t20.69,38.6Q334,275.63,323,294.73h0q-10.91,19-23,37.24c-14.25,1-29,1.55-44,1.55s-29.47-.47-43.46-1.38q-12.43-18.19-23.46-37.29T168.6,256.09ZM340.75,305q7.25-12.58,13.92-25.49h0a440.41,440.41,0,0,1,16.12,42.32A434.44,434.44,0,0,1,326,329.48Q333.62,317.39,340.75,305Zm13.72-73.07q-6.64-12.65-13.81-25h0q-7-12.18-14.59-24.06c15.31,1.94,30,4.52,43.77,7.67A439.89,439.89,0,0,1,354.47,231.93ZM256.23,124.48h0a439.75,439.75,0,0,1,28.25,34.18q-28.35-1.35-56.74,0C237.07,146.32,246.62,134.87,256.23,124.48ZM145.66,65.86c16.06-9.32,51.57,4,89,37.27,2.39,2.13,4.8,4.36,7.2,6.67A491.37,491.37,0,0,0,201,160.51a499.12,499.12,0,0,0-64.06,10q-1.83-7.36-3.3-14.82h0C124.59,109.46,130.58,74.61,145.66,65.86ZM122.25,317.71q-6-1.71-11.85-3.71c-23.4-8-42.73-18.44-56-29.81C42.52,274,36.5,263.83,36.5,255.59c0-17.51,26.06-39.85,69.52-55q8.19-2.85,16.52-5.21a493.54,493.54,0,0,0,23.4,60.75A502.46,502.46,0,0,0,122.25,317.71Zm111.13,93.67c-18.63,16.32-37.29,27.89-53.74,33.72h0c-14.78,5.23-26.55,5.38-33.66,1.27-15.14-8.75-21.44-42.54-12.85-87.86q1.53-8,3.5-16a480.85,480.85,0,0,0,64.69,9.39,501.2,501.2,0,0,0,41.2,51C239.54,405.83,236.49,408.65,233.38,411.38Zm23.42-23.22c-9.72-10.51-19.42-22.14-28.88-34.64q13.79.54,28.08.54c9.78,0,19.46-.21,29-.64A439.33,439.33,0,0,1,256.8,388.16Zm124.52,28.59c-2.86,15.44-8.61,25.74-15.72,29.86-15.13,8.78-47.48-2.63-82.36-32.72-4-3.44-8-7.13-12.07-11a484.54,484.54,0,0,0,40.23-51.2,477.84,477.84,0,0,0,65-10.05q1.47,5.94,2.6,11.64h0C383.81,377.58,384.5,399.56,381.32,416.75Zm17.4-102.64h0c-2.62.87-5.32,1.71-8.06,2.53a483.26,483.26,0,0,0-24.31-60.94,481.52,481.52,0,0,0,23.36-60.06c4.91,1.43,9.68,2.93,14.27,4.52,44.42,15.32,71.52,38,71.52,55.43C475.5,274.19,446.23,298.33,398.72,314.11Z",
                      ),
                    ]),
                    svg.path([
                      attribute.attribute(
                        "d",
                        "M256,298.55a43,43,0,1,0-42.86-43A42.91,42.91,0,0,0,256,298.55Z",
                      ),
                    ]),
                  ]),
                ],
              ),
              element.text("React"),
            ],
          ),
        ]),
      ]),
    ]),
  ])
}
