SELECT
  B_Abfrage_für_Formular.ID_Gebäudeteil,
  B_Abfrage_für_Formular.Bezeichnung,
  B_Abfrage_für_Formular.Gebäudeteil,
  [NAme] & " " & [HAus_Nr] AS Straße,
  B_Abfrage_für_Formular.BGF,
  B_Abfrage_für_Formular.BRI,
  B_Abfrage_für_Formular.Baujahr,
  B_Abfrage_für_Formular.Baujahr_real,
  B_Abfrage_für_Formular.Baujahr_mod,
  B_Abfrage_für_Formular.[gewöhnliche Nutzungsdauer],
  B_Abfrage_für_Formular.[geschätze Nutzungsdauer],
  B_Abfrage_für_Formular.Neubauwert_ab_2000,
  [Pkt_Fassade] + [Pkt_Fenster] + [Pkt_Dächer] + [Pkt_Sanitär] + [Pkt_Innenwände_S] + [Pkt_Bodenbeläge] + [Pkt_Innentüren] + [Pkt_Heizung] + [PKt_Elektro] AS PunkteAusstattung,
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
    [Ausstattung] = "gehoben",
    [PunkteAusstattung] - 233.33,
    IIf(
      [Ausstattung] = "mittel",
      [PunkteAusstattung] - 166.66,
      IIf(
        [Ausstattung] = "einfach", [PunkteAusstattung] - 100
      )
    )
  ) AS Range,
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
  (
    (
      ([PunkteAusstattung] - 100)/ 200
    )*([Wert bis] - [Wert von])
  )+ [Wert von] AS [Euro je BGF],
  [Euro je BGF] * [BGF] AS Wert1,
  B_Abfrage_für_Bericht_0.Baunebenkosten,
  IIf(
    IsNull([Erläuterungen]),
    "keine",
    [Erläuterungen]
  ) AS Erl,
  B_Abfrage_für_Formular.Zuschuss_Prozent,
  B_Abfrage_für_Bericht_0.Typ,
  B_Abfrage_für_Formular.Index_manuell,
  B_Abfrage_für_Formular.Versicherungswert
FROM
  B_Abfrage_für_Formular
  LEFT JOIN B_Abfrage_für_Bericht_0 ON (
    B_Abfrage_für_Formular.[Typ aus NHK-Typen] = B_Abfrage_für_Bericht_0.[NHK-Typen].Kennummer
  )
  AND (
    B_Abfrage_für_Formular.Ausstattung = B_Abfrage_für_Bericht_0.Ausstattung
  )
WHERE
  (
    (
      (
        B_Abfrage_für_Formular.ID_Gebäudeteil
      )>= F_Variable("lng_ID_Geb_Teil_Min")
      And (
        B_Abfrage_für_Formular.ID_Gebäudeteil
      )<= F_Variable("lng_ID_Geb_Teil_Max")
    )
  )
ORDER BY
  B_Abfrage_für_Formular.Bezeichnung,
  B_Abfrage_für_Formular.Gebäudeteil;
