INSERT INTO tbl_200_10_10_Bewertungsbilanzen (
  Id_Bewert, ID_Gebäudeteil, Bezeichnung,
  Gebäudeteil, Straße, Haus_Nr, LS_Grst_wert_hier_zuordn,
  Fläche, Bodenrichtwert, [anteil bodenrichtwert],
  [voll berechnen], BGF, BRI, Baujahr,
  Baujahr_real, Baujahr_mod, [gewöhnliche Nutzungsdauer],
  [geschätze Nutzungsdauer], Neubauwert_ab_2000,
  NHK_Typ, PunkteAusstattung, Ausstattung,
  Range, [Wert von], [Wert bis], [Euro je BGF],
  Wert1, Baunebenkosten, Erläuterungen,
  Index_manuell, [index ab 2000],
  [Bewertung abgeschlossen], Zuschuss_Prozent,
  Versicherungswert, [Fassade (11%)],
  [Fenster (14%)], [Dächer (15%)],
  [Sanitär (13%)], [Innenwände Sanitärbereich (6%)],
  [Innentüren (11%)], [Heizung (15%)],
  [Elektroinstallation (7%)], [Bodenbeläge (8 %)]
)
SELECT
  F_Variable("lng_id_Bewert") AS idbew,
  B_Abfrage_für_Formular.ID_Gebäudeteil,
  B_Abfrage_für_Formular.Bezeichnung,
  B_Abfrage_für_Formular.Gebäudeteil,
  B_Abfrage_für_Formular.Name,
  B_Abfrage_für_Formular.haus_nr,
  B_Abfrage_für_Formular.LS_Grst_wert_hier_zuordn,
  IIf(
    [LS_Grst_wert_hier_zuordn] = True,
    [Fläche], 0
  ) AS FL,
  B_Abfrage_für_Formular.Bodenrichtwert,
  DLookUp(
    "[Anteil Bodenrichtwert]",
    "qry_200_05_40_Jaehrliche_Bodenrichtwerte",
    "[Jahr] = " & F_Variable("lng_Kalk_jahr")
  ) AS ant_brw,
  B_Abfrage_für_Formular.[voll berechnen],
  DSum(
    "[BGF]",
    "tbl_100_20_Gebäudeteile",
    "[ID_GebT_Zug_GebT] = " & F_Variable("lng_ID_Geb_Teil")& " or ID_Gebäudeteil = " & F_VAriable("lng_ID_Geb_Teil")
  ) AS BGF,
  B_Abfrage_für_Formular.BRI,
  B_Abfrage_für_Formular.Baujahr,
  B_Abfrage_für_Formular.Baujahr_real,
  B_Abfrage_für_Formular.Baujahr_mod,
  B_Abfrage_für_Formular.[gewöhnliche Nutzungsdauer],
  B_Abfrage_für_Formular.[geschätze Nutzungsdauer],
  B_Abfrage_für_Formular.Neubauwert_ab_2000,
  [Typ-Nr] & ": " & [Typ] AS Tp,
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
    [Baujahr] < #1/1/1925#,
    [von 25],
    IIf(
      [Baujahr] > #12/31/1924#
      And [Baujahr] < #1/1/1946#,
      [von 25 - 45],
      IIf(
        [Baujahr] > #12/31/1945#
        And [Baujahr] < #1/1/1960#,
        [von 46 - 59],
        IIf(
          [Baujahr] > #12/31/1959#
          And [Baujahr] < #1/1/1970#,
          [von 60 - 69],
          IIf(
            [Baujahr] > #12/31/1969#
            And [Baujahr] < #1/1/1985#,
            [von 70 - 84],
            IIf(
              [Baujahr] > #12/31/1984#
              And [Baujahr] < #1/1/2000#,
              [von 85 - 99],
              IIf(
                [Baujahr] > #12/31/1999#, [von 2000]
              )
            )
          )
        )
      )
    )
  ) AS [Wert von],
  IIf(
    [Baujahr] < #1/1/1925#,
    [bis 25],
    IIf(
      [Baujahr] > #12/31/1924#
      And [Baujahr] < #1/1/1946#,
      [bis 25 - 45],
      IIf(
        [Baujahr] > #12/31/1945#
        And [Baujahr] < #1/1/1960#,
        [bis 46 - 59],
        IIf(
          [Baujahr] > #12/31/1959#
          And [Baujahr] < #1/1/1970#,
          [bis 60 - 69],
          IIf(
            [Baujahr] > #12/31/1969#
            And [Baujahr] < #1/1/1985#,
            [bis 70 - 84],
            IIf(
              [Baujahr] > #12/31/1984#
              And [Baujahr] < #1/1/2000#,
              [bis 85 - 99],
              IIf(
                [Baujahr] > #12/31/1999#, [bis 2000]
              )
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
  B_Abfrage_für_Formular.Erläut_Bewertung,
  B_Abfrage_für_Formular.Index_manuell,
  16.41 AS idx_2000,
  B_Abfrage_für_Formular.[Bewertung abgeschlossen],
  B_Abfrage_für_Formular.Zuschuss_Prozent,
  B_Abfrage_für_Formular.Versicherungswert,
  B_Abfrage_für_Formular.[Fassade (11%)],
  B_Abfrage_für_Formular.[Fenster (14%)],
  B_Abfrage_für_Formular.[Dächer (15%)],
  B_Abfrage_für_Formular.[Sanitär (13%)],
  B_Abfrage_für_Formular.[Innenwände Sanitärbereich (6%)],
  B_Abfrage_für_Formular.[Innentüren (11%)],
  B_Abfrage_für_Formular.[Heizung (15%)],
  B_Abfrage_für_Formular.[Elektroinstallation (7%)],
  B_Abfrage_für_Formular.[Bodenbeläge (8 %)]
FROM
  B_Abfrage_für_Formular
  LEFT JOIN B_Abfrage_für_Bericht_0 ON (
    B_Abfrage_für_Formular.Ausstattung = B_Abfrage_für_Bericht_0.Ausstattung
  )
  AND (
    B_Abfrage_für_Formular.[Typ aus NHK-Typen] = B_Abfrage_für_Bericht_0.[NHK-Typen].Kennummer
  )
WHERE
  (
    (
      (
        B_Abfrage_für_Formular.ID_Gebäudeteil
      )= F_VAriable("lng_ID_Geb_Teil")
    )
    AND (
      (
        B_Abfrage_für_Formular.ID_GebT_Zug_GebT
      ) Is Null
    )
    AND (
      (
        B_Abfrage_für_Formular.Bilanz_relevant
      )= True
    )
  )
ORDER BY
  B_Abfrage_für_Formular.Bezeichnung,
  B_Abfrage_für_Formular.Gebäudeteil;
