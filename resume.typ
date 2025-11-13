#import "template.typ": *

#show: resume.with(
  author: (
    firstname: "(Nixon) Yi Heng",
    lastname: "Cheng",
    email: "nixonyh06@gmail.com",
    phone: "(+60) 173389100",
    loc: "Malaysia",
    linkedin: "nixonyh",
    github: "nixonyh",
    url_name: "linktr.ee/voxell",
    url: "https://linktr.ee/voxell",
    youtube: "@voxelltech",
    itchio: "nixon-voxell",
    positions: (
      "Graphics Engineer",
      "\nTechnical Artist",
    ),
  ),
  date: datetime.today().display("[day] [month repr:long] [year]"),
)

#resume_section[Skills]

#skill_item("Languages", (
  "Rust",
  "C#",
  "WGSL",
  "HLSL",
  "GLSL",
  "Python",
  "Typescript",
  "C++",
  "Dart",
  "Java",
  "PHP",
  "R",
))

#skill_item("Expertise", (
  "Simulation",
  "Animation",
  "Graphics",
  "UI",
  "Parallel/Multithreading",
  "IoT",
  "AI",
))

#resume_section[Experience]

#work_experience_item_header(
  "Foresight Spatial Labs",
  "Software Developer",
  "Canada",
  "Oct. 2025 - Present",
)
#resume_item[
  - Co-host of Rust Malaysia. Help organize events, give talks, mentor, etc.
]

#work_experience_item_header(
  "Rust Malaysia",
  "Co-Host",
  "Malaysia",
  "Nov. 2023 - Present",
)
#resume_item[
  - Co-host of Rust Malaysia. Help organize events, give talks, mentor, etc.
]

#work_experience_item_header(
  "23 Bulbs",
  "Senior Graphics Engineer",
  "UK",
  "Sep. 2020 - Present",
)
#resume_item[
  - Develop GPU accelerated softbody physics engine.
  - Tools & pipeline for softbody authoring.
  - Craft beautiful visuals with custom rendering pipelines, shaders, etc.
]

#work_experience_item_header(
  "Configura",
  "R&D Software Engineer",
  "Malaysia",
  "July. 2025 - Sep. 2025",
)
#resume_item[
  - Develop the next generation of CET using masonry and vello.
  - Develop POC webview using ReactJS.
]

#work_experience_item_header(
  "Hedra",
  "Software Engineer",
  "US",
  "Mar. 2024 - Jul. 2024",
)
#resume_item[
  - Create animation systems for generating keyframe animations that can be imported and exported.
  - Deal with different types of animation e.g. character rig, blend poses, flame poses, transform, etc.
  - All in the Bevy game engine using Rust.
]

// #work_experience_item_header(
//   "APU Game Development Club",
//   "Head of Events",
//   "KL, Malaysia",
//   "Feb. 2023 - April. 2024",
// )
// #resume_item[
//   - Organize and manage events for the club.
// ]

// #work_experience_item_header(
//   "Fiverr",
//   "Graphics Programmer",
//   "Remote",
//   "Jun. 2020 - Aug. 2023",
// )
// #resume_item[
//   - Work on various client projects.
// ]

#work_experience_item_header(
  "Streamline Studios",
  "Intern Game Programmer",
  "KL, Malaysia",
  "May. 2022 - Aug. 2022",
)
#resume_item[
  - Develop Blender addon tools for artists.
  - Contributed to Bake n Switch project.
]

#resume_section[Open Source Projects]

#project_item_header(
  "MotionGfx",
  "https://github.com/voxell-tech/motiongfx",
)
#resume_item[
  Procedural motion graphics creation tool made using Bevy. (Highly inspired by Motion Canvas and Manim)
]

#project_item_header(
  "Velyst",
  "https://github.com/voxell-tech/velyst",
)
#resume_item[
  Interactive vector-based Typst content creator using Vello and Bevy.
]

#project_item_header(
  "Lumina",
  "https://github.com/nixonyh/lumina",
)
#resume_item[
  A top down, fast paced, objective based, PvP game, written in Rust, using the Bevy game engine,
  with custom global illumination solution and a fully vector graphics rendered UI.
]

#project_item_header(
  "Bevy Motion Matching",
  "https://github.com/voxell-tech/bevy_motion_matching",
)
#resume_item[
  A machine learning based motion matching animation system.
]

#project_item_header(
  "Boom Boom",
  "https://github.com/nixonyh/boomboom",
)
#resume_item[
  A survival bombing game developed entirely using Unity DOTS.
]

#project_item_header(
  "Omni Twin",
  "https://github.com/nixonyh/omnitwin",
)
#resume_item[
  A digital twin made in Unity for disaster awareness and prediction with custom GPU accelerated flood simulation system.
]

// #project_item_header(
//   "Bevy Vello Renderer",
//   "https://github.com/nixon-voxell/bevy_vello_renderer",
// )
// #resume_item[
//   - A minimal integration for rendering vector graphics using Vello in Bevy.
// ]

// #project_item_header(
//   "Unity TTS",
//   "https://github.com/nixon-voxell/UnityTTS",
// )
// #resume_item[
//   - Text to speech in Unity.
// ]

// #project_item_header(
//   "Unity Audio Visualizer",
//   "https://github.com/nixonyh/UnityAudioVisualizer",
// )
// #resume_item[
//   - Audio visualizer in Unity using Job System, Burst Compiler, and VFX Graph.
// ]

