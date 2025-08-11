SELECT
  Maßnahmen.ID,
  [Geplante Finanzierung].Kalenderjahr,
  Sum([Geplante Finanzierung].Betrag) AS SummevonBetrag
FROM
  Maßnahmen
  INNER JOIN (
    Finanzherkunft
    INNER JOIN [Geplante Finanzierung] ON Finanzherkunft.ID_Fin_Her = [Geplante Finanzierung].ID_Fin_Her
  ) ON Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme
WHERE
  (
    (
      (Finanzherkunft.Finanzherkunft)<> "Bauunterhaltung"
    )
  )
  OR (
    (
      (
        [Geplante Finanzierung].Sammelbuchungsstelle
      )= True
    )
  )
GROUP BY
  Maßnahmen.ID,
  [Geplante Finanzierung].Kalenderjahr;
