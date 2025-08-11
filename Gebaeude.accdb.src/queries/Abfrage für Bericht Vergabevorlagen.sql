SELECT
  [Bezeichung] & ", " & [Straße Hausnummer] AS Gebäude,
  Maßnahmen.Maßnahme,
  Aufträge.Jahr AS [Vergabevorlage vom],
  Aufträge.Firma,
  Aufträge.[Wert Auftrag],
  Aufträge.Auftragsinhalt,
  Aufträge.Nachtragsauftrag,
  Aufträge.Begründung
FROM
  Gebäudeliste
  RIGHT JOIN (
    Aufträge
    LEFT JOIN Maßnahmen ON Aufträge.[ID aus Maßnahmen] = Maßnahmen.ID
  ) ON Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste];
