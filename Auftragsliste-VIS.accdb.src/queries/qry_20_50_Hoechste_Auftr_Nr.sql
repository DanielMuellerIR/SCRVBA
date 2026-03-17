SELECT
  Max(
    Val(
      Right([Auftragsnr], 4)
    )
  ) AS Hoechste_Nummer
FROM
  tbl_20_10_Aufträge
WHERE
  (
    (
      (
        Mid([Auftragsnr], 4, 4)
      )= Year(
        Date()
      )
    )
  );
