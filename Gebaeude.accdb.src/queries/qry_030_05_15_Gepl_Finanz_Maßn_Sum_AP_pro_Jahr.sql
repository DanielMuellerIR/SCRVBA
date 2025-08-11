SELECT
  qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Sort,
  qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Kalenderjahr,
  Sum(
    qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Voraus_Kosten
  ) AS Summ_komplett,
  Sum(
    IIf(
      [Finanzherkunft] = "Bauunterhaltung"
      And [Sammelbuchungsstelle] = False,
      [Voraus_Kosten], 0
    )
  ) AS Summ_Bauunt,
  Sum(
    [Voraus_Kosten] - IIf(
      [Finanzherkunft] = "Bauunterhaltung"
      And [Sammelbuchungsstelle] = False,
      [Voraus_Kosten], 0
    )
  ) AS Summ_tats
FROM
  qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP
GROUP BY
  qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Sort,
  qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Kalenderjahr
HAVING
  (
    (
      (
        qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Kalenderjahr
      )= F_Variable("lng_Kalk_Jahr")
    )
  );
