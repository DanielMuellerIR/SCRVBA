SELECT
  IIf(
    [Bericht Sanierungsstau nach Finanzplanung].[ID_MAssn] Is Null
    Or [Bericht Sanierungsstau nach Finanzplanung].[Finanzquelle] Is Null,
    "Z", "A"
  ) AS Finanz_Sort,
  fc_FinHerk_Sort([ID_Massn], [Finanzherkunft]) AS FinHerk_Sort,
  IIf(
    [Bericht Sanierungsstau nach Finanzplanung].[ID_Massn] Is Null
    Or [Finanzquelle] Is Null,
    "Finanzierung noch nicht festgelegt",
    [Finanzquelle]
  ) AS Finanz,
  IIf(
    [Bericht Sanierungsstau nach Finanzplanung].[ID_Massn] Is Null
    Or [Finanzherkunft] Is Null,
    "Finanzierung noch nicht festgelegt",
    [Finanzherkunft]
  ) AS FinHerk,
  [Liegenschaft] & ": " & [Haus] & IIf(
    [Rangfolge] = 0, "", " - Rang " & [Rangfolge]
  ) AS Objekt,
  [Bericht Sanierungsstau nach Finanzplanung].Maßnahme,
  Maßnahmen.ID AS ID_MAssn,
  [Bericht Sanierungsstau nach Finanzplanung].Name,
  [Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr,
  [Bericht Sanierungsstau nach Finanzplanung].Gepl_Finanz,
  [Bericht Sanierungsstau nach Finanzplanung].Finanzquelle,
  [Bericht Sanierungsstau nach Finanzplanung].Finanzherkunft,
  Maßnahmen.[voraussichtliche Kosten gesamt]
FROM
  Sachbearbeiter
  RIGHT JOIN (
    [Bericht Sanierungsstau nach Finanzplanung]
    LEFT JOIN Maßnahmen ON [Bericht Sanierungsstau nach Finanzplanung].ID_MAssn = Maßnahmen.ID
  ) ON Sachbearbeiter.ID = Maßnahmen.ID_SB
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
      And (
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
    [Bericht Sanierungsstau nach Finanzplanung].[ID_MAssn] Is Null
    Or [Bericht Sanierungsstau nach Finanzplanung].[Finanzquelle] Is Null,
    "Z", "A"
  ),
  fc_FinHerk_Sort([ID_Massn], [Finanzherkunft]),
  IIf(
    [Bericht Sanierungsstau nach Finanzplanung].[ID_Massn] Is Null
    Or [Finanzherkunft] Is Null,
    "Finanzierung noch nicht festgelegt",
    [Finanzherkunft]
  ),
  [Bericht Sanierungsstau nach Finanzplanung].Maßnahme;
