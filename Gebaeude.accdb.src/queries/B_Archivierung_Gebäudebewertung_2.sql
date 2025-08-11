INSERT INTO Bewertung_Archiv_2 (
  ID_Gebäudeteil, [Fassade (11%)],
  [Fenster (14%)], [Dächer (15%)],
  [Sanitär (13%)], [Innenwände Sanitärbereich (6%)],
  [Innentüren (11%)], [Heizung (15%)],
  [Elektroinstallation (7%)], [Bodenbeläge (8 %)],
  Datei, Erläuterung
)
SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  tbl_100_20_Gebäudeteile.[Fassade (11%)],
  tbl_100_20_Gebäudeteile.[Fenster (14%)],
  tbl_100_20_Gebäudeteile.[Dächer (15%)],
  tbl_100_20_Gebäudeteile.[Sanitär (13%)],
  tbl_100_20_Gebäudeteile.[Innenwände Sanitärbereich (6%)],
  tbl_100_20_Gebäudeteile.[Innentüren (11%)],
  tbl_100_20_Gebäudeteile.[Heizung (15%)],
  tbl_100_20_Gebäudeteile.[Elektroinstallation (7%)],
  tbl_100_20_Gebäudeteile.[Bodenbeläge (8 %)],
  [formulare]![Bewertungsdaten archivieren]![Archivdatum] AS Datei,
  [formulare]![Bewertungsdaten archivieren]![Text] AS Erläuterung
FROM
  tbl_100_20_Gebäudeteile;
