SELECT
  qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Gebäudeteil,
  fc_Bewert_Art(
    [tbl_200_05_10_Bewertungsläufe].[Erst_Folgebilanz]
  ) AS Bewertungsart,
  tbl_200_05_10_Bewertungsläufe.Erläuterung,
  tbl_200_05_10_Bewertungsläufe.Bewertungsjahr,
  qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Objekt,
  qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Gebaeudekennung,
  CDbl(
    DSum(
      "[BGF]", "tbl_100_20_Gebäudeteile",
      "[ID_GebT_Zug_GebT] = " & [qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009].[ID_Gebäudeteil] & " or ID_Gebäudeteil = " & [qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009].[ID_Gebäudeteil]
    )
  ) AS BGF,
  qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.BRI,
  qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Baujahr,
  B_Sanierungsstau_Werterhöhung.Herstellkosten AS HK,
  IIf(
    [voll berechnen] = True,
    CCur(
      Nz([Bodenrichtwert] * [Fläche])
    ),
    CCur(
      Nz(
        [Bodenrichtwert] * [Fläche] * [Anteil Bodenrichtwert] / 100
      )
    )
  ) AS Grundstueckswert,
  CCur(
    Nz([San_Stau])
  ) AS Sanierungsstau,
  CCur(
    Nz([SummevonMehrwert])
  ) AS Werterh,
  [Nutzd_gesamt] * 12 AS NutzD_ges_Monate,
  fc_Jahre_Monate([NutzD_ges_Monate]) AS NutzD_ges_J_M,
  qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.Abschr_Monate_bis_BewJahr,
  fc_Jahre_Monate([Abschr_Monate_bis_BewJahr]) AS Abschr_bis_BewJ_J_M,
  [NutzD_ges_Monate] - [Abschr_Monate_bis_BewJahr] AS NutzD_Rest,
  fc_JAhre_monate([NutzD_Rest]) AS NutzD_Rest_J_M,
  CCur(
    Nz([Abschr_bis_Bew_Jahr])
  ) AS Abschr,
  qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.Restwert_Bew_Jahr,
  qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Versicherungswert,
  qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.WBV,
  qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Typ
FROM
  (
    tbl_200_05_10_Bewertungsläufe
    INNER JOIN (
      (
        qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009
        LEFT JOIN qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau ON qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Bew_Bil = qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau.ID_Bew_Bil
      )
      LEFT JOIN qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh ON (
        qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Gebäudeteil = qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.ID_Gebäudeteil
      )
      AND (
        qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Bew_Bil = qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.ID_Bew_Bil
      )
    ) ON tbl_200_05_10_Bewertungsläufe.id_Bewert = qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.id_Bewert
  )
  INNER JOIN B_Sanierungsstau_Werterhöhung ON qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil
WHERE
  (
    (
      (
        B_Sanierungsstau_Werterhöhung.DS_Typ
      )= 1
    )
  );
