SELECT
  a.ID_Auftrag,
  a.Auftragsnr,
  a.Best_Nr_Infoma,
  f.Name AS beauftr_Firma,
  Nz([objekt]) AS Leistungs_Ort,
  Nz([Produktbezeichnung]) AS Produkt_Bez,
  a.AS_brutto,
  a.ID_Fa,
  f.PersID
FROM
  tbl_10_40_Firmen AS f
  RIGHT JOIN (
    tbl_10_30_Objekte AS o
    RIGHT JOIN (
      tbl_20_10_Aufträge AS a
      LEFT JOIN tbl_10_10_User AS u ON a.ID_User = u.ID_User
    ) ON o.ID_Obj = a.ID_Obj
  ) ON f.ID_Fa = a.ID_Fa
WHERE
  (
    (
      Nz([objekt])
    ) Like ('*' & '' & '*')
  )
  AND (
    (
      Nz(
        Mid([Auftragsnr], 4, 4)
      )
    ) Like ('*' & '2026' & '*')
  )
ORDER BY
  Nz(
    Mid([Auftragsnr], 4, 4)
  ) DESC,
  Nz(
    Mid([Auftragsnr], 9, 4)
  );
