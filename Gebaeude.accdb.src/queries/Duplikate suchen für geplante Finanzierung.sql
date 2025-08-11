SELECT
  [geplante Finanzierung].ID_Teilmassnahme,
  [geplante Finanzierung].Kalenderjahr,
  [geplante Finanzierung].Betrag,
  Last([geplante Finanzierung].ID) AS LetzterWertvonID
FROM
  [geplante Finanzierung]
GROUP BY
  [geplante Finanzierung].ID_Teilmassnahme,
  [geplante Finanzierung].Kalenderjahr,
  [geplante Finanzierung].Betrag
HAVING
  (
    (
      (
        [geplante Finanzierung].ID_Teilmassnahme
      ) In (
        SELECT
          [ID_Teilmassnahme]
        FROM
          [geplante Finanzierung] As Tmp
        GROUP BY
          [ID_Teilmassnahme],
          [Kalenderjahr],
          [Betrag]
        HAVING
          Count(*)> 1
          And [Kalenderjahr] = [geplante Finanzierung].[Kalenderjahr]
          And [Betrag] = [geplante Finanzierung].[Betrag]
      )
    )
  )
ORDER BY
  [geplante Finanzierung].ID_Teilmassnahme,
  [geplante Finanzierung].Kalenderjahr,
  [geplante Finanzierung].Betrag;
