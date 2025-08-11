SELECT
  Maßnahmen.ID,
  Gebäudeliste.ID,
  [Bezeichung] & ",  " & [Straße Hausnummer] AS Gebäude,
  Sachbearbeiter.Name,
  Maßnahmen.Maßnahme,
  Maßnahmen.[voraussichtliche Kosten gesamt],
  Haushaltsdaten.[ID aus Maßnahmen],
  [Teile der Maßnahmen].[ID aus Maßnahmen],
  [Teile der Maßnahmen].Sachbearbeiter
FROM
  Sachbearbeiter
  RIGHT JOIN (
    (
      (
        Gebäudeliste
        RIGHT JOIN Maßnahmen ON Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste]
      )
      LEFT JOIN Haushaltsdaten ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
    )
    LEFT JOIN [Teile der Maßnahmen] ON Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]
  ) ON Sachbearbeiter.ID = Gebäudeliste.[ID aus Sachbearbeiter]
WHERE
  (
    (
      (Sachbearbeiter.Name) Like [Formulare]![Filter für Arbeitsprogramm]![Sachbearbeiter]
    )
    AND (
      (Maßnahmen.Maßnahme) Like [Formulare]![Filter für Arbeitsprogramm]![Massnahme]
    )
    AND (
      (
        Haushaltsdaten.[ID aus Maßnahmen]
      ) Is Not Null
    )
    AND (
      (
        [Teile der Maßnahmen].[ID aus Maßnahmen]
      ) Is Not Null
    )
    AND (
      (
        [Teile der Maßnahmen].Sachbearbeiter
      ) Like [Formulare]![Filter für Arbeitsprogramm]![Fachingenieur]
    )
    AND (
      (Gebäudeliste.Bezeichung) Like [Formulare]![Filter für Arbeitsprogramm]![Gebäude]
    )
  )
ORDER BY
  [Bezeichung] & ",  " & [Straße Hausnummer];
