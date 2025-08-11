SELECT
  tbl_100_20_Gebäudeteile.Gebaeudekennung,
  tbl_200_05_10_Bewertungsläufe.id_Bewert,
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
  tbl_200_10_10_Bewertungsbilanzen.LS_Grst_wert_hier_zuordn,
  tbl_200_10_10_Bewertungsbilanzen.Fläche,
  tbl_200_10_10_Bewertungsbilanzen.BGF,
  tbl_200_10_10_Bewertungsbilanzen.BRI,
  tbl_200_10_10_Bewertungsbilanzen.Baujahr,
  tbl_200_10_10_Bewertungsbilanzen.Baujahr_real,
  tbl_200_10_10_Bewertungsbilanzen.Baujahr_mod,
  tbl_200_10_10_Bewertungsbilanzen.[gewöhnliche Nutzungsdauer],
  tbl_200_10_10_Bewertungsbilanzen.[geschätze Nutzungsdauer],
  tbl_200_10_10_Bewertungsbilanzen.Neubauwert_ab_2000,
  tbl_200_10_10_Bewertungsbilanzen.PunkteAusstattung,
  tbl_200_10_10_Bewertungsbilanzen.Ausstattung,
  tbl_200_10_10_Bewertungsbilanzen.Range,
  tbl_200_10_10_Bewertungsbilanzen.[Wert von],
  tbl_200_10_10_Bewertungsbilanzen.[Wert bis],
  tbl_200_10_10_Bewertungsbilanzen.[Euro je BGF],
  tbl_200_10_10_Bewertungsbilanzen.Wert1,
  tbl_200_10_10_Bewertungsbilanzen.Baunebenkosten,
  tbl_200_05_10_Bewertungsläufe.Erläuterung,
  IIf(
    IsNull(
      [tbl_200_10_10_Bewertungsbilanzen].[Erläuterungen]
    ),
    "keine",
    [tbl_200_10_10_Bewertungsbilanzen].[Erläuterungen]
  ) AS Erl,
  tbl_200_10_10_Bewertungsbilanzen.Zuschuss_Prozent,
  tbl_200_10_10_Bewertungsbilanzen.NHK_Typ AS Typ,
  tbl_200_10_10_Bewertungsbilanzen.[index ab 2000],
  tbl_200_10_10_Bewertungsbilanzen.Index_manuell,
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
  tbl_200_10_10_Bewertungsbilanzen.[voll berechnen]
FROM
  (
    tbl_070_10_Flure
    RIGHT JOIN (
      tbl_050_10_Gemarkungen
      RIGHT JOIN tbl_100_10_Liegenschaften ON tbl_050_10_Gemarkungen.ID_Gemarkung = tbl_100_10_Liegenschaften.ID_Gemarkung
    ) ON tbl_070_10_Flure.ID_Flur = tbl_100_10_Liegenschaften.ID_Flur
  )
  INNER JOIN (
    tbl_200_05_10_Bewertungsläufe
    INNER JOIN (
      tbl_200_10_10_Bewertungsbilanzen
      INNER JOIN tbl_100_20_Gebäudeteile ON tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
    ) ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert
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
        tbl_100_20_Gebäudeteile.ID_Gebäudeteil
      ) Between F_VAriable("lng_ID_Geb_Teil_Min")
      And F_VAriable("lng_ID_Geb_Teil_Max")
    )
  )
ORDER BY
  [tbl_200_10_10_Bewertungsbilanzen].[Straße] & " " & [tbl_200_10_10_Bewertungsbilanzen].[Haus_Nr] & ": " & [tbl_200_10_10_Bewertungsbilanzen].[Bezeichnung] & " -> " & [tbl_200_10_10_Bewertungsbilanzen].[Gebäudeteil];
