SELECT
  [Bezeichnung] & " -> " & [Gebäudeteil] & ": " & [Maßnahme] AS Massn,
  tbl_010_20_10_Entgeltgruppen.Entgeltgruppe,
  Sum(
    CDbl([Stunden])* 24
  ) AS Anz_Stunden,
  Sum(
    CCur(
      CDbl([Stunden])* 24 * [Arb_Stunden_Kosten]
    )
  ) AS AE
FROM
  (
    tbl_100_10_Liegenschaften
    INNER JOIN (
      tbl_100_20_Gebäudeteile
      INNER JOIN (
        (
          Maßnahmen
          INNER JOIN [Teile der Maßnahmen] ON Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]
        )
        INNER JOIN Sachbearbeiter AS Sachbearbeiter_1 ON [Teile der Maßnahmen].ID_SB = Sachbearbeiter_1.ID
      ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
    ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
  )
  INNER JOIN (
    tbl_010_20_10_Entgeltgruppen
    INNER JOIN (
      Maßnahmen_Eigenl_Stunden
      INNER JOIN (
        qry_010_20_20_Arbeitsplatzkosten
        INNER JOIN Sachbearbeiter ON qry_010_20_20_Arbeitsplatzkosten.ID_EG_Gr = Sachbearbeiter.ID_EG_Gr
      ) ON Maßnahmen_Eigenl_Stunden.ID_SB = Sachbearbeiter.ID
    ) ON tbl_010_20_10_Entgeltgruppen.ID_EG_Gr = Sachbearbeiter.ID_EG_Gr
  ) ON [Teile der Maßnahmen].ID = Maßnahmen_Eigenl_Stunden.ID_Teil_Massn
WHERE
  (
    (
      (Maßnahmen.ID) Between F_Variable("lng_id_Massn_min")
      And F_Variable("lng_id_Massn_max")
    )
    AND (
      (Maßnahmen_Eigenl_Stunden.ID_SB) Between F_Variable("lng_ID_SB_Min")
      And F_Variable("lng_ID_SB_Max")
    )
    AND (
      (
        Maßnahmen_Eigenl_Stunden.Eigenl_Datum
      ) Between F_Variable("dt_Start_Datum")
      And F_Variable("dt_Ende_Datum")
      And (
        Maßnahmen_Eigenl_Stunden.Eigenl_Datum
      ) Between [Tarif_seit]
      And [Tarif_bis]
    )
  )
GROUP BY
  [Bezeichnung] & " -> " & [Gebäudeteil] & ": " & [Maßnahme],
  tbl_010_20_10_Entgeltgruppen.Entgeltgruppe,
  qry_010_20_20_Arbeitsplatzkosten.Arb_Stunden_Kosten
ORDER BY
  [Bezeichnung] & " -> " & [Gebäudeteil] & ": " & [Maßnahme];
