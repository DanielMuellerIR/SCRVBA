SELECT
  Maßnahmen.ID,
  [Bezeichung] & ",  " & [Straße Hausnummer] AS Gebäude,
  Sachbearbeiter.Name,
  Maßnahmen.Maßnahme,
  Maßnahmen.[voraussichtliche Kosten gesamt],
  [Ansatz] + [HHR] + [VE] AS Summe_finanzier,
  Haushaltsdaten.[ID aus Maßnahmen],
  Maßnahmen.[erledigt im Jahr]
FROM
  (
    Sachbearbeiter
    RIGHT JOIN Gebäudeliste ON Sachbearbeiter.ID = Gebäudeliste.[ID aus Sachbearbeiter]
  )
  RIGHT JOIN (
    Haushaltsdaten
    RIGHT JOIN Maßnahmen ON Haushaltsdaten.[ID aus Maßnahmen] = Maßnahmen.ID
  ) ON Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste]
WHERE
  (
    (
      (
        Haushaltsdaten.[ID aus Maßnahmen]
      ) Is Null
    )
    AND (
      (Maßnahmen.[erledigt im Jahr]) Is Null
    )
  )
ORDER BY
  [Bezeichung] & ",  " & [Straße Hausnummer];
