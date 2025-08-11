INSERT INTO Bewertung_Archiv_5 (
  ID_Gebäudeteil, Gebäudeteil, [Lage des Gebäudes],
  Gemarkung, Flur, Flurstücke, Fläche,
  Bodenrichtwert, Bezeichnung, Datei,
  Erläuterung, [Anteil Bodenrichtwert]
)
SELECT
  tbl_100_10_Liegenschaften.ID_Gebäude,
  tbl_100_20_Gebäudeteile.Gebäudeteil,
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] AS [Lage des Gebäudes],
  tbl_050_10_Gemarkungen.Gemarkung,
  tbl_070_10_Flure.Flur,
  " " & Nz(
    fc_Flurstuecke(
      [tbl_100_10_Liegenschaften].[ID_Gebäude]
    )
  ) AS Flurstücke,
  tbl_100_10_Liegenschaften.Fläche,
  tbl_100_10_Liegenschaften.Bodenrichtwert,
  tbl_100_10_Liegenschaften.Bezeichnung,
  [formulare]![Bewertungsdaten archivieren]![Archivdatum] AS Datei,
  [formulare]![Bewertungsdaten archivieren]![Text] AS Erläuterung,
  [formulare]![Startformular]![Anteil Bodenrichtwert] AS [Anteil Bodenrichtwert]
FROM
  tbl_070_10_Flure
  RIGHT JOIN (
    tbl_050_10_Gemarkungen
    RIGHT JOIN (
      (
        tbl_100_10_Liegenschaften
        RIGHT JOIN tbl_100_20_Gebäudeteile ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
      )
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    ) ON tbl_050_10_Gemarkungen.ID_Gemarkung = tbl_100_10_Liegenschaften.ID_Gemarkung
  ) ON tbl_070_10_Flure.ID_Flur = tbl_100_10_Liegenschaften.ID_Flur;
