SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  [NAme] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " -> " & [tbl_100_20_Gebäudeteile].[Gebäudeteil] AS Obj
FROM
  (
    M_Strassenverzeichnis
    RIGHT JOIN tbl_100_10_Liegenschaften ON M_Strassenverzeichnis.Kennummer = tbl_100_10_Liegenschaften.Kennummer_Straße
  )
  INNER JOIN (
    tbl_200_05_10_Bewertungsläufe
    RIGHT JOIN (
      tbl_100_20_Gebäudeteile
      LEFT JOIN tbl_200_10_10_Bewertungsbilanzen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil
    ) ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        tbl_100_20_Gebäudeteile.Zust_B60
      )= False
    )
  )
ORDER BY
  [NAme] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " -> " & [tbl_100_20_Gebäudeteile].[Gebäudeteil];
