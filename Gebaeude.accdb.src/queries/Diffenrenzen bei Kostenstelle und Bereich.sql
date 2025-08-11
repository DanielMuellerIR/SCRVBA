SELECT
  tbl_100_10_Liegenschaften.Bezeichnung,
  M_Bereiche.BereichNr,
  M_Kostenstellen.Kostenstelle,
  Right(
    Left([Kostenstelle], 4),
    2
  ) AS [Bereich Kostenstelle]
FROM
  tbl_100_10_Liegenschaften
  RIGHT JOIN (
    (
      (
        M_Bereiche
        RIGHT JOIN tbl_100_20_Gebäudeteile ON M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]
      )
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    )
    LEFT JOIN (
      M_Kostenstellen
      RIGHT JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        tbl_100_10_Liegenschaften.Bezeichnung
      )= "Objekt : Name" & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " --> " & [tbl_100_20_Gebäudeteile].[Gebäudeteil]
    )
    AND (
      (
        Right(
          Left([Kostenstelle], 4),
          2
        )
      )<> [BereichNr]
    )
  )
ORDER BY
  tbl_100_10_Liegenschaften.Bezeichnung;
