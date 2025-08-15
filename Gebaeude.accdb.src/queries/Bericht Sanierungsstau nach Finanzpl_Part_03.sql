SELECT
  "N.N." AS Kalenderjahr,
  lieg.[ID_Gebäude],
  str1.[Name] & " " & lieg.[Haus_Nr] & ": " & lieg.[Bezeichnung] AS Liegenschaft,
  geb.[Gebäudeteil] AS Haus,
  geb.[ID_Gebäudeteil],
  m.ID AS ID_Massn,
  sb.Name,
  m.[Maßnahme] & " (freie Mittel)" & Chr (13)& Chr (10)& "Vorauss. Kosten: " & Format(
    m.[voraussichtliche Kosten gesamt],
    "#,##0 €"
  )& "; Summe tats./gepl.: " & Format(
    bereit.[Summe von Betrag], "#,##0 €"
  ) AS MN,
  Max(gepl.ID) AS ID_Finanz,
  m.[voraussichtliche Kosten gesamt] - sgp.SummeGeplant AS Gepl_Finanz,
  False AS Erl,
  "noch nicht festgel." AS Finanzquelle,
  "noch nicht festgel." AS Finanzherkunft,
  m.[erledigt im Jahr],
  m.[voraussichtliche Kosten gesamt] - bereit.[Summe von Betrag] AS Summevontats_Kosten_Infoma,
  m.[voraussichtliche Kosten gesamt] - bereit.[Summe von Betrag] AS TatsOderGeplant
FROM
  (
    (
      (
        (
          (
            (
              Maßnahmen AS m
              INNER JOIN tbl_100_20_Gebäudeteile AS geb ON m.[ID_Gebäudeteil] = geb.[ID_Gebäudeteil]
            )
            LEFT JOIN tbl_100_10_Liegenschaften AS lieg ON geb.[ID_Gebäude] = lieg.[ID_Gebäude]
          )
          LEFT JOIN Sachbearbeiter AS sb ON lieg.ID_SB = sb.ID
        )
        LEFT JOIN M_Strassenverzeichnis AS str1 ON geb.Kennummer_Straße = str1.Kennummer
      )
      LEFT JOIN [Geplante Finanzierung] AS gepl ON m.ID = gepl.ID_Massnahme
    )
    LEFT JOIN Bereitgestellt AS bereit ON m.ID = bereit.ID_Massnahme
  )
  LEFT JOIN SummeGeplanteFinanzierung AS sgp ON m.ID = sgp.ID_Massnahme
GROUP BY
  "N.N.",
  lieg.[ID_Gebäude],
  str1.[Name] & " " & lieg.[Haus_Nr] & ": " & lieg.[Bezeichnung],
  geb.Gebäudeteil,
  geb.[ID_Gebäudeteil],
  m.ID,
  sb.Name,
  m.[Maßnahme] & " (freie Mittel)" & Chr (13)& Chr (10)& "Vorauss. Kosten: " & Format(
    m.[voraussichtliche Kosten gesamt],
    "#,##0 €"
  )& "; Summe tats./gepl.: " & Format(
    bereit.[Summe von Betrag], "#,##0 €"
  ),
  m.[voraussichtliche Kosten gesamt] - sgp.SummeGeplant,
  False,
  "noch nicht festgel.",
  "noch nicht festgel.",
  m.[erledigt im Jahr],
  m.[voraussichtliche Kosten gesamt] - bereit.[Summe von Betrag],
  gepl.Sammelbuchungsstelle
HAVING
  (
    m.[voraussichtliche Kosten gesamt] - bereit.[Summe von Betrag]
  )> 0
  AND (
    gepl.Sammelbuchungsstelle = False
  )
ORDER BY
  m.ID;
