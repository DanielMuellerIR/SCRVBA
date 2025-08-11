SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil] AS Objekt,
  Maßnahmen.Maßnahme,
  Buchungsstellen.Buchungsstelle,
  Finanzquellen.Finanzquelle,
  CCur(
    Nz([HHR])
  )+ CCur(
    Nz([Ansatz])
  ) AS HHR_pl_Ansatz,
  Haushaltsdaten.bez_Rechnung
FROM
  tbl_100_10_Liegenschaften
  INNER JOIN (
    (
      tbl_100_20_Gebäudeteile
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    )
    INNER JOIN (
      (
        (
          Buchungsstellen
          RIGHT JOIN (
            Maßnahmen
            INNER JOIN Haushaltsdaten ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
          ) ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]
        )
        LEFT JOIN Finanzquellen ON Haushaltsdaten.ID_Fin_Qu = Finanzquellen.ID_Fin_Qu
      )
      INNER JOIN qry_rpt_300_10_05_Gepl_Erled_Finanzierung ON Maßnahmen.ID = qry_rpt_300_10_05_Gepl_Erled_Finanzierung.ID_Massnahme
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (Haushaltsdaten.Jahr)= F_Variable("lng_Kalk_Jahr")
    )
    AND (
      (
        Maßnahmen.[nicht mehr erforderlich weil]
      ) Is Null
    )
  )
GROUP BY
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil],
  Maßnahmen.Maßnahme,
  Buchungsstellen.Buchungsstelle,
  Finanzquellen.Finanzquelle,
  CCur(
    Nz([HHR])
  )+ CCur(
    Nz([Ansatz])
  ),
  Haushaltsdaten.bez_Rechnung
ORDER BY
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil];
