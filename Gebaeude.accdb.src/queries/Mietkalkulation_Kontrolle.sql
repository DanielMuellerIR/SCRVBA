SELECT
  Union_Abfrage_Mietberechnung_ohne_Filter.Planjahr,
  Union_Abfrage_Mietberechnung_ohne_Filter.Kostenart,
  IIf(
    [sort] = "A",
    "Abschreibung",
    IIf(
      [sort] = "B",
      "Miete",
      IIf(
        [sort] = "C", "Nebenkosten", "Sonderleistungen"
      )
    )
  ) AS Art,
  Sum(
    Int([Betrag_])
  ) AS Betrag
FROM
  Union_Abfrage_Mietberechnung_ohne_Filter
GROUP BY
  Union_Abfrage_Mietberechnung_ohne_Filter.Planjahr,
  Union_Abfrage_Mietberechnung_ohne_Filter.Kostenart,
  IIf(
    [sort] = "A",
    "Abschreibung",
    IIf(
      [sort] = "B",
      "Miete",
      IIf(
        [sort] = "C", "Nebenkosten", "Sonderleistungen"
      )
    )
  )
ORDER BY
  IIf(
    [sort] = "A",
    "Abschreibung",
    IIf(
      [sort] = "B",
      "Miete",
      IIf(
        [sort] = "C", "Nebenkosten", "Sonderleistungen"
      )
    )
  );
