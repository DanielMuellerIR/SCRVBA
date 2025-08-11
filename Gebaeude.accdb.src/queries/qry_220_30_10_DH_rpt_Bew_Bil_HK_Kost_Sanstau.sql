SELECT
  tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil,
  tbl_100_10_Liegenschaften.Bezeichnung,
  tbl_100_20_Gebäudeteile.Gebäudeteil,
  tbl_200_30_10_Bew_Bilanz_Sanierungsstau.ID_Bew_Bil,
  Sum(
    tbl_200_30_10_Bew_Bilanz_Sanierungsstau.[voraussichtliche Kosten gesamt]
  ) AS San_Stau
FROM
  tbl_100_10_Liegenschaften
  INNER JOIN (
    (
      tbl_200_10_10_Bewertungsbilanzen
      INNER JOIN tbl_100_20_Gebäudeteile ON tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
    )
    INNER JOIN tbl_200_30_10_Bew_Bilanz_Sanierungsstau ON tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil = tbl_200_30_10_Bew_Bilanz_Sanierungsstau.ID_Bew_Bil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        tbl_200_30_10_Bew_Bilanz_Sanierungsstau.Bilanz_relevant
      )= True
    )
  )
GROUP BY
  tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil,
  tbl_100_10_Liegenschaften.Bezeichnung,
  tbl_100_20_Gebäudeteile.Gebäudeteil,
  tbl_200_30_10_Bew_Bilanz_Sanierungsstau.ID_Bew_Bil;
