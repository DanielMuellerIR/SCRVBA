SELECT
  Haushaltsdaten.Jahr,
  Finanzquellen.Finanzquelle,
  Sum(Haushaltsdaten.Ansatz) AS [Summe von Ansatz],
  Sum(Haushaltsdaten.HHR) AS [Summe von HHR],
  Sum(Haushaltsdaten.VE) AS [Summe von VE],
  IIf([HHR] > 0, [Jahr] + 1, [Jahr]) AS Jahr_Ist
FROM
  Finanzquellen
  INNER JOIN Haushaltsdaten ON Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu
GROUP BY
  Haushaltsdaten.Jahr,
  Finanzquellen.Finanzquelle,
  IIf([HHR] > 0, [Jahr] + 1, [Jahr]);
