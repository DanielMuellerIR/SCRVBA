SELECT
  Maßnahmen.ID,
  tbl_100_10_Liegenschaften.ID_Gebäude,
  [M_Strassenverzeichnis].[Name] & " " & [Haus_Nr] & ",  " & [Bezeichnung] AS Gebäude,
  Sachbearbeiter.Name,
  Maßnahmen.Maßnahme,
  Maßnahmen.[voraussichtliche Kosten gesamt],
  Haushaltsdaten.[ID aus Maßnahmen],
  Maßnahmen.Bearbeiter,
  Maßnahmen.[erledigt im Jahr],
  [Maßnahme] & "                     " & [Bearbeiter] AS [text]
FROM
  (
    (
      Sachbearbeiter
      RIGHT JOIN tbl_100_10_Liegenschaften ON Sachbearbeiter.ID = tbl_100_10_Liegenschaften.ID_SB
    )
    RIGHT JOIN (
      Maßnahmen
      LEFT JOIN Haushaltsdaten ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
    ) ON tbl_100_10_Liegenschaften.ID_Gebäude = Maßnahmen.ID_Gebäude
  )
  LEFT JOIN M_Strassenverzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
WHERE
  (
    (
      (Maßnahmen.ID) Like [Formulare]![Filter für Arbeitsprogramm]![Massnahme]
    )
    AND (
      (
        Haushaltsdaten.[ID aus Maßnahmen]
      ) Is Not Null
    )
    AND (
      (Maßnahmen.Bearbeiter) Like [Formulare]![Filter für Arbeitsprogramm]![Bearbeiter]
    )
    AND (
      (Maßnahmen.[erledigt im Jahr]) Is Null
    )
    AND (
      (
        [Gebäudeliste].[Bezeichung] + [Straße Hausnummer]
      ) Like [Formulare]![Filter für Arbeitsprogramm]![Gebäude]
    )
  )
ORDER BY
  [M_Strassenverzeichnis].[Name] & " " & [Haus_Nr] & ",  " & [Bezeichnung];
