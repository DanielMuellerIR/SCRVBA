SELECT
  fc_PrioSort([Priotext]) AS Priosort,
  IIf(
    [Maßnahmen Prioritäten zeitlich].[Priorität_zeitl] Is Null,
    "zeitl. Prioroität noch nicht festgel.",
    [Maßnahmen Prioritäten zeitlich].[Priorität_zeitl]
  ) AS Priotext,
  [Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr,
  IIf(
    [Maßnahmen].[Priorität_zeitl] Is Null,
    99, [Maßnahmen Prioritäten zeitlich].[Rang]
  ) AS X_Rang,
  IIf(
    [Maßnahmen].[Priorität_zeitl] Is Null,
    "Zeitl. Prior. nicht festgel.",
    [Maßnahmen Prioritäten zeitlich].[Priorität_zeitl]
  ) AS Prio,
  [Bericht Sanierungsstau nach Finanzplanung].ID_Massn,
  [Bericht Sanierungsstau nach Finanzplanung].Name,
  [Liegenschaft] & ": " & [Haus] & IIf(
    [Rangfolge] = 0, "", " - Rang " & [Rangfolge]
  ) AS Objekt,
  [Bericht Sanierungsstau nach Finanzplanung].Maßnahme,
  [Bericht Sanierungsstau nach Finanzplanung].Gepl_Finanz,
  [Bericht Sanierungsstau nach Finanzplanung].Finanzquelle,
  [Bericht Sanierungsstau nach Finanzplanung].Finanzherkunft
FROM
  (
    [Bericht Sanierungsstau nach Finanzplanung]
    LEFT JOIN Maßnahmen ON [Bericht Sanierungsstau nach Finanzplanung].ID_Massn = Maßnahmen.ID
  )
  LEFT JOIN [Maßnahmen Prioritäten zeitlich] ON Maßnahmen.Priorität_zeitl = [Maßnahmen Prioritäten zeitlich].ID
WHERE
  (
    (
      (
        [Bericht Sanierungsstau nach Finanzplanung].ID_Gebäude
      ) Between F_Variable("lng_ID_Geb_Min")
      And F_Variable("lng_ID_Geb_Max")
    )
    AND (
      (Maßnahmen.ID_Gebäudeteil) Between F_Variable("lng_ID_Geb_Teil_Min")
      And F_Variable("lng_ID_Geb_Teil_Max")
    )
    AND (
      (Maßnahmen.[erledigt im Jahr]) Is Null
    )
    AND (
      (
        [Bericht Sanierungsstau nach Finanzplanung].Erledigt
      )= False
    )
  )
ORDER BY
  IIf(
    [Maßnahmen].[Priorität_zeitl] Is Null,
    99, [Maßnahmen Prioritäten zeitlich].[Rang]
  ),
  [Bericht Sanierungsstau nach Finanzplanung].Name,
  [Liegenschaft] & ": " & [Haus] & IIf(
    [Rangfolge] = 0, "", " - Rang " & [Rangfolge]
  ),
  [Bericht Sanierungsstau nach Finanzplanung].Maßnahme;
