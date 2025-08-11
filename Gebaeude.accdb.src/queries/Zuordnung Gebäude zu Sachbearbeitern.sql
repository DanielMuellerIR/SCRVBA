SELECT
  tbl_100_10_Liegenschaften.Bezeichnung,
  tbl_100_10_Liegenschaften.ID_SB,
  [NAme] & " " & [Haus_Nr] AS STraße_HN
FROM
  tbl_100_10_Liegenschaften
  LEFT JOIN M_Strassenverzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer;
