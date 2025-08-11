SELECT
  Mittelabfluss_3_Zeitablauf.Archivierungsdatum,
  Sum(
    Mittelabfluss_3_Zeitablauf.Aufträge
  ) AS [Summe von Aufträge],
  Sum(
    Mittelabfluss_3_Zeitablauf.sollgesamt
  ) AS [Summe von sollgesamt]
FROM
  Mittelabfluss_3_Zeitablauf
GROUP BY
  Mittelabfluss_3_Zeitablauf.Archivierungsdatum;
