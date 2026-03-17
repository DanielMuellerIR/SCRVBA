SELECT
  tbl_20_10_Aufträge.*,
  Mid(
    [tbl_20_10_Aufträge].[Auftragsnr],
    4, 4
  ) AS Jahr,
  [Vergabeart] & "(" & [Vergabe_Grundlage] & ")" AS Verg_art,
  Right(
    [tbl_20_10_Aufträge].[Auftragsnr],
    4
  ) AS AufNr,
  [tbl_10_10_User].[Anrede] & " " & [tbl_10_10_User].[Username] AS SB,
  qry_20_10_DH_Auftr_Liste.beauftr_Firma
FROM
  (
    (
      tbl_20_10_Aufträge
      LEFT JOIN tbl_20_20_Vergabe_Art ON tbl_20_10_Aufträge.ID_Vergabe_Art = tbl_20_20_Vergabe_Art.ID_Vergabe_Art
    )
    LEFT JOIN tbl_10_10_User ON tbl_20_10_Aufträge.ID_User = tbl_10_10_User.ID_User
  )
  INNER JOIN qry_20_10_DH_Auftr_Liste ON tbl_20_10_Aufträge.ID_Auftrag = qry_20_10_DH_Auftr_Liste.ID_Auftrag
WHERE
  (
    (
      (
        Mid(
          tbl_20_10_Aufträge.Auftragsnr, 4,
          4
        )
      )= Formulare!frm_10_10_Startformular!TF_Filter_Jahr
    )
    And (
      (
        tbl_20_10_Aufträge.Schätzkosten
      ) Between 250
      And 15000
    )
  )
ORDER BY
  Right(
    [tbl_20_10_Aufträge].[Auftragsnr],
    4
  );
