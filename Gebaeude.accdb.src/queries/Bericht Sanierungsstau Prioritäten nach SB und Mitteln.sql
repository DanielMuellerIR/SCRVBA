SELECT
  DISTINCTROW IIf(
    [Sachbearbeiter].[Name] Is Null, "  SB noch nicht festgel.",
    [Sachbearbeiter].[Name]
  ) AS SB_Name,
  IIf(
    [Bericht Sanierungsstau nach Finanzplanung].[ID_Massn] Is Null
    Or [Finanzquelle] Is Null,
    "Z", "A"
  ) AS Finanz_Sort,
  [Liegenschaft] & ": " & [Haus] & IIf(
    [Rangfolge] = 0, "", " - Rang " & [Rangfolge]
  ) AS Objekt,
  [Bericht Sanierungsstau nach Finanzplanung].Maßnahme,
  [Bericht Sanierungsstau nach Finanzplanung].[Name] & " " AS TM_Name,
  [Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr,
  IIf(
    [Bericht Sanierungsstau nach Finanzplanung].[ID_Massn] Is Null
    Or [Finanzquelle] Is Null,
    "Finanzierung noch nicht festgelegt",
    [Finanzquelle]
  ) AS Finanz,
  [Bericht Sanierungsstau nach Finanzplanung].Gepl_Finanz,
  [Bericht Sanierungsstau nach Finanzplanung].Finanzquelle,
  Maßnahmen.ID AS ID_Massn
FROM
  (
    [Bericht Sanierungsstau nach Finanzplanung]
    LEFT JOIN Maßnahmen ON [Bericht Sanierungsstau nach Finanzplanung].ID_Massn = Maßnahmen.ID
  )
  LEFT JOIN Sachbearbeiter ON Maßnahmen.ID_SB = Sachbearbeiter.ID
WHERE
  (
    (
      (Maßnahmen.[erledigt im Jahr]) Is Null
    )
    AND (
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
      (
        [Bericht Sanierungsstau nach Finanzplanung].Erledigt
      )= False
    )
  )
ORDER BY
  IIf(
    [Sachbearbeiter].[Name] Is Null, "  SB noch nicht festgel.",
    [Sachbearbeiter].[Name]
  ),
  IIf(
    [Bericht Sanierungsstau nach Finanzplanung].[ID_Massn] Is Null
    Or [Finanzquelle] Is Null,
    "Z", "A"
  ),
  [Bericht Sanierungsstau nach Finanzplanung].Maßnahme,
  [Bericht Sanierungsstau nach Finanzplanung].Maßnahme,
  [Bericht Sanierungsstau nach Finanzplanung].[Name] & " ";
