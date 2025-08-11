SELECT
  tbl_200_10_10_Bewertungsbilanzen.Kennummer,
  Bewertung_Archiv_1_aus_2009_indiziert.Straße,
  Bewertung_Archiv_1_aus_2009_indiziert.Bezeichnung,
  Bewertung_Archiv_1_aus_2009_indiziert.Gebäudeteil
FROM
  tbl_200_10_10_Bewertungsbilanzen
  INNER JOIN Bewertung_Archiv_1_aus_2009_indiziert ON tbl_200_10_10_Bewertungsbilanzen.Kennummer = Bewertung_Archiv_1_aus_2009_indiziert.Kennummer
GROUP BY
  tbl_200_10_10_Bewertungsbilanzen.Kennummer,
  Bewertung_Archiv_1_aus_2009_indiziert.Straße,
  Bewertung_Archiv_1_aus_2009_indiziert.Bezeichnung,
  Bewertung_Archiv_1_aus_2009_indiziert.Gebäudeteil,
  tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil
HAVING
  (
    (
      (
        tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil
      ) Is Null
    )
  );
