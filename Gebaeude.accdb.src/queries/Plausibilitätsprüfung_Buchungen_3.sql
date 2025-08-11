SELECT
  A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen],
  A_Buchungen_Aufteilung_auf_Fälligkeiten.Betrag,
  Count(
    A_Buchungen_Aufteilung_auf_Fälligkeiten.Fälligkeitsdatum
  ) AS [Anzahl von Fälligkeitsdatum],
  A_Buchungen.Haushaltsjahr,
  A_Buchungen.angelegt,
  A_Buchungen.Verwendungszweck,
  [Anrede] & ", " & [Name, Vorname] AS Empfänger,
  Zahlungszyklen.Vervielfältiger,
  Zahlungszyklen.Zyklus
FROM
  Zahlungszyklen
  RIGHT JOIN (
    (
      A_Buchungen
      LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
    )
    RIGHT JOIN A_Buchungen_Aufteilung_auf_Fälligkeiten ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen]
  ) ON Zahlungszyklen.ID = A_Buchungen.[ID Fälligkeiten]
GROUP BY
  A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen],
  A_Buchungen_Aufteilung_auf_Fälligkeiten.Betrag,
  A_Buchungen.Haushaltsjahr,
  A_Buchungen.angelegt,
  A_Buchungen.Verwendungszweck,
  [Anrede] & ", " & [Name, Vorname],
  Zahlungszyklen.Vervielfältiger,
  Zahlungszyklen.Zyklus
HAVING
  (
    (
      (
        Count(
          A_Buchungen_Aufteilung_auf_Fälligkeiten.Fälligkeitsdatum
        )
      )> 0
    )
    AND (
      (A_Buchungen.Haushaltsjahr)= Year(
        Now()
      )
    )
  );
