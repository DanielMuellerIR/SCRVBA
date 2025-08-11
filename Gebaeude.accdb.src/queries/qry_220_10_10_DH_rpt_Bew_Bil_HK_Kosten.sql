SELECT
  qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.Gebaeudekennung,
  tbl_200_05_10_Bewertungsläufe.Erläuterung,
  fc_Bewert_Art(
    [tbl_200_05_10_Bewertungsläufe].[Erst_Folgebilanz]
  ) AS Bewertungsart,
  tbl_200_05_10_Bewertungsläufe.Bewertungsjahr,
  qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.ID_Gebäudeteil,
  [Straße] & ": " & [qry_rpt_200_10_10_Datenherk_Bewertungsbilanz].[Bezeichnung] & " -> " & [qry_rpt_200_10_10_Datenherk_Bewertungsbilanz].[gebäudeteil] AS Objekt,
  CDbl(
    Nz(
      [qry_rpt_200_10_10_Datenherk_Bewertungsbilanz].[BGF]
    )
  ) AS BGF,
  CDbl(
    Nz(
      [qry_rpt_200_10_10_Datenherk_Bewertungsbilanz].[BRI]
    )
  ) AS BRI,
  IIf(
    Not IsNull([Baujahr_mod]),
    [BAujahr_mod],
    [Baujahr_real]
  ) AS Baujahr,
  qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.Typ,
  CCur(
    Nz([SummevonMehrwert])
  ) AS Werterhoehung,
  CCur(
    [BGF] * CCur(
      Nz([Euro je BGF])
    )
  ) AS Wert_1,
  IIf(
    [Index_Manuell] Is Null, [Index ab 2000],
    [Index_Manuell]
  ) AS [Index],
  CCur(
    [Wert_1] *(1 + [Index] / 100)
  ) AS Wert_2,
  CCur(
    [Wert_2] * CCur(
      Nz([Baunebenkosten])
    )/ 100
  ) AS BNK,
  [BNK] + [Wert_2] AS Wert_3,
  qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.Neubauwert_ab_2000,
  CCur([Wert_3] * 4 / 100) AS Aussenanlagen,
  qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.[index ab 2000],
  IIf(
    Val(
      Nz([Neubauwert_ab_2000])
    )= 0,
    [Wert_3] + [Aussenanlagen],
    [Neubauwert_ab_2000]
  ) AS Herstellkosten,
  IIf(
    Val(
      Nz([Neubauwert_ab_2000])
    )= 0,
    [Wert_3] + [Aussenanlagen],
    [Neubauwert_ab_2000] *(1 + [index ab 2000] / 100)
  ) AS WBW,
  IIf(
    [geschätze Nutzungsdauer] Is Null,
    [gewöhnliche Nutzungsdauer], [geschätze Nutzungsdauer]
  ) AS Nutzdauer,
  IIf([Nutzdauer] <= 0, 1, [Nutzdauer]) AS Nutzungsdauer,
  CCur(
    [Herstellkosten] / [Nutzungsdauer]
  ) AS Abschr_pro_Jahr,
  Abschreibungszeit(
    [tbl_200_05_10_Bewertungsläufe].[bewertungsjahr],
    [Baujahr], [Nutzungsdauer]
  ) AS Abschr_Jahre,
  IIf(
    IsNumeric([Abschr_Jahre]),
    CCur(
      IIf(
        [Abschr_Jahre] * [Abschr_pro_Jahr] > [Herstellkosten],
        [Herstellkosten], [Abschr_Jahre] * [Abschr_pro_Jahr]
      )
    ),
    0
  ) AS Kumul_Abschr,
  qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau.San_stau AS Sanierungsstau,
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
  IIf(
    Int(
      CCur(
        Nz([Herstellkosten])
      )- CCur(
        Nz([Kumul_Abschr])
      )- CCur(
        Nz([Sanierungsstau])
      )
    )<= 0,
    1,
    CCur(
      Nz([Herstellkosten])
    )- CCur(
      Nz([Kumul_Abschr])
    )- CCur(
      Nz([Sanierungsstau])
    )
  ) AS Ermittelter_Wert,
  qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.Versicherungswert
FROM
  (
    (
      qry_rpt_200_10_10_Datenherk_Bewertungsbilanz
      LEFT JOIN qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau ON qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.ID_Bew_Bil = qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau.ID_Bew_Bil
    )
    LEFT JOIN qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh ON qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.ID_Bew_Bil = qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.ID_Bew_Bil
  )
  INNER JOIN tbl_200_05_10_Bewertungsläufe ON qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.id_Bewert = tbl_200_05_10_Bewertungsläufe.id_Bewert
ORDER BY
  [Straße] & ": " & [qry_rpt_200_10_10_Datenherk_Bewertungsbilanz].[Bezeichnung] & " -> " & [qry_rpt_200_10_10_Datenherk_Bewertungsbilanz].[gebäudeteil];
