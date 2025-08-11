SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  [NAme] & " " & [tbl_100_20_Gebäudeteile].[HAus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " -> " & [tbl_100_20_Gebäudeteile].[Gebäudeteil] AS Objekt
FROM
  (
    tbl_100_10_Liegenschaften
    INNER JOIN (
      tbl_200_05_10_Bewertungsläufe
      RIGHT JOIN (
        tbl_200_10_10_Bewertungsbilanzen
        RIGHT JOIN tbl_100_20_Gebäudeteile ON tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
      ) ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert
    ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
  )
  LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
WHERE
  (
    (
      (
        tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz
      )<> 1
      Or (
        tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz
      ) Is Null
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Bilanz_relevant
      )= True
    )
  )
GROUP BY
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  [NAme] & " " & [tbl_100_20_Gebäudeteile].[HAus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " -> " & [tbl_100_20_Gebäudeteile].[Gebäudeteil];
