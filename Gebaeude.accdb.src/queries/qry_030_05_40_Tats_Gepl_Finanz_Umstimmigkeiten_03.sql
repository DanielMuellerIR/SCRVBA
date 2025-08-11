SELECT
  Maßnahmen.ID,
  IIf(
    [Haushaltsdaten].[id] Is Null,
    0,
    CCur([HHR])+ CCur([Ansatz])
  ) AS zufVfg,
  [Geplante Finanzierung].Betrag AS Geplant
FROM
  (
    Finanzherkunft
    INNER JOIN (
      Maßnahmen
      RIGHT JOIN Haushaltsdaten ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
    ) ON Finanzherkunft.ID_Fin_Her = Haushaltsdaten.ID_Fin_Her
  )
  LEFT JOIN [Geplante Finanzierung] ON Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme
WHERE
  (
    (
      (
        [Jahr] = F_Variable("lng_Kalk_JAhr")
        And [Finanzherkunft] <> "Bauunterhaltung"
        And [Maßnahmen].[ID] Is Null
      )= True
    )
  );
