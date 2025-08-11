SELECT
  qry_030_05_05_Haush_Dat_Maßn_Summen.ID,
  CCur(
    Nz([Betrag])
  ) AS zufVfg,
  CCur(
    Nz([SummevonBetrag])
  ) AS Geplant
FROM
  qry_030_05_05_Haush_Dat_Maßn_Summen
  LEFT JOIN qry_030_05_10_Gepl_Finanz_Maßn_Summen ON (
    qry_030_05_05_Haush_Dat_Maßn_Summen.ID = qry_030_05_10_Gepl_Finanz_Maßn_Summen.ID
  )
  AND (
    qry_030_05_05_Haush_Dat_Maßn_Summen.Jahr = qry_030_05_10_Gepl_Finanz_Maßn_Summen.Kalenderjahr
  )
WHERE
  (
    (
      (
        [Jahr] = F_Variable("lng_Kalk_JAhr")
      )= True
    )
  );
