SELECT
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] AS Objekt,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  tbl_050_10_Gemarkungen.Gemarkung,
  tbl_070_10_Flure.Flur,
  fc_Flurstuecke(
    [tbl_100_10_Liegenschaften].[ID_Gebäude]
  ) AS Flurstücke,
  "06 : Reale Herstellungskosten ab BJ. 2000 fehlen" AS Fehler
FROM
  (
    tbl_070_10_Flure
    RIGHT JOIN (
      tbl_050_10_Gemarkungen
      RIGHT JOIN tbl_100_10_Liegenschaften ON tbl_050_10_Gemarkungen.ID_Gemarkung = tbl_100_10_Liegenschaften.ID_Gemarkung
    ) ON tbl_070_10_Flure.ID_Flur = tbl_100_10_Liegenschaften.ID_Flur
  )
  LEFT JOIN (
    tbl_100_20_Gebäudeteile
    LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        tbl_100_20_Gebäudeteile.Baujahr_real
      )> #12/31/1999#
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Neubauwert_ab_2000
      ) Is Null
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT
      ) Is Null
    )
  )
ORDER BY
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung];
