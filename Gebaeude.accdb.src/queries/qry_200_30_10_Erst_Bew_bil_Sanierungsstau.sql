INSERT INTO tbl_200_30_10_Bew_Bilanz_Sanierungsstau (
  ID_Bew_Bil, Maßnahme, Bilanz_relevant,
  [voraussichtliche Kosten gesamt]
)
SELECT
  tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil,
  Maßnahmen.Maßnahme,
  Maßnahmen.Bilanz_relevant,
  Maßnahmen.[voraussichtliche Kosten gesamt]
FROM
  (
    tbl_200_05_10_Bewertungsläufe
    INNER JOIN (
      tbl_200_10_10_Bewertungsbilanzen
      INNER JOIN tbl_100_20_Gebäudeteile ON tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
    ) ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert
  )
  INNER JOIN Maßnahmen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
WHERE
  (
    (
      (Maßnahmen.Bilanz_relevant)= True
    )
    AND (
      (
        tbl_200_05_10_Bewertungsläufe.id_Bewert
      )= F_Variable("lng_id_Bewert")
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.ID_Gebäudeteil
      )= F_Variable("lng_ID_Geb_Teil")
    )
    AND (
      (Maßnahmen.[erledigt im Jahr]) Is Null
    )
  );
