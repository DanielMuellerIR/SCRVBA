SELECT
  Maßnahmen.ID,
  Gebäudeliste.ID,
  [Straße Hausnummer] & ",  " & [Bezeichung] AS Gebäude,
  Sachbearbeiter.Name,
  Maßnahmen.Maßnahme,
  Maßnahmen.[voraussichtliche Kosten gesamt],
  Haushaltsdaten.[ID aus Maßnahmen],
  Maßnahmen.Bearbeiter,
  Maßnahmen.[erledigt im Jahr],
  [Maßnahme] & "                     " & [Bearbeiter] AS [text]
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
      (Maßnahmen.ID) Like [Formulare]![Filter für Arbeitsprogramm erweitert]![Massnahme]
    )
    AND (
      (
        Haushaltsdaten.[ID aus Maßnahmen]
      ) Is Not Null
    )
    AND (
      (Maßnahmen.Bearbeiter) Like [Formulare]![Filter für Arbeitsprogramm erweitert]![Bearbeiter]
    )
    AND (
      (Maßnahmen.[erledigt im Jahr]) Is Null
    )
    AND (
      (
        [Gebäudeliste].[Bezeichung] + [Straße Hausnummer]
      ) Like [Formulare]![Filter für Arbeitsprogramm erweitert]![Gebäude]
    )
  )
ORDER BY
  [Straße Hausnummer] & ",  " & [Bezeichung];
