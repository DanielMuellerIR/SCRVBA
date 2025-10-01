SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  tbl_100_20_Gebäudeteile.Gebäudeteil
FROM
  tbl_100_20_Gebäudeteile
WHERE
  (
    (
      (
        tbl_100_20_Gebäudeteile.ID_Gebäude
      )= [Formulare]![Filter für Anlagen]![KF_Liegenschaften]
    )
  )
ORDER BY
  tbl_100_20_Gebäudeteile.Gebäudeteil;
