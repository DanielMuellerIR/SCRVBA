SELECT
  Gebäudeliste.[Straße Hausnummer],
  Gebäudeliste.Bezeichung,
  Maßnahmen.Maßnahme,
  Maßnahmen.[voraussichtliche Kosten gesamt],
  Maßnahmen.ID AS [Kennummer aus Maßnahmen],
  B_Sanierungsbedarf_für_Bewertung.[Kennnummer aus B_Gebäudeliste]
FROM
  Gebäudeliste
  RIGHT JOIN (
    B_Sanierungsbedarf_für_Bewertung
    RIGHT JOIN Maßnahmen ON B_Sanierungsbedarf_für_Bewertung.[Kennnummer aus Maßnahmen] = Maßnahmen.ID
  ) ON Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste]
WHERE
  (
    (
      (Maßnahmen.[erledigt im Jahr]) Is Null
    )
  )
ORDER BY
  Gebäudeliste.[Straße Hausnummer];
