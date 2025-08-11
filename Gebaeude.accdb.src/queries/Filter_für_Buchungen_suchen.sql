SELECT
  A_Buchungen.ID,
  A_Buchungen.[ID Sachbearbeiter],
  A_Buchungen.[ID Empfänger],
  A_Buchungen.[ID Buchungsstelle],
  A_Buchungen.[ID Kostenstelle],
  A_Buchungen.[ID Kostenträger],
  A_Buchungen.[ID Fälligkeiten],
  A_Buchungen.Haushaltsjahr,
  A_Buchungen.Betrag,
  A_Buchungen.Ausgabe,
  A_Buchungen.Ausgabe_ja_nein,
  A_Buchungen.Skonto,
  A_Buchungen.[Einnahme/Ausgabeart],
  A_Buchungen.Verwendungszweck,
  A_Buchungen.Fälligkeit,
  A_Buchungen.angelegt,
  A_Buchungen.Auftragsnummer,
  A_Buchungen.Zahlung,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  A_Buchungen.[ID Nebenkostenart]
FROM
  A_Buchungen
  LEFT JOIN [M_Verzeichnis Nebenkosten] ON A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID;
