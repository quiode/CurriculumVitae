
// libraries
#import "@preview/linguify:0.4.2": * // internalization

// My actual CV
#import "resume.typ": resume // resume template

// internalization settings
#let lang_data = toml("lang.toml")
#set-database(lang_data)

// general settings
#set text(lang: sys.inputs.at("lang", default: "en"))
#set document(title: linguify("title"), author: "Dominik Schwaiger")
// resume import
#show: doc => resume(
  doc,
  "Dominik Schwaiger",
  headlines: (
    ("10.03.2004, Bülach",),
    (link("mailto:mail@dominik-schwaiger.ch"),),
    (link("tel:+41787466828", "+41 78 746 68 28"),),
    ("Büelstrasse 6, 8863 Buttikon SZ",),
  ),
  avatar: "avatar.jpg",
  experiences: (
    (
      title: linguify("education"),
      events: (
        (
          title: "ETH " + linguify("zurich"),
          location: none,
          date: (start: "2023", end: linguify("now")),
          description: [#linguify("bsc_inf") \ #link(
              "https://thealternative.ch/en",
            )[TheAlternative (Open Source and Free Software Society)]],
          remark: "BP: 5.5",
        ),
        (
          title: linguify("ksw"),
          location: none,
          date: (start: "2018", end: "2022"),
          description: [
            #linguify("main_subject") \
            CodeCamp, Amnesty International
          ],
          remark: none,
        ),
      ),
    ),
    (
      title: linguify("experience"),
      events: (
        (
          title: linguify("intern_dev"),
          location: "c-alm AG",
          date: (start: linguify("december") + " 2022", end: "August 2023"),
          description: [
            #linguify("frontend"), #linguify("backend") \
            #linguify("deploy")
          ],
          remark: none,
        ),
        (
          title: linguify("intern_cs"),
          location: "Markant AG",
          date: (start: linguify("october") + " 2019", end: none),
          description: [#linguify("working_space"), IT-Support],
          remark: none,
        ),
      ),
    ),
    (
      title: linguify("additional"),
      events: (
        (
          title: linguify("cs_school"),
          location: none,
          date: (start: linguify("july") + " 2022", end: linguify("november") + " 2022"),
          description: linguify("rs"),
          remark: none,
        ),
        (
          title: linguify("unsw"),
          location: linguify("sydney"),
          date: (start: linguify("september") + " 2025", end: linguify("february") + " 2026"),
          description: linguify("exchange"),
          remark: none,
        ),
      ),
    ),
  ),
  custom: (
    (
      title: linguify("skills"),
      body: [
        #grid(
          columns: (1fr, 1fr),
          [
            === #linguify("languages")
            #linguify("german") - #linguify("mother_tongue") \
            #linguify("english") - C1 (7.5 in #link("https://ielts.org/take-a-test/test-types/ielts-academic-test", "IELTS Academic")) \
            #linguify("french") - #linguify("basic_knowledge")
          ],
          [
            === #linguify("cs_langs")
            Angular, Bootstrap, Springboot, Apache POI, Docker, Linux, Rust
          ],
        )
      ],
    ),
  ),
)

#align(
  bottom,
  text(size: 0.75em)[
    #line(length: 33%, stroke: 0.5pt)
    #linguify("source"): #link("https://github.com/quiode/CurriculumVitae") \
    #linguify("version_of") #datetime.today().display("[day].[month].[year]")
  ],
)
