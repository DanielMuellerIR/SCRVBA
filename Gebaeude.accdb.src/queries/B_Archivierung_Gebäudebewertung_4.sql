INSERT INTO Bewertung_Archiv_4 (
  ID_Gebäudeteil, Mehrwert, Datei, Erläuterung
)
SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  B_Sanierungsstau_Werterhöhung.Mehrwert,
  [formulare]![Bewertungsdaten archivieren]![Archivdatum] AS Datei,
  [formulare]![Bewertungsdaten archivieren]![Text] AS Erläuterung
FROM
  tbl_100_20_Gebäudeteile
  LEFT JOIN B_Sanierungsstau_Werterhöhung ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil;
