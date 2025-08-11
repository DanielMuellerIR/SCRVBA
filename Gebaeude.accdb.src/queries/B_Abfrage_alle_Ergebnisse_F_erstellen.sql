SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  Sum(
    Maßnahmen.[voraussichtliche Kosten gesamt]
  ) AS [Summe von voraussichtliche Kosten gesamt] INTO B_Ergebnisse_F
FROM
  (
    tbl_100_10_Liegenschaften
    LEFT JOIN Maßnahmen ON tbl_100_10_Liegenschaften.ID_Gebäude = Maßnahmen.ID_Gebäude
  )
  LEFT JOIN tbl_100_20_Gebäudeteile ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
GROUP BY
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil;
