SELECT
  Mittelabfluss_1_Zeitablauf.Archivierungsdatum,
  Sum(
    Mittelabfluss_1_Zeitablauf.[Summe von Ansatz]
  ) AS [Summe von Summe von Ansatz],
  Sum(
    Mittelabfluss_1_Zeitablauf.[Summe von HHR]
  ) AS [Summe von Summe von HHR],
  Sum(
    Mittelabfluss_1_Zeitablauf.[Summe von VE]
  ) AS [Summe von Summe von VE],
  Sum(
    Mittelabfluss_1_Zeitablauf.[Summe von zufVfg]
  ) AS [Summe von Summe von zufVfg]
FROM
  Mittelabfluss_1_Zeitablauf
GROUP BY
  Mittelabfluss_1_Zeitablauf.Archivierungsdatum;
