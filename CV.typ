// My actual CV
#import "resume.typ": resume // resume template
#import "@preview/fontawesome:0.4.0": * // for icons

// general settings
#set text(lang: "de")
#set document(title: "Lebenslauf von Dominik Schwaiger", author: "Dominik Schwaiger")
// resume import
#show: doc => resume(
  doc,
  "Dominik Schwaiger",
  headlines: (
    (fa-cake-candles(solid: true) + " 10.03.2004, Bülach",),
    (fa-house(solid: true) + " Hofackerstrasse 3, 8722 Kaltbrunn",),
    (
      fa-envelope(solid: true) + " " + link("mailto:mail@dominik-schwaiger.ch"),
      fa-mobile(solid: true) + " " + link("tel:0787466828", "078 746 68 28"),
    ),
    (fa-globe(solid: true) + " " + link("https://dominik-schwaiger.ch"),),
  ),
  avatar: "avatar.jpeg",
  experiences: (
    (title: "Ausbildung", events: ((
      title: "ETH Zürich",
      location: none,
      date: (start: "2023", end: "jetzt"),
      description: [Bachelor Informatik],
      remark: "BP: 5.5"
    ), (
      title: "Kantonsschule Wattwil",
      location: none,
      date: (start: "2018", end: "2022"),
      description: [
        Schwerpunkt Physik und Anwendungen der Mathematik \
        CodeCamp, Amnesty International
      ],
      remark: none
    ))),
    (
      title: "Berufserfahrung",
      events: (
        (
          title: "Praktikant in der Entwicklung",
          location: "c-alm AG",
          date: (start: "Dezember 2023", end: "August 2024"),
          description: [
            Frontend mit Angular und Bootstrap, Backend mit Spring Boot und Apache POI \
            Deployen von neuen Projekten mit Docker
          ],
          remark: none
        ),
        (
          title: "Praktikant Informatik",
          location: "Markant AG",
          date: (start: "Oktober 2019", end: none),
          description: [Einrichten von Arbeitsplätzen, IT-Support],
          remark: none
        ),
      ),
    ),
    (title: "Weitere Erfahrungen", events: ((
      title: "Informatikschule 61 Frauenfeld",
      location: none,
      date: (start: "Juli 2022", end: "November 2022"),
      description: [Rekrutenschule Telematiksoldat],
      remark: none
    ),)),
  ),
  custom: ((title: "Fähigkeiten", body: [
    #grid(columns: (1fr, 1fr), [
      === Sprachen
      Deutsch - Muttersprache \
      Englisch - Fortgeschritten \
      Französisch - Grundkenntnisse
    ], [
      === Programmiersprachen und Frameworks
      Angular, Bootstrap, Springboot, Apache POI, Docker, Linux
    ])
  ]),),
)