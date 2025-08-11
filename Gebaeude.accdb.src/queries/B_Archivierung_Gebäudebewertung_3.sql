INSERT INTO Bewertung_Archiv_3 (
  ID_Gebäudeteil, Maßnahme, [voraussichtliche Kosten gesamt],
  Datei, Erläuterung
)
SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  Maßnahmen.Maßnahme,
  Maßnahmen.[voraussichtliche Kosten gesamt],
  [formulare]![Bewertungsdaten archivieren]![Archivdatum] AS Datei,
  [formulare]![Bewertungsdaten archivieren]![Text] AS Erläuterung
FROM
  tbl_100_20_Gebäudeteile
  LEFT JOIN Maßnahmen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil;
