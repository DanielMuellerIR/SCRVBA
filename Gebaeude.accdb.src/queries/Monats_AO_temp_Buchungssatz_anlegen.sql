INSERT INTO MonatsAO_temp_Buchungssatz (
  alteID, [ID Sachbearbeiter], [ID Empfänger],
  [ID Fälligkeiten], Haushaltsjahr,
  Ausgabe, Ausgabe_ja_nein, Skonto,
  Verwendungszweck, Fälligkeit, Auftragsnummer,
  Zahlung, [ID Nebenkostenart], von_,
  bis_, Anlage
)
SELECT
  A_Buchungen.ID,
  A_Buchungen.[ID Sachbearbeiter],
  A_Buchungen.[ID Empfänger],
  A_Buchungen.[ID Fälligkeiten],
  A_Buchungen.Haushaltsjahr,
  A_Buchungen.Ausgabe,
  A_Buchungen.Ausgabe_ja_nein,
  A_Buchungen.Skonto,
  A_Buchungen.Verwendungszweck,
  A_Buchungen.Fälligkeit,
  A_Buchungen.Auftragsnummer,
  A_Buchungen.Zahlung,
  A_Buchungen.[ID Nebenkostenart],
  A_Buchungen.von_,
  A_Buchungen.bis_,
  A_Buchungen.Anlage
FROM
  A_Buchungen
WHERE
  (
    (
      (A_Buchungen.ID)= [formulare]![Monatsanordnung]![alteID]
    )
  );
