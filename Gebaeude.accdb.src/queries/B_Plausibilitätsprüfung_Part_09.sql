SELECT
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] AS Objekt,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  tbl_050_10_Gemarkungen.Gemarkung,
  tbl_070_10_Flure.Flur,
  fc_Flurstuecke(
    [tbl_100_10_Liegenschaften].[ID_Gebäude]
  ) AS Flurstücke,
  "09 : Abschreibungsanteile zu Gebäudeteilen fehlen oder ergeben nicht 100%" AS Fehler
FROM
  (
    tbl_070_10_Flure
    RIGHT JOIN (
      tbl_050_10_Gemarkungen
      RIGHT JOIN tbl_100_10_Liegenschaften ON tbl_050_10_Gemarkungen.ID_Gemarkung = tbl_100_10_Liegenschaften.ID_Gemarkung
    ) ON tbl_070_10_Flure.ID_Flur = tbl_100_10_Liegenschaften.ID_Flur
  )
  LEFT JOIN (
    (
      tbl_100_20_Gebäudeteile
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    )
    LEFT JOIN Zuordnung_Abschreibung ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Zuordnung_Abschreibung.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
GROUP BY
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung],
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  tbl_050_10_Gemarkungen.Gemarkung,
  tbl_070_10_Flure.Flur,
  fc_Flurstuecke(
    [tbl_100_10_Liegenschaften].[ID_Gebäude]
  ),
  "09 : Abschreibungsanteile zu Gebäudeteilen fehlen oder ergeben nicht 100%"
HAVING
  (
    (
      (
        Sum(Zuordnung_Abschreibung.Anteil)
      )<> 1
      Or (
        Sum(Zuordnung_Abschreibung.Anteil)
      ) Is Null
    )
  )
ORDER BY
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung];
