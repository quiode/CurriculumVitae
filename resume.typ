
// Generic Template for a CV, falls under the MIT License specified in the same folder as this file.
#let head(name, headlines) = {
  heading(text(size: 1.5em, upper(name)), level: 1)

  v(0.3cm)

  par(leading: 0.8em)[
    #for headline in headlines {
      headline.join(" " + sym.diamond.stroked + " ")
      linebreak()
    }
  ]
}

#let section(title, body) = {
  heading(upper(title), level: 2)
  line(length: 100%)

  pad(left: 1cm, body)
}

#let resume(doc, name, headlines: (), experiences: (), custom: (), avatar: none) = {
  set page(margin: (top: 0.6in, right: 0.75in, bottom: 0.6in, left: 0.75in))
  set text(font: "New Computer Modern", size: 11pt)
  // show raw: set text(font: "New Computer Modern Mono")

  align(center)[
    #if avatar == none {
      head(name, headlines)
    } else {
      grid(
        columns: (8fr, 2fr),
        align: center,
        head(name, headlines), box(image(avatar, width: 3.5cm), radius: 50%, clip: true, stroke: black),
      )
    }
  ]

  linebreak()

  for experience in experiences {
    section(experience.title)[
      #for event in experience.events {
        grid(
          columns: (2fr, 1fr),
          align: (left, right),
          strong(event.title)
            + if (event.location != none) {
              ", " + event.location
            },
          emph(
            event.date.start
              + if (event.date.end != none) {
                " - " + event.date.end
              },
          ),
        )

        v(-5pt)

        grid(
          columns: (2fr, 1fr),
          align: (left, right),
          event.description, event.remark,
        )

        v(0.5cm)
      }
    ]
  }

  for custom_section in custom {
    section(custom_section.title, custom_section.body)
  }

  // Rest of the document
  doc
}
