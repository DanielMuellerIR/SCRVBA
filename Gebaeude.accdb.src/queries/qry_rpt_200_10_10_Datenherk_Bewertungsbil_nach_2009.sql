SELECT
  tbl_100_20_Gebäudeteile.Gebaeudekennung,
  tbl_200_05_10_Bewertungsläufe.id_Bewert,
  tbl_200_05_10_Bewertungsläufe.Erläuterung,
  tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz,
  tbl_200_05_10_Bewertungsläufe.Bewertungsjahr,
  tbl_200_05_10_Bewertungsläufe.Zeitpunkt,
  [tbl_200_10_10_Bewertungsbilanzen].[Straße] & " " & [tbl_200_10_10_Bewertungsbilanzen].[Haus_Nr] & ": " & [tbl_200_10_10_Bewertungsbilanzen].[Bezeichnung] & " -> " & [tbl_200_10_10_Bewertungsbilanzen].[Gebäudeteil] AS Objekt,
  tbl_200_10_10_Bewertungsbilanzen.Straße,
  tbl_200_10_10_Bewertungsbilanzen.Bezeichnung,
  tbl_200_10_10_Bewertungsbilanzen.Gebäudeteil,
  tbl_200_10_10_Bewertungsbilanzen.Haus_Nr,
  [tbl_200_10_10_Bewertungsbilanzen].[Straße] & " " & [tbl_200_10_10_Bewertungsbilanzen].[Haus_Nr] AS Straße_HN,
  tbl_200_10_10_Bewertungsbilanzen.NHK_Typ AS Typ,
  tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT,
  tbl_200_10_10_Bewertungsbilanzen.LS_Grst_wert_hier_zuordn,
  tbl_200_10_10_Bewertungsbilanzen.Fläche,
  tbl_200_10_10_Bewertungsbilanzen.BRI,
  tbl_200_10_10_Bewertungsbilanzen.Baujahr,
  tbl_200_10_10_Bewertungsbilanzen.Baujahr_real,
  tbl_200_10_10_Bewertungsbilanzen.Baujahr_mod,
  tbl_200_10_10_Bewertungsbilanzen.[gewöhnliche Nutzungsdauer],
  tbl_200_10_10_Bewertungsbilanzen.[geschätze Nutzungsdauer],
  tbl_200_10_10_Bewertungsbilanzen.PunkteAusstattung,
  tbl_200_10_10_Bewertungsbilanzen.Ausstattung,
  tbl_200_10_10_Bewertungsbilanzen.Range,
  tbl_200_10_10_Bewertungsbilanzen.[Wert von],
  tbl_200_10_10_Bewertungsbilanzen.[Wert bis],
  IIf(
    Geb_2009_Bereits_Erstbew(
      [tbl_200_10_10_Bewertungsbilanzen].[ID_Gebäudeteil]
    ),
    CDbl(
      DLookUp(
        "[BGF]", "tbl_200_10_10_Bewertungsbilanzen",
        "[Id_Bewert] =  1 and [ID_Gebäudeteil] = " & [tbl_200_10_10_Bewertungsbilanzen].[ID_Gebäudeteil]
      )
    ),
    [tbl_200_10_10_Bewertungsbilanzen]![BGF]
  ) AS BGF,
  tbl_200_10_10_Bewertungsbilanzen.[Euro je BGF],
  [Euro je BGF] * [BGF] AS Wert_1,
  CDbl(
    fc_Idx_2000_2009(
      [tbl_100_20_Gebäudeteile].[ID_Gebäudeteil]
    )
  ) AS idx_2000_2009,
  [Wert_1] * [idx_2000_2009] AS Wert2,
  tbl_200_10_10_Bewertungsbilanzen.Baunebenkosten,
  CCur(
    [Wert2] *([Baunebenkosten] / 100)
  ) AS BNK,
  [Wert2] + [bnk] AS Wert3,
  CCur([Wert3] * 4 / 100) AS Aussenanlagen,
  [Wert3] + [Aussenanlagen] AS NB_Wert_auf_2000_ger,
  tbl_200_10_10_Bewertungsbilanzen.Neubauwert_ab_2000 AS NB_Wert_Eing,
  IIf(
    Not IsNull([NB_Wert_Eing]),
    [NB_Wert_Eing],
    [NB_Wert_auf_2000_ger]
  ) AS NB_Wert_relevant,
  B_Sanierungsstau_Werterhöhung.Herstellkosten,
  IIf(
    IsNull(
      [tbl_200_10_10_Bewertungsbilanzen].[Erläuterungen]
    ),
    "keine",
    [tbl_200_10_10_Bewertungsbilanzen].[Erläuterungen]
  ) AS Erl,
  tbl_200_10_10_Bewertungsbilanzen.Zuschuss_Prozent,
  tbl_200_10_10_Bewertungsbilanzen.Versicherungswert,
  tbl_200_10_10_Bewertungsbilanzen.[Fassade (11%)],
  tbl_200_10_10_Bewertungsbilanzen.[Fenster (14%)],
  tbl_200_10_10_Bewertungsbilanzen.[Dächer (15%)],
  tbl_200_10_10_Bewertungsbilanzen.[Sanitär (13%)],
  tbl_200_10_10_Bewertungsbilanzen.[Innenwände Sanitärbereich (6%)],
  tbl_200_10_10_Bewertungsbilanzen.[Innentüren (11%)],
  tbl_200_10_10_Bewertungsbilanzen.[Heizung (15%)],
  tbl_200_10_10_Bewertungsbilanzen.[Elektroinstallation (7%)],
  tbl_200_10_10_Bewertungsbilanzen.[Bodenbeläge (8 %)],
  tbl_050_10_Gemarkungen.Gemarkung,
  tbl_070_10_Flure.Flur,
  fc_Flurstuecke(
    [tbl_100_10_Liegenschaften].[ID_Gebäude]
  ) AS Flurst,
  tbl_200_10_10_Bewertungsbilanzen.Bodenrichtwert,
  tbl_200_10_10_Bewertungsbilanzen.[anteil bodenrichtwert],
  tbl_200_10_10_Bewertungsbilanzen.[voll berechnen],
  B_Sanierungsstau_Werterhöhung.DS_Typ
FROM
  (
    tbl_070_10_Flure
    RIGHT JOIN (
      tbl_050_10_Gemarkungen
      RIGHT JOIN tbl_100_10_Liegenschaften ON tbl_050_10_Gemarkungen.ID_Gemarkung = tbl_100_10_Liegenschaften.ID_Gemarkung
    ) ON tbl_070_10_Flure.ID_Flur = tbl_100_10_Liegenschaften.ID_Flur
  )
  INNER JOIN (
    (
      tbl_200_05_10_Bewertungsläufe
      INNER JOIN (
        tbl_200_10_10_Bewertungsbilanzen
        INNER JOIN tbl_100_20_Gebäudeteile ON tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
      ) ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert
    )
    INNER JOIN B_Sanierungsstau_Werterhöhung ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        tbl_200_05_10_Bewertungsläufe.id_Bewert
      )= F_Variable("lng_id_Bewert")
    )
    AND (
      (
        B_Sanierungsstau_Werterhöhung.DS_Typ
      )= 1
    )
  )
ORDER BY
  [tbl_200_10_10_Bewertungsbilanzen].[Straße] & " " & [tbl_200_10_10_Bewertungsbilanzen].[Haus_Nr] & ": " & [tbl_200_10_10_Bewertungsbilanzen].[Bezeichnung] & " -> " & [tbl_200_10_10_Bewertungsbilanzen].[Gebäudeteil];
