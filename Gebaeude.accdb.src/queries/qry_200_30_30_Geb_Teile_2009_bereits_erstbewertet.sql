SELECT
  tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil
FROM
  tbl_200_05_10_Bewertungsläufe
  INNER JOIN tbl_200_10_10_Bewertungsbilanzen ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert
WHERE
  (
    (
      (
        tbl_200_05_10_Bewertungsläufe.Urspr_2009
      )= True
    )
  );
