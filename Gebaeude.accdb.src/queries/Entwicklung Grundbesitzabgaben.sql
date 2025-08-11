SELECT
  M_Kostenstellen.Kostenstelle,
  M_Kostenstellen.Bezeichnung,
  A_Buchungen.[ID Nebenkostenart],
  A_Buchungen.Haushaltsjahr,
  Sum(
    A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
  ) AS [Summe von Betrag]
FROM
  (
    M_Kostenstellen
    LEFT JOIN A_Buchungen_Aufteilung_auf_Kostenstellen ON M_Kostenstellen.Kennummer = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]
  )
  LEFT JOIN A_Buchungen ON A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen] = A_Buchungen.ID
GROUP BY
  M_Kostenstellen.Kostenstelle,
  M_Kostenstellen.Bezeichnung,
  A_Buchungen.[ID Nebenkostenart],
  A_Buchungen.Haushaltsjahr
HAVING
  (
    (
      (
        A_Buchungen.[ID Nebenkostenart]
      )= 31
    )
    AND (
      (A_Buchungen.Haushaltsjahr)> 2008
    )
  )
ORDER BY
  M_Kostenstellen.Kostenstelle,
  A_Buchungen.Haushaltsjahr;
