SELECT
  A_Buchungen.ID,
  A_Buchungen.angelegt,
  A_Buchungen.Haushaltsjahr,
  [Name] & ", " & [Telefon] AS Sachbearbeiter,
  A_Buchungen.Ausgabe_ja_nein,
  A_Buchungen.Ausgabe,
  A_Buchungen.Skonto,
  A_Buchungen.[Einnahme/Ausgabeart],
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  A_Buchungen.Betrag,
  A_Buchungen.Verwendungszweck,
  A_Empfänger.Anrede,
  A_Empfänger.[Name, Vorname],
  A_Empfänger.[PLZ, Ort],
  A_Empfänger.[Straße, Nr],
  A_Empfänger.Postfach,
  A_Empfänger.Bankname,
  A_Empfänger.BLZ,
  A_Empfänger.[Konto-Nr],
  A_Empfänger.Abbucher,
  A_Empfänger.PersID,
  A_Empfänger.ID AS EmpfängerID,
  [Formulare]![Monatsanordnung]![Zahlung] AS Zahlung,
  [Formulare]![Monatsanordnung]![Auftragsnummer] AS Auftragsnummer,
  A_Buchungen.von_,
  A_Buchungen.bis_,
  A_Buchungen.Anlage
FROM
  (
    (
      A_Buchungen
      LEFT JOIN [M_Verzeichnis Nebenkosten] ON A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID
    )
    LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
  )
  LEFT JOIN Sachbearbeiter ON A_Buchungen.[ID Sachbearbeiter] = Sachbearbeiter.ID
WHERE
  (
    (
      (A_Buchungen.ID)= [Formulare]![Monatsanordnung_UF_5]![IDneu]
    )
  );
