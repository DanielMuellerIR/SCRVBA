SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  [M_Strassenverzeichnis].[Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " --> " & [tbl_100_20_Gebäudeteile].[Gebäudeteil] AS Obj,
  tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst,
  tbl_100_40_Zuordn_Gebteile_Koststellen.Datum_von,
  tbl_100_40_Zuordn_Gebteile_Koststellen.Datum_bis
FROM
  tbl_100_10_Liegenschaften
  LEFT JOIN (
    (
      tbl_100_20_Gebäudeteile
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    )
    LEFT JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst
      ) Is Null
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Mietrelevant
      )= True
    )
  )
ORDER BY
  [M_Strassenverzeichnis].[Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " --> " & [tbl_100_20_Gebäudeteile].[Gebäudeteil];
