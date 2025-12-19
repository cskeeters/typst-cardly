#import "card_param.typ": *
#import "@preview/markly:0.4.0"

//// Positioning Helpers

#let top-third(body) = {
  v(1fr)
  body
  v(2fr)
}

#let centered(body) = {
  v(1fr)
  body
  v(1fr)
}

//// Margin Helpers

#let to-cut-left(body) = {
  pad(left: bleed, y: bleed, body)
}

#let to-cut-right(body) = {
  pad(right: bleed, y: bleed, body)
}

#let margin(length:.5in, body) = {
  pad(x: length, y: length, body)
}

//// Layout

#let setup(it) = {
  // For 6x4 card from us-letter stock
  let markly-context = markly.setup(
    stock-width:stock-width,
    stock-height:stock-height,

    bleed: bleed,

    content-width: content-width,
    content-height:content-height,

    // -bleed means the cursor starts in the bleed area rather than the cut area
    margin-height: -bleed,
    margin-width: -bleed,
  )

  show: markly.page-setup.with(markly-context)

  it
}

#let card(front:[], inside-left:[], inside-right:[], back:[]) = {
  grid(
    columns: (1fr, 1fr),
    align: (horizon, horizon),
    back,
    front
  )

  pagebreak()

  grid(
    columns: (1fr, 1fr),
    align: (horizon, horizon),
    inside-left,
    inside-right
  )
}
