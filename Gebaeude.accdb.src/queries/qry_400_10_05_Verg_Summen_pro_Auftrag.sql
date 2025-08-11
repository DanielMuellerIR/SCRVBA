SELECT
  Aufträge.ID_Hauptauftr,
  Sum(Aufträge.[Wert Auftrag]) AS [SummevonWert Auftrag]
FROM
  Aufträge
GROUP BY
  Aufträge.ID_Hauptauftr;
