SELECT
  Sachbearbeiter.Name,
  tbl_100_10_Liegenschaften.Bezeichnung,
  [M_Strassenverzeichnis].[Name] & " " & [Haus_Nr] AS Straße_HNr,
  Sachbearbeiter.Objektverantwortlicher
FROM
  Sachbearbeiter
  INNER JOIN (
    tbl_100_10_Liegenschaften
    LEFT JOIN M_Strassenverzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
  ) ON Sachbearbeiter.ID = tbl_100_10_Liegenschaften.ID_SB
WHERE
  (
    (
      (
        Sachbearbeiter.Objektverantwortlicher
      )= True
    )
  )
ORDER BY
  Sachbearbeiter.Name,
  [M_Strassenverzeichnis].[Name] & " " & [Haus_Nr];
