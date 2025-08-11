SELECT
  Haushaltsdaten.ID,
  Buchungsstellen.Buchungsstelle,
  Buchungsstellen.[Text Buchungsstelle]
FROM
  Buchungsstellen
  LEFT JOIN Haushaltsdaten ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle];
