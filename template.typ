// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(institutions: (), title: "", subtitle: "", authors: (), info: (), logo: none, body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set text(font: "New Computer Modern", lang: "vi")
  show math.equation: set text(weight: 400)
  set heading(numbering: "I.1.1.1.a.")

  
  // Page outline
  
  // Title page.
  // Institutions

  for inst in institutions {
    align(center + top,
      text(
        14pt,
        font: "New Computer Modern",
        inst,
      )
    )
    v(0.05fr)
  }

  
  
  // The page can contain a logo if you pass one with `logo: "logo.png"`.
  v(0.9fr)
  if logo != none {
    align(center, image(logo, width: 30%, fit: "stretch"))
  }
  v(0.9fr)

  //Title
  align(center, text(3em, weight: 900, title))
  v(0.5fr)
  //Subtitle
  align(center, text(1.5em, weight: 900, subtitle))

  v(0.7fr)
  // Authors info
  align(center,
    grid(
      columns: (auto, auto),
      column-gutter: 100pt,
      row-gutter: 10pt,      
      [*Người hướng dẫn:*], [*TS. Đỗ Đức Hạnh*],
      [*Sinh viên thực tập:*], [*Phạm Hoàng Hải*],
      [*Mã sinh viên:*], [*20000548*],
      [*Thời gian thực tập:*], [*15/02/2024 - 20/05/2024*]
    )
  )

  v(2.3fr)
  pagebreak()


  // Table of contents.
  outline(depth: 3, indent: true)
  pagebreak()


  // Main body.
  set par(justify: true)
  body
}