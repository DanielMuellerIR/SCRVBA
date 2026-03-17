SELECT
  tbl_10_40_Firmen.ID_Fa,
  tbl_10_40_Firmen.Name,
  tbl_10_40_Firmen.Ort,
  tbl_10_40_Firmen.Straße
FROM
  tbl_10_40_Firmen
WHERE
  (
    (
      (tbl_10_40_Firmen.Name) Like (
        '*' & [Formulare]![frm_30_10_Firmen]![TF_Filter_Firma] & '*'
      )
    )
    AND (
      (tbl_10_40_Firmen.Straße) Like (
        '*' & [Formulare]![frm_30_10_Firmen]![TF_Filter_Strasse] & '*'
      )
    )
  )
ORDER BY
  tbl_10_40_Firmen.Name,
  tbl_10_40_Firmen.Ort,
  tbl_10_40_Firmen.Straße;
