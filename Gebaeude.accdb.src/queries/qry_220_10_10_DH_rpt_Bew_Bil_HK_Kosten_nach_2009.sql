SELECT
  qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.*,
  fc_Bewert_Art(
    [tbl_200_05_10_Bewertungsläufe].[Erst_Folgebilanz]
  ) AS Bewertungsart,
  CDbl(
    DSum(
      "[BGF]", "tbl_100_20_Gebäudeteile",
      "[ID_GebT_Zug_GebT] = " & [qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009].[ID_Gebäudeteil] & " or ID_Gebäudeteil = " & [qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009].[ID_Gebäudeteil]
    )
  ) AS BGF,
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
  qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.WBV,
  HK_Berechnen_2022(
    [qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009].[ID_Gebäudeteil]
  ) AS HK_fuer_WBW,
  WBW_Berechnen_2022(
    [qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009].[ID_Gebäudeteil],
    F_Variable("lng_Kalk_Jahr")
  ) AS WBW
FROM
  (
    tbl_200_05_10_Bewertungsläufe
    INNER JOIN (
      (
        qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009
        LEFT JOIN qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau ON qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Bew_Bil = qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau.ID_Bew_Bil
      )
      LEFT JOIN qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh ON (
        qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Bew_Bil = qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.ID_Bew_Bil
      )
      AND (
        qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Gebäudeteil = qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.ID_Gebäudeteil
      )
    ) ON tbl_200_05_10_Bewertungsläufe.id_Bewert = qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.id_Bewert
  )
  INNER JOIN B_Sanierungsstau_Werterhöhung ON qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil
WHERE
  (
    (
      (
        qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Gebäudeteil
      ) Between F_VAriable("lng_ID_Geb_Teil_Min")
      And F_VAriable("lng_ID_Geb_Teil_Max")
    )
    AND (
      (
        B_Sanierungsstau_Werterhöhung.DS_Typ
      )= 1
    )
  );
