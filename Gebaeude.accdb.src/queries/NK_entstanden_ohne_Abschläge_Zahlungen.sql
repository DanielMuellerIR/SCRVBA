SELECT
  M_Nebenkostenabrechnung_2.ID,
  M_Nebenkostenabrechnung_2.Haushaltsjahr,
  Sum(
    M_Nebenkostenabrechnung_2.Zahlungen
  ) AS [Summe von Zahlungen]
FROM
  M_Nebenkostenabrechnung_2
GROUP BY
  M_Nebenkostenabrechnung_2.ID,
  M_Nebenkostenabrechnung_2.Haushaltsjahr
HAVING
  (
    (
      (
        M_Nebenkostenabrechnung_2.Haushaltsjahr
      ) Like [formulare]![Filter für Nebenkostenabrechnung]![JahrZahlung]
    )
  )
ORDER BY
  M_Nebenkostenabrechnung_2.ID;
