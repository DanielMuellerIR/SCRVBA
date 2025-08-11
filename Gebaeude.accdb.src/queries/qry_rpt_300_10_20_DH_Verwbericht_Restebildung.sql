SELECT
  [Buchungsstelle] & ": " & [Text Buchungsstelle] AS Buch_stelle,
  Maßnahmen.Maßnahme,
  Maßnahmen.[offene Auträge],
  [Geplante Finanzierung].Kalenderjahr
FROM
  Finanzquellen
  INNER JOIN (
    (
      Buchungsstellen
      INNER JOIN (
        Maßnahmen
        INNER JOIN Haushaltsdaten ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
      ) ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]
    )
    INNER JOIN [Geplante Finanzierung] ON Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme
  ) ON Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu
WHERE
  (
    (
      (
        Maßnahmen.[nicht mehr erforderlich weil]
      ) Is Null
    )
    AND (
      Not (
        [Geplante Finanzierung].Erledigt
      )= True
    )
  )
GROUP BY
  [Buchungsstelle] & ": " & [Text Buchungsstelle],
  Maßnahmen.Maßnahme,
  Maßnahmen.[offene Auträge],
  Finanzquellen.Finanzquelle,
  [Geplante Finanzierung].Kalenderjahr
HAVING
  (
    (
      (Maßnahmen.[offene Auträge])> 0
    )
    AND (
      (Finanzquellen.Finanzquelle)= "investiv"
    )
  );
