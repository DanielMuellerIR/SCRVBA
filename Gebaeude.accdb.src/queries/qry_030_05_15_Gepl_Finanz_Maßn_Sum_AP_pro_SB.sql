SELECT
  qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Kalenderjahr,
  Sum(
    (
      IIf(
        [Sammelbuchungsstelle] = True
        And [Finanzherkunft] = "Bauunterhaltung",
        [Voraus_Kosten], 0
      )
    )- IIf(
      [Sammelbuchungsstelle] = False
      And [Finanzherkunft] = "Bauunterhaltung",
      [Voraus_Kosten], 0
    )
  ) AS Alle
FROM
  qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP
GROUP BY
  qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Kalenderjahr
HAVING
  (
    (
      (
        qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Kalenderjahr
      )= F_Variable("lng_Kalk_Jahr")
    )
  );
