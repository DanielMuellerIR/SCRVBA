SELECT
  DISTINCT IIf(
    IsDate([Dat_Abschluss_DB]),
    "Z: Abgeschlossene Maßnahmen",
    "A: Noch offene Maßnahmen"
  ) AS Sort,
  Maßnahmen.ID AS ID_Massn,
  [Teile der Maßnahmen].ID AS ID_Teilm,
  Maßnahmen.Aktiv_Eigenl,
  IIf([Aktiv_Eigenl], "X", "") AS akt_Eigenl,
  [Teile der Maßnahmen].[voraussichtliche Kosten],
  [Bezeichnung] & " -> " & [Gebäudeteil] & " -> " & [Maßnahme] AS Obj_Massn,
  [Teile der Maßnahmen].Teilmaßname,
  [Teile der Maßnahmen].Dat_Abschluss_DB,
  DLookUp(
    "[Inv_Nr]",
    "Haushaltsdaten",
    "[ID aus Maßnahmen] = " & [Maßnahmen].[ID] & " AND [Jahr] =  " & F_VAriable("lng_Kalk_Jahr")
  ) AS Inv_Nr,
  IIf(
    [Inv_Nr] Is Null, "", "VH-Nr. " & [Inv_Nr]
  ) AS Inv_Nr_ber,
  IIf([Name] Is Null, "N.N.", [NAme]) AS Sachbearbeiter,
  [Teile der Maßnahmen].ID_SB,
  Sachbearbeiter.Name,
  Sachbearbeiter.Kennfarbe,
  fct_Jan(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ) AS Jan,
  fct_feb(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ) AS Feb,
  fct_Mrz(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ) AS Mrz,
  fct_Apr(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ) AS Apr,
  fct_Mai(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ) AS Mai,
  fct_Jun(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ) AS Jun,
  fct_Jul(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ) AS Jul,
  fct_Aug(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ) AS Aug,
  fct_Sep(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ) AS Sep,
  fct_Okt(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ) AS Okt,
  fct_Nov(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ) AS Nov,
  fct_Dez(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ) AS Dez
FROM
  tbl_100_10_Liegenschaften
  INNER JOIN (
    tbl_100_20_Gebäudeteile
    INNER JOIN (
      Sachbearbeiter
      INNER JOIN (
        (
          (
            Maßnahmen
            INNER JOIN [Teile der Maßnahmen] ON Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]
          )
          LEFT JOIN Haushaltsdaten ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
        )
        LEFT JOIN qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP ON Maßnahmen.ID = qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.ID
      ) ON Sachbearbeiter.ID = [Teile der Maßnahmen].ID_SB
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
GROUP BY
  IIf(
    IsDate([Dat_Abschluss_DB]),
    "Z: Abgeschlossene Maßnahmen",
    "A: Noch offene Maßnahmen"
  ),
  Maßnahmen.ID,
  [Teile der Maßnahmen].ID,
  Maßnahmen.Aktiv_Eigenl,
  IIf([Aktiv_Eigenl], "X", ""),
  [Teile der Maßnahmen].[voraussichtliche Kosten],
  [Bezeichnung] & " -> " & [Gebäudeteil] & " -> " & [Maßnahme],
  [Teile der Maßnahmen].Teilmaßname,
  [Teile der Maßnahmen].Dat_Abschluss_DB,
  DLookUp(
    "[Inv_Nr]",
    "Haushaltsdaten",
    "[ID aus Maßnahmen] = " & [Maßnahmen].[ID] & " AND [Jahr] =  " & F_VAriable("lng_Kalk_Jahr")
  ),
  IIf(
    [Inv_Nr] Is Null, "", "VH-Nr. " & [Inv_Nr]
  ),
  IIf([Name] Is Null, "N.N.", [NAme]),
  [Teile der Maßnahmen].ID_SB,
  Sachbearbeiter.Name,
  Sachbearbeiter.Kennfarbe,
  fct_Jan(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ),
  fct_feb(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ),
  fct_Mrz(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ),
  fct_Apr(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ),
  fct_Mai(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ),
  fct_Jun(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ),
  fct_Jul(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ),
  fct_Aug(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ),
  fct_Sep(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ),
  fct_Okt(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ),
  fct_Nov(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ),
  fct_Dez(
    F_Variable("lng_Kalk_Jahr"),
    [Dat_Grundl_Erm_Start],
    [Dat_Grundl_Erm_Ende],
    [Dat_Planung_Start],
    [Dat_Planung_Ende],
    [Dat_Ausschr_Start],
    [Dat_Ausschr_Ende],
    [Dat_Ausf_Start],
    [Dat_Ausf_Ende],
    [Dat_Abr_Start],
    [Dat_Abr_Ende],
    [Dat_Abschluss_DB]
  ),
  Maßnahmen.[nicht mehr erforderlich weil],
  [Teile der Maßnahmen].Umsetzungsjahr,
  (
    [Sachbearbeiter].[ID] >= F_VAriable('lng_ID_SB_Min')
    And [Sachbearbeiter].[ID] <= F_VAriable('lng_ID_SB_Max')
  )
  Or [Sachbearbeiter].[ID] Is Null
HAVING
  (
    (
      (
        Maßnahmen.[nicht mehr erforderlich weil]
      ) Is Null
      Or (
        Maßnahmen.[nicht mehr erforderlich weil]
      ) Is Null
    )
    AND (
      (
        [Teile der Maßnahmen].Umsetzungsjahr
      )= F_VAriable("lng_Kalk_Jahr")
    )
    AND (
      (
        (
          [Sachbearbeiter].[ID] >= F_VAriable('lng_ID_SB_Min')
          And [Sachbearbeiter].[ID] <= F_VAriable('lng_ID_SB_Max')
        )
        Or [Sachbearbeiter].[ID] Is Null
      )= True
    )
  )
ORDER BY
  IIf(
    IsDate([Dat_Abschluss_DB]),
    "Z: Abgeschlossene Maßnahmen",
    "A: Noch offene Maßnahmen"
  ),
  [Bezeichnung] & " -> " & [Gebäudeteil] & " -> " & [Maßnahme],
  IIf([Name] Is Null, "N.N.", [NAme]);
