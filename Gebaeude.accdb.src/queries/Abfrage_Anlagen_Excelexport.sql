SELECT
  Abfrage_Anlagen.Maßnahme,
  Abfrage_Anlagen.ID_Massn AS ID_Massnahme,
  Abfrage_Anlagen.AnlagenNr,
  Abfrage_Anlagen.Anlage,
  [Name] & " " & [Haus_Nr] & ": " & [Liegenschaft] AS Objekt,
  Abfrage_Anlagen.Gebäudeteil,
  Abfrage_Anlagen.BeendetB20
FROM
  Abfrage_Anlagen;
