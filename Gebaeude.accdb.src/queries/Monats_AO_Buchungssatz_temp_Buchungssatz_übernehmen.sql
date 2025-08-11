INSERT INTO A_Buchungen (
  [ID Sachbearbeiter], [ID Empfänger],
  [ID Fälligkeiten], Haushaltsjahr,
  Ausgabe, Ausgabe_ja_nein, Skonto,
  Verwendungszweck, Fälligkeit, Auftragsnummer,
  Zahlung, [ID Nebenkostenart], Anlage,
  Betrag, angelegt, von_, bis_
)
SELECT
  [formulare]![Monatsanordnung]![IDSachbearbeiter] AS ID_SB,
  MonatsAO_temp_Buchungssatz.[ID Empfänger],
  MonatsAO_temp_Buchungssatz.[ID Fälligkeiten],
  Year(
    Now()
  ) AS Haushaltsjahr,
  MonatsAO_temp_Buchungssatz.Ausgabe,
  MonatsAO_temp_Buchungssatz.Ausgabe_ja_nein,
  MonatsAO_temp_Buchungssatz.Skonto,
  MonatsAO_temp_Buchungssatz.Verwendungszweck,
  MonatsAO_temp_Buchungssatz.Fälligkeit,
  MonatsAO_temp_Buchungssatz.Auftragsnummer,
  MonatsAO_temp_Buchungssatz.Zahlung,
  MonatsAO_temp_Buchungssatz.[ID Nebenkostenart],
  MonatsAO_temp_Buchungssatz.Anlage,
  [formulare]![Monatsanordnung]![Anordnungsbetrag] AS Ausdr1,
  [formulare]![Monatsanordnung]![angelegt_neu] AS Ausdr2,
  [formulare]![Monatsanordnung]![von_] AS Ausdr3,
  [formulare]![Monatsanordnung]![bis_] AS Ausdr4
FROM
  MonatsAO_temp_Buchungssatz;
