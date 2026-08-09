// =============================================================================
// 1. PAKIETY I IMPORTY
// =============================================================================
#import "@preview/i-figured:0.2.4"
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *

// =============================================================================
// 2. PODSTAWOWE USTAWIENIA DOKUMENTU I STRONY
// =============================================================================
#set text(lang: "pl")
#set page("a4")
#set page(numbering: none) // Wyłączenie numerowania na początku
#set page(
  margin: (inside: 3.5cm, outside: 2cm, top: 2.5cm, bottom: 2cm)
)

// =============================================================================
// 3. Strona tytułowa
// =============================================================================
#include "rozdziały/001a_strona_tytulowa.typ"
#pagebreak()
#pagebreak()

// =============================================================================
// 4. TYPOGRAFIA, AKAPITY I LISTY
// =============================================================================
#set text(12pt)
// #set text(font: "Times New Roman")
// #set text(font: "EB Garamond")
// #set text(font: "Liberation Serif")

#set par(
  first-line-indent: 0.85cm,
  leading: 1.5em, // Interlinia
  justify: true,
)

// Automatyczne usuwanie sierotek (pojedynczych liter na końcu wiersza)
#show regex("\b([a-zA-ZA-Za-zĄĆĘŁŃÓŚŹŻąćęłńóśźż])\s"): match => {
  match.text.slice(0, -1) + sym.space.nobreak
}

// Wcięcie list i wypunktowań
#set enum(indent: 2em)
#set list(indent: 2em)

// =============================================================================
// 5. NAGŁÓWKI
// =============================================================================
// Rozmiary czcionki dla nagłówków
#show heading.where(level: 1): set text(size: 16pt)
#show heading.where(level: 2): set text(size: 14pt)
#show heading.where(level: 3): set text(size: 12pt)

// Odstępy pionowe nagłówków
#show heading.where(level: 1): set block(
  above: 0em,
  below: 0em,
)
#show heading.where(level: 2): set block(
  above: 2.5em,
  below: 0em,
)
#show heading.where(level: 3): set block(
  above: 2em,
  below: 0em,
)

// Resetowanie liczników pakietu i-figured dla nagłówków
#show heading: it => {
  i-figured.reset-counters(it)
  par(text(size: 0pt, ""))
}

// =============================================================================
// 6. RYSUNKI, TABELE I WZORY
// =============================================================================
#show figure.caption: set text(size: 10pt)
#set figure.caption(separator: ". ")

// Konfiguracja tabel
#show figure.where(kind: table): set block(above: 1.5em, below: 1.5em)
#show figure.where(kind: table): set figure.caption(position: top)

// Konfiguracja rysunków
// #show figure.where(kind: image): set figure(supplement: "Rysunek")


// =============================================================================
// 7. ODWOŁANIA I REFERENCJE
// =============================================================================
// Wszystkie figury niebędące obrazkami (czyli tabele) dostaną prefiks "tab."
#set ref(supplement: it => {
  if it.func() == figure {
    // Sprawdzenie rodzaju figury oraz jej domyślnego podpisu
    if it.kind == image or it.kind == "image" or it.supplement == [Rysunek] or it.supplement == "Rysunek" {
      "rys."
    } else if it.kind == table or it.kind == "table" or it.supplement == [Tabela] or it.supplement == "Tabela" {
      "tab."
    } else {
      "rys."
    }
  } else {
    it.supplement
  }
})

// =============================================================================
// 8. BLOKI KODU (CODLY)
// =============================================================================
#show: codly-init.with()
#codly(number-format: none)

// =============================================================================
// 9. ABSTRAKT
// =============================================================================
#include "rozdziały/001b_abstract.typ"
#pagebreak()

// =============================================================================
// 10. SPIS TREŚCI I NUMERACJA GŁÓWNA
// =============================================================================
#set page(numbering: "1") // Włączenie numerowania stron od tego miejsca
#set heading(numbering: "1.1") // Numerowanie nagłówków

// Integracja pakietu i-figured dla rysunków i wzorów
#show figure: i-figured.show-figure
#show math.equation: i-figured.show-equation

#outline(
  title: "Spis treści", 
  indent: auto,         
)
#pagebreak()

// =============================================================================
// 11. TREŚĆ GŁÓWNA (ROZDZIAŁY)
// =============================================================================
#include "rozdziały/02_cel_i_zakres.typ"
#pagebreak()
// #include "rozdziały/03_przeglad_literatury.typ"
// #pagebreak()
#include "rozdziały/03_wybrane_zagadnienia.typ"
#pagebreak()
#include "rozdziały/04_metody_badawcze.typ"
#pagebreak()
#include "rozdziały/05_ramki_pmf.typ"
#pagebreak()
#include "rozdziały/06_downgrade.typ"
#pagebreak()
#include "rozdziały/07_dos.typ"
#pagebreak()
#include "rozdziały/08_peap_tls.typ"
#pagebreak()
#include "rozdziały/09_vlan.typ"
#pagebreak()
#include "rozdziały/10_rekomendacje.typ"
#pagebreak()
#include "rozdziały/11_hipotezy_pytania.typ"

// =============================================================================
// 12. BIBLIOGRAFIA
// =============================================================================
#pagebreak()
#set bibliography(style: "ieee")
#set bibliography(title: "Bibliografia")
#bibliography("Moja_biblioteka.bib")
