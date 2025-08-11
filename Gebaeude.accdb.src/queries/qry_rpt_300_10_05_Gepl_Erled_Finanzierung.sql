SELECT
  [Geplante Finanzierung].ID,
  [Geplante Finanzierung].ID_Massnahme
FROM
  [Geplante Finanzierung]
WHERE
  (
    (
      (
        [Geplante Finanzierung].Erledigt
      )= True
    )
    AND (
      (
        [Geplante Finanzierung].Kalenderjahr
      )= F_Variable("lng_Kalk_Jahr")
    )
  )
GROUP BY
  [Geplante Finanzierung].ID,
  [Geplante Finanzierung].ID_Massnahme;
