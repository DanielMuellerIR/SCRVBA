SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  [NAme] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " -> " & [tbl_100_20_Gebäudeteile].[Gebäudeteil] AS Obj
FROM
  (
    M_Strassenverzeichnis
    RIGHT JOIN tbl_100_10_Liegenschaften ON M_Strassenverzeichnis.Kennummer = tbl_100_10_Liegenschaften.Kennummer_Straße
  )
  INNER JOIN tbl_100_20_Gebäudeteile ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        tbl_100_20_Gebäudeteile.Bilanz_relevant
      )= True
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT
      ) Is Null
    )
  )
ORDER BY
  [NAme] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " -> " & [tbl_100_20_Gebäudeteile].[Gebäudeteil];
