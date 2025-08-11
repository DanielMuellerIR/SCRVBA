SELECT
  Haushaltsdaten.[ID aus Maßnahmen],
  Buchungsstellen.Buchungsstelle,
  Sum(
    [Haushaltsdaten]![Ansatz] + [HHR]
  ) AS Mittel,
  Import_Haushaltsdaten.Haushaltsjahr,
  Import_Haushaltsdaten.[Gesamt_HH-Mittel],
  Import_Haushaltsdaten.Aufträge,
  [Sollbuchung] + [sollerfassung] AS sollgesamt
FROM
  (
    Haushaltsdaten
    LEFT JOIN Buchungsstellen ON Haushaltsdaten.[ID aus Buchungsstelle] = Buchungsstellen.ID
  )
  LEFT JOIN Import_Haushaltsdaten ON Buchungsstellen.Buchungsstelle = Import_Haushaltsdaten.Buchungsstelle
GROUP BY
  Haushaltsdaten.[ID aus Maßnahmen],
  Buchungsstellen.Buchungsstelle,
  Import_Haushaltsdaten.Haushaltsjahr,
  Import_Haushaltsdaten.[Gesamt_HH-Mittel],
  Import_Haushaltsdaten.Aufträge,
  [Sollbuchung] + [sollerfassung]
HAVING
  (
    (
      (
        Import_Haushaltsdaten.Haushaltsjahr
      )= Year(
        Now()
      )
    )
  )
ORDER BY
  Haushaltsdaten.[ID aus Maßnahmen];
