SELECT
  ID_Massnahme,
  Sum(
    IIf(
      Nz (tats_Kosten_Infoma, 0)> 0,
      Nz (tats_Kosten_Infoma, 0),
      Betrag
    )
  ) AS [Summe von Betrag]
FROM
  [geplante Finanzierung]
GROUP BY
  ID_Massnahme;
