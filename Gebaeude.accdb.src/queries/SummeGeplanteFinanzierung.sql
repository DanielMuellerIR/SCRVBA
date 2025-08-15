SELECT
  ID_Massnahme,
  Sum([geplante Finanzierung].Betrag) AS SummeGeplant
FROM
  [geplante Finanzierung]
GROUP BY
  ID_Massnahme;
