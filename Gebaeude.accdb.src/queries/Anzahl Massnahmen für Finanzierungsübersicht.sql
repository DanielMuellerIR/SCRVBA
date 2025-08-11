SELECT
  Buchungsstellen.Buchungsstelle,
  Haushaltsdaten.[ID aus Maßnahmen]
FROM
  (
    [Daten aus MPS]
    LEFT JOIN Buchungsstellen ON [Daten aus MPS].HHSt = Buchungsstellen.Buchungsstelle
  )
  LEFT JOIN Haushaltsdaten ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]
WHERE
  (
    (
      (
        [HHAnsatz] + [HHRest aus Vorjahr] + [Mittel Übertrag] + [AOSoll HHAns] + [AOSoll HHRest] + [Unerledigte Aufträge] + [Verfügbar]
      )> 0
    )
  )
GROUP BY
  Buchungsstellen.Buchungsstelle,
  Haushaltsdaten.[ID aus Maßnahmen],
  [Daten aus MPS].HHSt
ORDER BY
  [Daten aus MPS].HHSt;
