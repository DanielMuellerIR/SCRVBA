SELECT
  Gebäudeliste.ID,
  Maßnahmen.ID
FROM
  Gebäudeliste
  INNER JOIN Maßnahmen ON Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste];
