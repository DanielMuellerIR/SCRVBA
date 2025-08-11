SELECT
  [Anrede] & ", " & [Name, Vorname] AS Emfpänger,
  A_Buchungen.angelegt,
  A_Buchungen.Verwendungszweck,
  A_Buchungen.Betrag AS Anordnungsbetra,
  Sum(
    A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
  ) AS [Betrag aufgeteilt],
  A_Buchungen.Betrag - Sum(
    A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
  ) AS Differenz,
  "Gesamtbetrag falsch auftgeteilt" AS [Text],
  A_Buchungen.ID
FROM
  (
    A_Buchungen
    LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
  )
  LEFT JOIN A_Buchungen_Aufteilung_auf_Kostenstellen ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]
GROUP BY
  [Anrede] & ", " & [Name, Vorname],
  A_Buchungen.angelegt,
  A_Buchungen.Verwendungszweck,
  A_Buchungen.Betrag,
  "Gesamtbetrag falsch auftgeteilt",
  A_Buchungen.ID,
  A_Buchungen.Haushaltsjahr,
  A_Buchungen.ID
HAVING
  (
    (
      (A_Buchungen.Haushaltsjahr)= Year(
        Now()
      )
    )
    And (
      (
        A_Buchungen.Betrag - Sum(
          A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
        )
      )<> 0
    )
  );
