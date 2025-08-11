SELECT
  A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag AS Einzelbetrag,
  A_Buchungen.angelegt,
  [Anrede] & ", " & [Name, Vorname] AS Emfpänger,
  A_Buchungen.Verwendungszweck,
  A_Buchungen.Betrag AS Anordnungsbetrag,
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen],
  A_Buchungen.Haushaltsjahr
FROM
  (
    A_Buchungen_Aufteilung_auf_Kostenstellen
    LEFT JOIN A_Buchungen ON A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen] = A_Buchungen.ID
  )
  LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
WHERE
  (
    (
      (A_Buchungen.Haushaltsjahr)= Year(
        Now()
      )
    )
  );
