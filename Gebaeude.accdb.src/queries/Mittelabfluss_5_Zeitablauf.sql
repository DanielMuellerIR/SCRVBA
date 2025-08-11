SELECT
  Mittelabfluss_2_Zeitablauf.Archivierungsdatum,
  Mittelabfluss_2_Zeitablauf.[Summe von Summe von Ansatz] AS Ansätze,
  Mittelabfluss_2_Zeitablauf.[Summe von Summe von HHR] AS HHR,
  Mittelabfluss_2_Zeitablauf.[Summe von Summe von VE] AS VE,
  Mittelabfluss_4_Zeitablauf.[Summe von sollgesamt] AS bezahlt,
  Mittelabfluss_4_Zeitablauf.[Summe von Aufträge] AS Aufträge,
  [Summe von Summe von zufVfg] - [Summe von sollgesamt] - [Summe von Aufträge] AS [noch zur Vfg],
  (
    [Summe von Summe von zufVfg] - [Summe von sollgesamt] - [Summe von Aufträge]
  )/(
    [Summe von Summe von Ansatz] + [Summe von Summe von HHR] + [Summe von Summe von VE]
  ) AS [in%]
FROM
  Mittelabfluss_2_Zeitablauf
  INNER JOIN Mittelabfluss_4_Zeitablauf ON Mittelabfluss_2_Zeitablauf.Archivierungsdatum = Mittelabfluss_4_Zeitablauf.Archivierungsdatum;
