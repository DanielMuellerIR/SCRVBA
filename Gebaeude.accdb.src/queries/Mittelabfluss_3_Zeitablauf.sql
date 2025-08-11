SELECT
  DISTINCT [Archiv monatlicher Mittelabfluss].Buchungsstelle,
  [Archiv monatlicher Mittelabfluss].Archivierungsdatum,
  [Archiv monatlicher Mittelabfluss].Aufträge,
  [Archiv monatlicher Mittelabfluss].sollgesamt
FROM
  [Archiv monatlicher Mittelabfluss]
ORDER BY
  [Archiv monatlicher Mittelabfluss].Buchungsstelle,
  [Archiv monatlicher Mittelabfluss].Archivierungsdatum;
