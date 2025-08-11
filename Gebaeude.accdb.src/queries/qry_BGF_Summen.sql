SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäude,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche] AS KN_Bereich,
  tbl_100_20_Gebäudeteile.Sportfläche AS Sportfläche,
  Sum(
    IIf([Sportfläche] = True, [BGF], 0)
  ) AS Sum_BGF_Sp_Fl,
  Sum(
    IIf([Sportfläche] = False, [BGF], 0)
  ) AS Sum_BGF_Gb_LS
FROM
  tbl_100_20_Gebäudeteile
WHERE
  (
    (
      (
        tbl_100_20_Gebäudeteile.Mietrelevant
      )= True
    )
  )
GROUP BY
  tbl_100_20_Gebäudeteile.ID_Gebäude,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche],
  tbl_100_20_Gebäudeteile.Sportfläche;
