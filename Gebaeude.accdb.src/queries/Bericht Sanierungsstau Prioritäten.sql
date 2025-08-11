SELECT
  Maßnahmen.Priorität,
  Maßnahmen.Rangfolge,
  [Bericht Sanierungsstau nach Finanzplanung].ID_Massn,
  [Bericht Sanierungsstau nach Finanzplanung].Name,
  [Liegenschaft] & ": " & [Haus] & IIf(
    [Rangfolge] = 0, "", " - Rang " & [Rangfolge]
  ) AS Objekt,
  [Bericht Sanierungsstau nach Finanzplanung].Maßnahme,
  [Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr,
  [Bericht Sanierungsstau nach Finanzplanung].Gepl_Finanz,
  [Bericht Sanierungsstau nach Finanzplanung].Finanzquelle,
  [Bericht Sanierungsstau nach Finanzplanung].Finanzherkunft,
  [Maßnahmen Prioritäten].Priorität AS Priotext
FROM
  (
    [Bericht Sanierungsstau nach Finanzplanung]
    LEFT JOIN Maßnahmen ON [Bericht Sanierungsstau nach Finanzplanung].ID_Massn = Maßnahmen.ID
  )
  LEFT JOIN [Maßnahmen Prioritäten] ON Maßnahmen.Priorität = [Maßnahmen Prioritäten].ID
WHERE
  (
    (
      (
        [Bericht Sanierungsstau nach Finanzplanung].ID_Gebäude
      ) Between F_Variable("lng_ID_Geb_Min")
      And F_Variable("lng_ID_Geb_Max")
    )
    AND (
      (
        [Bericht Sanierungsstau nach Finanzplanung].ID_Gebäudeteil
      ) Between F_Variable("lng_ID_Geb_Teil_Min")
      And F_Variable("lng_ID_Geb_Teil_Max")
    )
    AND (
      (
        [Bericht Sanierungsstau nach Finanzplanung].Erledigt
      )= False
    )
  )
ORDER BY
  Maßnahmen.Priorität,
  Maßnahmen.Rangfolge,
  [Bericht Sanierungsstau nach Finanzplanung].[Liegenschaft],
  [Bericht Sanierungsstau nach Finanzplanung].Maßnahme;
