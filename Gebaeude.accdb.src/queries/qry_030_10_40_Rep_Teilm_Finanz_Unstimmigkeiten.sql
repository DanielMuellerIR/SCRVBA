SELECT
  [M_Strassenverzeichnis].[Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil] AS Objekt,
  Maßnahmen.Maßnahme,
  qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul.ID,
  Sum(
    qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul.Finanz_Jahressumme
  ) AS Unstimmig
FROM
  tbl_100_10_Liegenschaften
  INNER JOIN (
    (
      tbl_100_20_Gebäudeteile
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    )
    INNER JOIN (
      qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul
      INNER JOIN Maßnahmen ON qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul.ID = Maßnahmen.ID
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
GROUP BY
  [M_Strassenverzeichnis].[Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil],
  Maßnahmen.Maßnahme,
  qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul.ID
HAVING
  (
    (
      (
        Sum(
          qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul.Finanz_Jahressumme
        )
      )<> 0
    )
  );
