SELECT
  tbl_010_20_20_Arbeitsplatzkosten.*,
  CCur(
    [Personalkosten] * [Verw_Gemeink_Proz]
  ) AS Verw_Gemeink,
  [Personalkosten] + [Sachkostenpauschale] + [Verw_Gemeink] AS Arb_Platz_Kosten,
  CCur(
    [Arb_Platz_Kosten] / [Anz_ArbStunden_JAhr]
  ) AS Arb_Stunden_Kosten
FROM
  tbl_010_20_10_Entgeltgruppen
  INNER JOIN tbl_010_20_20_Arbeitsplatzkosten ON tbl_010_20_10_Entgeltgruppen.ID_EG_Gr = tbl_010_20_20_Arbeitsplatzkosten.ID_EG_Gr
ORDER BY
  tbl_010_20_20_Arbeitsplatzkosten.Tarif_bis,
  tbl_010_20_10_Entgeltgruppen.Sort;
