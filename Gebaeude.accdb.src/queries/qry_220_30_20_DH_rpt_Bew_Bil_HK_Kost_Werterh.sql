SELECT
  tbl_200_10_10_Bewertungsbilanzen.Id_Bewert,
  tbl_200_30_20_Bew_Bilanz_Werterhoehungen.ID_Bew_Bil,
  tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil,
  Sum(
    IIf([DS_Typ] = 1, [Herstellkosten], 0)
  ) AS HK,
  Sum(
    tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Mehrwert
  ) AS SummevonMehrwert,
  IIf(
    Not IsNull([geschätze Nutzungsdauer]),
    [geschätze Nutzungsdauer],
    [gewöhnliche Nutzungsdauer]
  ) AS Nutzd_urspr,
  Sum(
    tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Nutz_dauer_Jahre_Verl
  ) AS Nutzd_Verl_Kumul,
  [Nutzd_urspr] + [Nutzd_Verl_Kumul] AS Nutzd_gesamt,
  Sum(
    tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Abschr_Monate_Vor_DS_bis_jetzt
  ) AS Abschr_Monate_bis_BewJahr,
  Sum(
    tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Abschr_Vor_DS_bis_Jetzt
  ) AS Abschr_bis_Bew_Jahr,
  Max(
    IIf(
      [DS_Typ] = 3, [Restwert_nach_Werterh],
      1
    )
  ) AS Restwert_Bew_Jahr,
  Max(
    IIf(
      [DS_Typ] = 3, [Abschr_pro_Mon_Vor_DS_bis_jetzt] * 12,
      0
    )
  ) AS Abschr_pro_Jahr_BewJahr,
  Sum(
    tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Abschr_Vor_DS_bis_Jetzt
  ) AS Abschr_BewJahr,
  Sum(
    IIf(
      [DS_Typ] = 3, [Wiederbesch_Wert], 0
    )
  ) AS WBV
FROM
  tbl_200_10_10_Bewertungsbilanzen
  INNER JOIN tbl_200_30_20_Bew_Bilanz_Werterhoehungen ON tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil = tbl_200_30_20_Bew_Bilanz_Werterhoehungen.ID_Bew_Bil
GROUP BY
  tbl_200_10_10_Bewertungsbilanzen.Id_Bewert,
  tbl_200_30_20_Bew_Bilanz_Werterhoehungen.ID_Bew_Bil,
  tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil,
  IIf(
    Not IsNull([geschätze Nutzungsdauer]),
    [geschätze Nutzungsdauer],
    [gewöhnliche Nutzungsdauer]
  );
