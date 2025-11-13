// Const color.
#let color_darknight = rgb("#131A28")
#let color_darkgray = rgb("333333")

// Layout utility.
#let justify_align(left_body, right_body) = {
  block[
    #left_body
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}

#let justify_align_3(left_body, mid_body, right_body) = {
  block[
    #box(width: 1fr)[
      #align(left)[
        #left_body
      ]
    ]
    #box(width: 1fr)[
      #align(center)[
        #mid_body
      ]
    ]
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}

#let generate_contact(icon, contact, url: "") = {
  block[
    #icon
    #if url != "" {
      link(url)[#contact]
    } else {
      contact
    }
  ]
}

#let resume(author: (), date: "", body) = {
  set document(
    author: author.firstname + " " + author.lastname,
    title: "resume",
  )

  set text(
    font: "Source Sans Pro",
    lang: "en",
    size: 11pt,
    fill: color_darknight,
    fallback: false,
  )

  set page(
    paper: "a4",
    margin: (left: 15mm, right: 15mm, top: 10mm, bottom: 10mm),
    footer: context [
      #set text(fill: gray, size: 8pt)
      #justify_align_3[
        #smallcaps[#date]
      ][
        #smallcaps[
          #author.firstname
          #author.lastname
          #sym.dot.c
          #"Résumé"
        ]
      ][
        #counter(page).display()
      ]
    ],
    footer-descent: 0pt,
  )

  set par(justify: true, spacing: 0.75em)

  set heading(
    numbering: none,
    outlined: false,
  )

  let name = {
    align(left)[
      #pad(bottom: 5pt)[
        #block[
          #set text(size: 20pt, style: "normal", font: "Roboto")
          #text(weight: "thin")[#author.firstname]
          #linebreak()
          #text(weight: "bold")[#author.lastname]
        ]
      ]
    ]
  }

  let positions = {
    set text(
      size: 9pt,
      weight: "regular",
    )
    align(left)[
      #smallcaps[
        #author.positions.join(text[#"  "#sym.dot.c#"  "])
      ]
    ]
  }

  let contacts0 = {
    set box(height: 11pt)

    let email_icon = box(image("assets/icons/mail.svg"))
    let phone_icon = box(image("assets/icons/phone.svg"))
    let location_icon = box(image("assets/icons/location.svg"))
    let linkedin_icon = box(image("assets/icons/linkedin.svg"))

    align(left)[
      #generate_contact(email_icon, author.email, url: "mailto:" + author.email)
      #generate_contact(phone_icon, author.phone)
      #generate_contact(location_icon, author.loc)
      #generate_contact(
        linkedin_icon,
        author.linkedin,
        url: "https://linkedin.com/in/" + author.linkedin,
      )
    ]
  }

  let contacts1 = {
    set box(height: 11pt)

    let url_icon = box(image("assets/icons/url.svg"))
    let github_icon = box(image("assets/icons/github.svg"))
    let youtube_icon = box(image("assets/icons/youtube.svg"))
    let itchio_icon = box(image("assets/icons/itchio.svg"))

    align(left)[
      #generate_contact(url_icon, author.url_name, url: author.url)
      #generate_contact(
        github_icon,
        author.github,
        url: "https://github.com/" + author.github,
      )
      #generate_contact(
        youtube_icon,
        author.youtube,
        url: "https://youtube.com/" + author.youtube,
      )
      #generate_contact(
        itchio_icon,
        author.itchio,
        url: "https://itch.io/profile/" + author.itchio,
      )
    ]
  }

  align(left)[
    #box[
      #box(radius: 6pt, clip: true)[#image(
        "assets/images/me.jpg",
        height: 80pt,
      )]
      #h(8pt)
      #box[
        #name
        #positions
      ]
    ]
    #h(1fr)
    #box[#contacts0]
    #h(1fr)
    #box[#contacts1]
  ]

  body
}

// General style.
#let resume_section(title) = {
  set text(
    size: 16pt,
    weight: "regular",
    fill: white,
  )
  align(left)[
    #box(fill: black, inset: 4pt)[
      #smallcaps[
        // #text[#title.slice(0, 3)]#strong[#text[#title.slice(3)]]
        #strong[#text[#title]]
      ]
    ]
    #box(width: 1fr, line(length: 100%))
  ]
}

#let resume_item(body) = {
  set text(size: 10pt, style: "normal", weight: "light")
  set par(leading: 0.65em)
  body
}

#let resume_time(body) = {
  set text(weight: "light", style: "italic", size: 9pt)
  body
}

#let resume_degree(body) = {
  set text(size: 10pt, weight: "light")
  smallcaps[#body]
}

#let resume_organization(body) = {
  set text(size: 12pt, style: "normal", weight: "bold")
  body
}

#let resume_location(body) = {
  set text(size: 12pt, style: "italic", weight: "light")
  body
}

#let resume_position(body) = {
  set text(size: 10pt, weight: "regular")
  smallcaps[#body]
}

#let resume_category(body) = {
  set text(size: 11pt, weight: "bold")
  body
}

#let resume_gpa(numerator, denominator) = {
  set text(size: 12pt, style: "italic", weight: "light")
  text[Cumulative GPA: #box[#strong[#numerator] / #denominator]]
}

// Sections specific components.
#let education_item(organization, degree, gpa, time_frame) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  pad[
    #justify_align[
      #resume_organization[#organization]
    ][
      #gpa
    ]
    #justify_align[
      #resume_degree[#degree]
    ][
      #resume_time[#time_frame]
    ]
  ]
}

#let work_experience_item_header(
  position,
  company,
  location,
  time_frame,
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  pad[
    #justify_align[
      #resume_organization[#position]
    ][
      #resume_location[#location]
    ]
    #justify_align[
      #resume_position[#company]
    ][
      #resume_time[#time_frame]
    ]
  ]
}

#let project_item_header(
  name,
  url,
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  box(
    pad[
      #justify_align[
        #resume_organization[#name]
      ][
        #text(style: "italic", size: 8pt)[#link(url)]
      ]
    ],
  )
}

#let award_item_header(
  name,
  time,
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  pad[
    #justify_align[
      #resume_organization[#name]
    ][
      #resume_time[#time]
    ]
  ]
}

#let item_and_link(
  name,
  url,
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  let max_len = 100
  let url_len = url.len()
  let ending = if url_len > max_len {
    [...]
  } else { [] }

  pad[
    #resume_organization[#name]
    #resume_item[
      - #link(url)[#url.slice(0, calc.min(max_len, url_len)) #ending]
    ]
  ]
}

#let skill_item(category, items) = {
  set block(above: 1.0em, below: 1.0em)

  grid(
    columns: (18fr, 80fr),
    gutter: 10pt,
    align(right)[
      #resume_category[#category]
    ],
    align(left)[
      #set text(size: 11pt, style: "normal", weight: "light")
      #items.join(", ")
    ],
  )
}
