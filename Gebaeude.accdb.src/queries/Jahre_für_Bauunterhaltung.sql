SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  Kalenderjahre.Jahr
FROM
  Kalenderjahre,
  tbl_100_20_Gebäudeteile
WHERE
  (
    (
      (Kalenderjahre.Jahr)> 2005
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Mietrelevant
      )= True
    )
  )
ORDER BY
  Kalenderjahre.Jahr;
