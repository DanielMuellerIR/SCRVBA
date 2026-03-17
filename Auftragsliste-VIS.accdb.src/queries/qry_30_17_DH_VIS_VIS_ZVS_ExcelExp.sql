SELECT
  tbl_20_10_Aufträge.angelegt_am,
  [Anrede] & " " & [tbl_10_10_User].[Username] AS Sachb,
  tbl_20_10_Aufträge.Auftragsnr,
  qry_20_10_DH_Auftr_Liste.beauftr_Firma,
  tbl_10_30_Objekte.Objekt AS Leistungsort,
  tbl_20_10_Aufträge.Produktbezeichnung,
  tbl_20_10_Aufträge.Schätzkosten,
  [Vergabeart] & "(" & [Vergabe_Grundlage] & ")" AS [Verg-art],
  tbl_20_10_Aufträge.Teilnehmer,
  tbl_20_10_Aufträge.Auftragssumme,
  tbl_20_10_Aufträge.Auftrags_Dat,
  tbl_20_10_Aufträge.SR_Summe,
  tbl_20_10_Aufträge.SR_bearbeitet_am,
  tbl_20_10_Aufträge.Bemerkungen
FROM
  tbl_10_30_Objekte
  INNER JOIN (
    (
      (
        tbl_20_10_Aufträge
        LEFT JOIN tbl_10_10_User ON tbl_20_10_Aufträge.ID_User = tbl_10_10_User.ID_User
      )
      LEFT JOIN tbl_20_20_Vergabe_Art ON tbl_20_10_Aufträge.ID_Vergabe_Art = tbl_20_20_Vergabe_Art.ID_Vergabe_Art
    )
    INNER JOIN qry_20_10_DH_Auftr_Liste ON tbl_20_10_Aufträge.ID_Auftrag = qry_20_10_DH_Auftr_Liste.ID_Auftrag
  ) ON (
    tbl_10_30_Objekte.ID_Obj = tbl_20_10_Aufträge.ID_Obj
  )
  AND (
    tbl_10_30_Objekte.ID_Obj = tbl_20_10_Aufträge.ID_Obj
  )
WHERE
  (
    (
      (
        tbl_20_10_Aufträge.Schätzkosten
      ) Between 250
      And 15000
    )
  );
