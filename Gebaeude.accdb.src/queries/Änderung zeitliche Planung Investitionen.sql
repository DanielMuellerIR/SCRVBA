SELECT
  [geplante Finanzierung].Kalenderjahr,
  Gebäudeliste.Bezeichung,
  Maßnahmen.Maßnahme,
  Maßnahmen.[voraussichtliche Kosten gesamt],
  [geplante Finanzierung].Finanzierung,
  [geplante Finanzierung].Betrag
FROM
  Gebäudeliste
  RIGHT JOIN (
    [geplante Finanzierung]
    LEFT JOIN Maßnahmen ON [geplante Finanzierung].[ID aus Maßnahmen] = Maßnahmen.ID
  ) ON Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste]
WHERE
  (
    (
      (Maßnahmen.[erledigt im Jahr]) Is Null
    )
  )
ORDER BY
  [geplante Finanzierung].Kalenderjahr,
  Gebäudeliste.Bezeichung,
  Maßnahmen.Maßnahme;
