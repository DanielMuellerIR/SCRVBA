SELECT
  Maßnahmen.ID,
  CCur(
    Nz([Betrag])
  ) AS zufVfg,
  qry_030_05_10_Gepl_Finanz_Maßn_Summen.SummevonBetrag
FROM
  (
    Maßnahmen
    LEFT JOIN qry_030_05_10_Gepl_Finanz_Maßn_Summen ON Maßnahmen.ID = qry_030_05_10_Gepl_Finanz_Maßn_Summen.ID
  )
  LEFT JOIN qry_030_05_05_Haush_Dat_Maßn_Summen ON Maßnahmen.ID = qry_030_05_05_Haush_Dat_Maßn_Summen.ID
WHERE
  (
    (
      (
        [KAlenderJahr] = F_Variable("lng_Kalk_JAhr")
      )= True
    )
  );
