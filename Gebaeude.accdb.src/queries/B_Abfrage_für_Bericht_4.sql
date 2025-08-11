SELECT
  DISTINCT tbl_100_10_Liegenschaften.ID_Gebäude,
  tbl_100_10_Liegenschaften.Bezeichnung,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  tbl_100_20_Gebäudeteile.Gebäudeteil,
  [Name] & [tbl_100_20_Gebäudeteile].[Haus_Nr] AS [Lage des Gebäudes],
  tbl_050_10_Gemarkungen.Gemarkung,
  tbl_070_10_Flure.Flur,
  fc_Flurstuecke(
    [tbl_100_10_Liegenschaften].[ID_Gebäude]
  ) AS Flurstücke,
  tbl_100_10_Liegenschaften.Fläche,
  tbl_100_10_Liegenschaften.Bodenrichtwert,
  tbl_100_10_Liegenschaften.[voll berechnen]
FROM
  (
    (
      tbl_070_10_Flure
      RIGHT JOIN (
        tbl_050_10_Gemarkungen
        RIGHT JOIN tbl_100_10_Liegenschaften ON tbl_050_10_Gemarkungen.ID_Gemarkung = tbl_100_10_Liegenschaften.ID_Gemarkung
      ) ON tbl_070_10_Flure.ID_Flur = tbl_100_10_Liegenschaften.ID_Flur
    )
    LEFT JOIN tbl_100_05_QV_Liegensch_Flurstuecke ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_05_QV_Liegensch_Flurstuecke.ID_Gebäude
  )
  RIGHT JOIN (
    tbl_100_20_Gebäudeteile
    LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
ORDER BY
  tbl_100_10_Liegenschaften.Bezeichnung,
  tbl_100_20_Gebäudeteile.Gebäudeteil;
