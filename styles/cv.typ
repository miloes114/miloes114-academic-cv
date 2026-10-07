#let accent = rgb("#176b70")
#let ink = rgb("#273437")
#let muted = rgb("#657579")

#set page(
  paper: "a4",
  margin: (x: 18mm, y: 16mm),
  footer: context {
    set text(size: 7.5pt, fill: muted)
    grid(
      columns: (1fr, auto, 1fr),
      align: (left, center, right),
      [Camilo Escobar-Sierra · Academic CV],
      [Page #counter(page).display("1")],
      [Last updated: #datetime.today().display("[month repr:long] [year]")]
    )
  }
)

#set text(font: "Libertinus Serif", size: 11pt, fill: ink, hyphenate: false)
#set par(spacing: 0.65em, leading: 0.75em, justify: false)
#set list(tight: true, spacing: 0.25em)

#show heading.where(level: 1): it => {
  set text(font: "Libertinus Serif", size: 21pt, weight: "bold", fill: rgb("#173a3d"))
  block(above: 0pt, below: 3pt, sticky: true)[#it]
}

#show heading.where(level: 2): it => {
  set text(font: "Libertinus Serif", size: 13pt, weight: "bold", fill: accent)
  block(above: 11pt, below: 5pt, sticky: true)[#it]
}

#show heading.where(level: 3): it => {
  set text(font: "Libertinus Serif", size: 11.25pt, weight: "semibold", fill: rgb("#35676a"))
  block(above: 7pt, below: 2.5pt, sticky: true)[#it]
}

#show link: set text(fill: accent)
