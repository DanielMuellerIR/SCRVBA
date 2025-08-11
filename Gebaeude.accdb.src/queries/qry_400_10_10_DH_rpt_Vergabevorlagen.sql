SELECT
  DISTINCT Year([Auftr_Datum]) AS Auftr_Jahr,
  fc_Fin_Herk([Maßnahmen].[ID]) AS Fin_HK,
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil] AS Bez,
  Maßnahmen.Maßnahme,
  Aufträge.*,
  [Aufträge].[PLZ] & " " & [Firmensitz] AS FS,
  qry_400_10_05_Verg_Summen_pro_Auftrag.[SummevonWert Auftrag] AS Auftrag_ges
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
          Maßnahmen
          LEFT JOIN Haushaltsdaten ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
        )
        INNER JOIN (
          Aufträge
          INNER JOIN qry_400_10_05_Verg_Summen_pro_Auftrag ON Aufträge.ID_Hauptauftr = qry_400_10_05_Verg_Summen_pro_Auftrag.ID_Hauptauftr
        ) ON Maßnahmen.ID = Aufträge.ID_Maßnahme
      )
      LEFT JOIN [Geplante Finanzierung] ON Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        qry_400_10_05_Verg_Summen_pro_Auftrag.[SummevonWert Auftrag]
      )>= F_Variable("cur_Auftr_Minwert")
    )
    AND (
      (Aufträge.Auftr_Datum) Between F_Variable("dt_Start_Datum")
      And F_Variable("dt_Ende_Datum")
    )
  );
