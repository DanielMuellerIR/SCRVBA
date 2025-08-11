INSERT INTO tbl_200_30_20_Bew_Bilanz_Werterhoehungen (
  ID_Bew_Bil, DS_Typ, Bauteil, Aktivierungs_Datum,
  Index_Vor_DS_bis_jetzt, Herstellkosten,
  Wiederbesch_Wert, Nutzungs_Monate_ab_jetzt,
  Abschr_pro_Mon_Vor_DS_bis_jetzt,
  Abschr_Monate_Vor_DS_bis_jetzt,
  Abschr_Vor_DS_bis_Jetzt, Restwert_vor_Werterh,
  Mehrwert, Nutz_dauer_Jahre_Verl,
  Beruecks_Wiederbesch_Wert, Restwert_nach_Werterh
)
SELECT
  tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil,
  B_Sanierungsstau_Werterhöhung.DS_Typ,
  B_Sanierungsstau_Werterhöhung.Bauteil,
  B_Sanierungsstau_Werterhöhung.Aktivierungs_Datum,
  B_Sanierungsstau_Werterhöhung.Index_Vor_DS_bis_jetzt,
  B_Sanierungsstau_Werterhöhung.Herstellkosten,
  B_Sanierungsstau_Werterhöhung.Wiederbesch_Wert,
  B_Sanierungsstau_Werterhöhung.Nutzungs_Monate_ab_jetzt,
  B_Sanierungsstau_Werterhöhung.Abschr_pro_Mon_Vor_DS_bis_jetzt,
  B_Sanierungsstau_Werterhöhung.Abschr_Monate_Vor_DS_bis_jetzt,
  B_Sanierungsstau_Werterhöhung.Abschr_Vor_DS_bis_Jetzt,
  B_Sanierungsstau_Werterhöhung.Restwert_vor_Werterh,
  B_Sanierungsstau_Werterhöhung.Mehrwert,
  B_Sanierungsstau_Werterhöhung.Nutz_dauer_Jahre_Verl,
  B_Sanierungsstau_Werterhöhung.Beruecks_Wiederbesch_Wert,
  B_Sanierungsstau_Werterhöhung.Restwert_nach_Werterh
FROM
  tbl_200_05_10_Bewertungsläufe
  INNER JOIN (
    (
      tbl_200_10_10_Bewertungsbilanzen
      INNER JOIN tbl_100_20_Gebäudeteile ON tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
    )
    INNER JOIN B_Sanierungsstau_Werterhöhung ON (
      tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil
    )
    AND (
      tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil
    )
  ) ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert
WHERE
  (
    (
      (
        tbl_100_20_Gebäudeteile.ID_Gebäudeteil
      )= F_Variable("lng_ID_Geb_Teil")
    )
    AND (
      (
        tbl_200_05_10_Bewertungsläufe.id_Bewert
      )= F_Variable("lng_id_Bewert")
    )
  );
