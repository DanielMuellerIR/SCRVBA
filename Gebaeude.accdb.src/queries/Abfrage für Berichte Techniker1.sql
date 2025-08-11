SELECT
  Maßnahmen.ID,
  Gebäudeliste.ID,
  Sachbearbeiter.Name,
  [Bezeichung] & ",  " & [Straße Hausnummer] AS Gebäude,
  Maßnahmen.Maßnahme,
  Maßnahmen.[voraussichtliche Kosten gesamt],
  Haushaltsdaten.[ID aus Maßnahmen]
FROM
  (
    Sachbearbeiter
    RIGHT JOIN Gebäudeliste ON Sachbearbeiter.ID = Gebäudeliste.[ID aus Sachbearbeiter]
  )
  RIGHT JOIN (
    Maßnahmen
    LEFT JOIN Haushaltsdaten ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
  ) ON Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste]
WHERE
  (
    (
      (
        Haushaltsdaten.[ID aus Maßnahmen]
      ) Is Not Null
    )
  )
ORDER BY
  Sachbearbeiter.Name,
  [Bezeichung] & ",  " & [Straße Hausnummer];
