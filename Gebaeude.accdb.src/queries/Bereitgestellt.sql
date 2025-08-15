SELECT
  ID_Massnahme,
  Sum(
    IIf(
      tats_Kosten_Infoma IS NULL, Betrag,
      tats_Kosten_Infoma
    )
  ) AS [Summe von Betrag]
FROM
  [geplante Finanzierung]
GROUP BY
  ID_Massnahme;
