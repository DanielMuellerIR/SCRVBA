SELECT
  [Archiv monatlicher Mittelabfluss].Buchungsstelle,
  [Archiv monatlicher Mittelabfluss].Archivierungsdatum,
  Sum(
    [Archiv monatlicher Mittelabfluss].Ansatz
  ) AS [Summe von Ansatz],
  Sum(
    [Archiv monatlicher Mittelabfluss].HHR
  ) AS [Summe von HHR],
  Sum(
    [Archiv monatlicher Mittelabfluss].VE
  ) AS [Summe von VE],
  Sum(
    [Archiv monatlicher Mittelabfluss].zufVfg
  ) AS [Summe von zufVfg],
  [Archiv monatlicher Mittelabfluss].Aufträge,
  [Archiv monatlicher Mittelabfluss].sollgesamt
FROM
  [Archiv monatlicher Mittelabfluss]
GROUP BY
  [Archiv monatlicher Mittelabfluss].Buchungsstelle,
  [Archiv monatlicher Mittelabfluss].Archivierungsdatum,
  [Archiv monatlicher Mittelabfluss].Aufträge,
  [Archiv monatlicher Mittelabfluss].sollgesamt
ORDER BY
  [Archiv monatlicher Mittelabfluss].Buchungsstelle,
  [Archiv monatlicher Mittelabfluss].Archivierungsdatum;
