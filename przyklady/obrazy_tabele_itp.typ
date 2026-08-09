#show figure.where(
  kind: table
): set figure.caption(position: top)


//przyklad obrazka z podpisem 
#figure(
  image("kotek.jpg", width: 50%),
  supplement: [Rysunek],
  caption: [kotek sobie leży.],

) <kotek>

Jak pokazano na @fig:kotek jest sobie kotek

#v(4em)
#figure(
  table(
    columns: (auto, auto, auto),
    inset: 10pt,
    align: center,
    table.header(
      [*L.p*], [*Volume*], [*Parameters*],
    ),
    [
      1
    ],
    [
      vv
    ],
    [
      papapapap
    ]
  ),
  supplement: [Tabela],
  caption: [Jakaś tabela.],
)<tabela1>

Odwołanie do @tbl:tabela1. Poradnik do tabeli - * https://typst.app/docs/guides/tables *

Dokumentacja typst - https://typst.app/docs/
