SELECT
  A_Buchungen.ID,
  A_Buchungen.[ID Sachbearbeiter],
  A_Buchungen.[ID Empfänger],
  A_Buchungen.[ID Buchungsstelle],
  A_Buchungen.[ID Kostenstelle],
  A_Buchungen.[ID Kostenträger],
  A_Buchungen.[ID Fälligkeiten],
  A_Buchungen.AO_Nr,
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
  A_Buchungen.[ID Nebenkostenart],
  A_Buchungen.von_,
  A_Buchungen.bis_,
  A_Buchungen.Anlage
FROM
  A_Buchungen
  LEFT JOIN [M_Verzeichnis Nebenkosten] ON A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID
WHERE
  (
    (
      (A_Buchungen.ID) Like [formulare]![Filter für Buchungen_Historik]![Betrag]
    )
    AND (
      (
        A_Buchungen.[ID Sachbearbeiter]
      ) Like [formulare]![Filter für Buchungen_Historik]![Sachbearbeiter]
    )
    AND (
      (A_Buchungen.[ID Empfänger]) Like [formulare]![Filter für Buchungen_Historik]![Empfänger]
    )
    AND (
      (A_Buchungen.Haushaltsjahr) Like [formulare]![Filter für Buchungen_Historik]![Haushaltsjahr]
    )
  )
  OR (
    (
      (A_Buchungen.[ID Empfänger]) Is Null
    )
  );
