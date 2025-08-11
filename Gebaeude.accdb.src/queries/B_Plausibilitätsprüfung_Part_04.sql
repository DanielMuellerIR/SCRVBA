SELECT
  [Name] & " " & [tbl_100_10_Liegenschaften].[Haus_Nr] & ": " & [Bezeichnung] AS Objekt,
  0 AS ID_Gebäudeteil,
  tbl_050_10_Gemarkungen.Gemarkung,
  tbl_070_10_Flure.Flur,
  fc_Flurstuecke(
    [tbl_100_10_Liegenschaften].[ID_Gebäude]
  ) AS Flurstücke,
  "04 : zur Liegenschaft fehlt der Bodenrichtwert" AS Fehler
FROM
  tbl_070_10_Flure
  RIGHT JOIN (
    tbl_050_10_Gemarkungen
    RIGHT JOIN (
      tbl_100_10_Liegenschaften
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    ) ON tbl_050_10_Gemarkungen.ID_Gemarkung = tbl_100_10_Liegenschaften.ID_Gemarkung
  ) ON tbl_070_10_Flure.ID_Flur = tbl_100_10_Liegenschaften.ID_Flur
WHERE
  (
    (
      (
        tbl_100_10_Liegenschaften.Bodenrichtwert
      )= 0
      Or (
        tbl_100_10_Liegenschaften.Bodenrichtwert
      ) Is Null
    )
  )
ORDER BY
  [Name] & " " & [tbl_100_10_Liegenschaften].[Haus_Nr] & ": " & [Bezeichnung];