\
#box[
  #set text(size: 7pt, style: "normal")

  For a whole list of projects, head to #underline[#link("https://github.com/nixonyh")] (my GitHub profile) or
  #underline[#link("https://github.com/voxell-tech")] (Voxell GitHub profile) to have a look!\
  For a whole list of all my games, head on to #underline[#link("https://nixon-voxell.itch.io/")] for a look!
]

#resume_section[Education]

#education_item[
  Asia Pacific University of Technology & Innovation (APU)
][
  Bachelor of Science (Honours) in Computer Games Development
][
  #resume_gpa("3.95", "4.00")
][
  Aug. 2022 - Present
]

#education_item[
  Asia Pacific University of Technology & Innovation (APU)
][
  Diploma in Information & Communication Technology with a Specialism in Software Engineering
][
  #resume_gpa("3.80", "4.00")
][
  Jun. 2020 - Jul. 2022
]

#resume_section[Awards]

Certificates: #link("https://www.linkedin.com/in/nixonyh/details/honors/")

#award_item_header(
  "APICTA 2025 Awards",
  "Nov. 2025",
)
#resume_item[
  - Winner
]

#award_item_header(
  "ACM SIGGRAPH KL Extra Credits 2025",
  "Sep. 2025",
)
#resume_item[
  - 3rd Place
]

#award_item_header(
  "MDEC PDTI Outstanding Student Category 2023",
  "Mar. 2024",
)
#resume_item[
  - 1st Place
]

#award_item_header(
  "2023 4th All American DAVINCI International Innovation and Invention Expo",
  "Sep. 2023",
)
#resume_item[
  - Gold Medal
  - ATIP Special Award
  - OCIIP Special Award
  - TISIAS Special Award
]

#award_item_header(
  "DB-SNUbiz Global Startup Challenge 2023",
  "Sep. 2023",
)
#resume_item[
  - Finalist
]

#award_item_header(
  "2023 INNOVERSE Innovation & Invention Expo",
  "Aug. 2023",
)
#resume_item[
  - Gold Medal
  - INNOPA Special Award
  - Canadian Spacial Award of Excellence
]

#award_item_header(
  "The 12th World Invention Creativity Olympic 2023",
  "Jul. 2023",
)
#resume_item[
  - Gold Award
  - TISIAS Special Award
  - TUMMIAD Special Award
]

#award_item_header(
  "Virtual Innovation Competition 2023",
  "Jun. 2023",
)
#resume_item[
  - Gold Medal
]

#award_item_header(
  "34th International Invention, Innovation & Technology Exhibition",
  "May. 2023",
)
#resume_item[
  - Silver Medal
]

#award_item_header(
  "Hilti IT Competition 2023",
  "May. 2023",
)
#resume_item[
  - Semi-Finalist
]

#resume_section[Talks]

#item_and_link(
  "Parallel Programming (Rust Malaysia)",
  "https://www.linkedin.com/posts/nixonyh_rust-parallel-programming-talkworkshop-april-activity-7187841746981019649-T45N/",
)

#item_and_link(
  "Beauty of Shaders Talk (APUGDC)",
  "https://www.instagram.com/p/CtfxIu0vD3k/?img_index=2",
)

#item_and_link(
  "TEDx - Simulating Millions of Particles in a Digital Twin (BATxAPU Week)",
  "https://twitter.com/AsiaPacificU/status/1534062323346083840",
)

#resume_section[Media & Press Releases]

#item_and_link(
  "The Star (MDEC PDTI Outstanding Student Category 2023)",
  "https://www.thestar.com.my/news/education/2024/04/28/record-five-mdec-awards-for-apu",
)

#item_and_link(
  "The Star (Gold Medal @ Invention Innovation Competition in Canada 2023)",
  "https://www.thestar.com.my/starpicks/2023/11/16/next-gen-game-development-for-next-gen-professionals",
)

#item_and_link(
  "Open Gov (Gold Medal @ 12th World Invention Creativity Olympic 2023)",
  "https://opengovasia.com/rescueai-smart-city-disaster-management/",
)

#item_and_link(
  "APU News (MDEC PDTI Outstanding Student Category 2023)",
  "https://www.apu.edu.my/news/winning-habit-continues-apu",
)

#item_and_link(
  "APU News (Gold Medal @ 12th World Invention Creativity Olympic 2023)",
  "https://www.apu.edu.my/news/disaster-management-ai-powered-drone-wins-gold-medal-wico-2023",
)

#item_and_link(
  "APU News (1st Runner Up @ Intel AI Global Impact Festival 2023, 3rd Runner Up @ Petronas CHESS Symposium 2023)",
  "https://www.apu.edu.my/news/11-awards-prestigious-research-and-innovation-competitions-apu-students-staff",
)

#item_and_link(
  "APU News (Silver Medal @ ITEX 2023)",
  "https://www.apu.edu.my/news/apu-researchers-and-staff-received-7-awards-innovation-itex-23",
)

// #pagebreak()

// #resume_section[Skill Experiences]

// #skill_item(
//   "Unity 3D",
//   ("Familiar with ECS, Scriptable Render Pipelines, Job System, and shaders (including compute shaders).",)
// )
