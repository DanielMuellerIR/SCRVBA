SELECT
  geb.ID_Gebäude AS id_geb,
  geb.ID_Gebäudeteil AS id_gt,
  m.ID AS ID_Massnahme,
  m.[voraussichtliche Kosten gesamt],
  bereit.[Summe von Betrag] AS SummeGeplUndTats,
  [voraussichtliche Kosten gesamt] - bereit.[Summe von Betrag] AS Differenz,
  m.[erledigt im Jahr],
  IIf(
    m.[nicht mehr erforderlich weil] IS NOT NULL,
    "3: nicht mehr erforderlich",
    IIf(
      m.[erledigt im Jahr] IS NULL, "2: nicht erledigt",
      "1: Erledigt"
    )
  ) AS Erledigt_Status
FROM
  (
    tbl_100_20_Gebäudeteile AS geb
    INNER JOIN Maßnahmen AS m ON geb.[ID_Gebäudeteil] = m.[ID_Gebäudeteil]
  )
  LEFT JOIN Bereitgestellt AS bereit ON m.ID = bereit.ID_Massnahme
WHERE
  (
    (
      (
        [m].[voraussichtliche Kosten gesamt] - [bereit].[Summe von Betrag]
      )> 0
    )
  )
ORDER BY
  geb.ID_Gebäude,
  m.ID;
