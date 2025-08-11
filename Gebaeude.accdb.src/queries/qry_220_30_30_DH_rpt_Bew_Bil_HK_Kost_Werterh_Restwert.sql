SELECT
  tbl_200_30_20_Bew_Bilanz_Werterhoehungen.ID_Bew_Bil,
  tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Restwert_nach_Werterh
FROM
  tbl_200_30_20_Bew_Bilanz_Werterhoehungen
WHERE
  (
    (
      (
        tbl_200_30_20_Bew_Bilanz_Werterhoehungen.DS_Typ
      )= 3
    )
  );
