SELECT
  Maßnahmen.ID,
  Buchungsstellen.Buchungsstelle,
  Haushaltsdaten.Jahr,
  Haushaltsdaten.Ansatz,
  Haushaltsdaten.HHR,
  Haushaltsdaten.VE
FROM
  Maßnahmen
  INNER JOIN (
    Buchungsstellen
    INNER JOIN Haushaltsdaten ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]
  ) ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
ORDER BY
  Maßnahmen.ID,
  Buchungsstellen.Buchungsstelle,
  Haushaltsdaten.Jahr;
