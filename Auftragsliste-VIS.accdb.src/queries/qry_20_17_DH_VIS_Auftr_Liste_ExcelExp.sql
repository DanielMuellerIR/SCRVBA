SELECT
  tbl_20_10_Aufträge.angelegt_am,
  tbl_20_10_Aufträge.Auftragsnr,
  tbl_20_10_Aufträge.Best_Nr_Infoma,
  tbl_20_10_Aufträge.Vergabe_Nr_VIS,
  tbl_20_10_Aufträge.Mel_Nr_Infoma,
  qry_20_10_DH_Auftr_Liste.beauftr_Firma,
  tbl_10_30_Objekte.Objekt AS Leistungsort,
  tbl_20_10_Aufträge.Produktbezeichnung,
  tbl_20_10_Aufträge.Produktart,
  tbl_20_10_Aufträge.SK_brutto,
  tbl_20_10_Aufträge.Teilnehmer,
  tbl_20_10_Aufträge.Bemerkungen,
  tbl_20_10_Aufträge.AS_brutto,
  tbl_20_10_Aufträge.Auftrags_Dat,
  tbl_20_10_Aufträge.SR_brutto,
  tbl_20_10_Aufträge.SR_bearbeitet_am
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
  );
