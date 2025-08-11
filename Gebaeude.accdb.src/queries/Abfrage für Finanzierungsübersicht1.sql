SELECT
  Buchungsstellen.Buchungsstelle,
  Buchungsstellen.[für Gebäude],
  Haushaltsdaten.[ID aus Maßnahmen]
FROM
  Buchungsstellen
  LEFT JOIN Haushaltsdaten ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]
GROUP BY
  Buchungsstellen.Buchungsstelle,
  Buchungsstellen.[für Gebäude],
  Haushaltsdaten.[ID aus Maßnahmen];
