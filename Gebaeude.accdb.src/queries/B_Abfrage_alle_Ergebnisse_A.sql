SELECT
  B_Abfrage_für_Formular.ID_Gebäudeteil,
  B_Abfrage_für_Formular.Bezeichnung,
  [Name] & " " & [Haus_Nr] AS Straße,
  B_Abfrage_für_Formular.Gebäudeteil,
  B_Abfrage_für_Formular.[Typ aus NHK-Typen],
  B_Abfrage_für_Formular.BGF,
  B_Abfrage_für_Formular.BRI,
  B_Abfrage_für_Formular.Baujahr_real,
  B_Abfrage_für_Formular.Baujahr_mod,
  B_Abfrage_für_Formular.[gewöhnliche Nutzungsdauer],
  B_Abfrage_für_Formular.[geschätze Nutzungsdauer],
  IIf(
    [PunkteAusstattung] <= 166.6666,
    "einfach",
    IIf(
      [PunkteAusstattung] >= 233.3332,
      "gehoben",
      IIf(
        [PunkteAusstattung] > 166.6667
        And [PunkteAusstattung] < 233.3331,
        "mittel"
      )
    )
  ) AS Ausstattung,
  IIf(
    [Baujahr] < 1925,
    [von 25],
    IIf(
      [Baujahr] > 1924
      And [Baujahr] < 1946,
      [von 25 - 45],
      IIf(
        [Baujahr] > 1945
        And [Baujahr] < 1960,
        [von 46 - 59],
        IIf(
          [Baujahr] > 1959
          And [Baujahr] < 1970,
          [von 60 - 69],
          IIf(
            [Baujahr] > 1969
            And [Baujahr] < 1985,
            [von 70 - 84],
            IIf(
              [Baujahr] > 1984
              And [Baujahr] < 2000,
              [von 85 - 99],
              IIf([Baujahr] > 1999, [von 2000])
            )
          )
        )
      )
    )
  ) AS [Wert von],
  IIf(
    [Baujahr] < 1925,
    [bis 25],
    IIf(
      [Baujahr] > 1924
      And [Baujahr] < 1946,
      [bis 25 - 45],
      IIf(
        [Baujahr] > 1945
        And [Baujahr] < 1960,
        [bis 46 - 59],
        IIf(
          [Baujahr] > 1959
          And [Baujahr] < 1970,
          [bis 60 - 69],
          IIf(
            [Baujahr] > 1969
            And [Baujahr] < 1985,
            [bis 70 - 84],
            IIf(
              [Baujahr] > 1984
              And [Baujahr] < 2000,
              [bis 85 - 99],
              IIf([Baujahr] > 1999, [bis 2000])
            )
          )
        )
      )
    )
  ) AS [Wert bis],
  B_Abfrage_für_Formular.PunkteAusstattung,
  (
    (
      ([PunkteAusstattung] - 100)/ 200
    )*([Wert bis] - [Wert von])
  )+ [Wert von] AS [Euro je BGF],
  [Euro je BGF] * [BGF] AS [Wert NHK x BGF],
  IIf(
    IsNull([Index_manuell]),
    (
      [Formulare]![startformular]![Index ab 2000] / 100
    )+ 1,
    ([Index_manuell] / 100)+ 1
  ) AS [Index],
  [Wert NHK x BGF] * [Index] AS [hochgerechneter Wert],
  B_Abfrage_für_Bericht_0.Baunebenkosten,
  [hochgerechneter Wert] *([Baunebenkosten] / 100) AS [Baunebenkosten €],
  [Baunebenkosten €] + [hochgerechneter Wert] AS Herstellungskosten1,
  B_Abfrage_für_Formular.Neubauwert_ab_2000,
  IIf(
    IsNull([Index_manuell]),
    IIf(
      [Baujahr] = 2000,
      16.41,
      IIf(
        [Baujahr] = 2001,
        15.69,
        IIf(
          [Baujahr] = 2002,
          15.57,
          IIf(
            [Baujahr] = 2003,
            15.57,
            IIf(
              [Baujahr] = 2004,
              14.05,
              IIf(
                [Baujahr] = 2005,
                12.8,
                IIf(
                  [Baujahr] = 2006,
                  10.7,
                  IIf(
                    [Baujahr] = 2007,
                    3.68,
                    IIf([Baujahr] >= 2008, 0)
                  )
                )
              )
            )
          )
        )
      )
    )+ 100,
    ([Index_manuell])+ 100
  ) AS [Index 2000],
  (
    [Neubauwert_ab_2000] *([Index 2000] / 100)
  ) AS Herstellungskosten2,
  B_Abfrage_für_Formular.Baujahr AS [berücksichtigtes Baujahr],
  IIf(
    IsNull([geschätze Nutzungsdauer]),
    [gewöhnliche Nutzungsdauer],
    [geschätze Nutzungsdauer]
  ) AS Nutzungsdauer,
  B_Abfrage_für_Formular.[Bewertung abgeschlossen],
  B_Abfrage_für_Formular.Versicherungswert
FROM
  B_Abfrage_für_Formular
  LEFT JOIN B_Abfrage_für_Bericht_0 ON (
    B_Abfrage_für_Formular.Ausstattung = B_Abfrage_für_Bericht_0.Ausstattung
  )
  AND (
    B_Abfrage_für_Formular.[Typ aus NHK-Typen] = B_Abfrage_für_Bericht_0.[NHK-Typen].Kennummer
  )
ORDER BY
  [Name] & " " & [Haus_Nr];
