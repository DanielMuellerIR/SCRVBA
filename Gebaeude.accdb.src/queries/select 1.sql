SELECT
  DISTINCT IIf(
    [nicht mehr erforderlich weil] IS NOT NULL,
    "3: nicht mehr erforderlich",
    IIf(
      bsf.[erledigt im Jahr] IS NULL, "2: nicht erledigt",
      "1: Erledigt"
    )
  ) AS Erledigt_Status,
  IIf(
    Left([Erledigt_Status], 1)= "1",
    m.[erledigt im Jahr],
    [Kal_Jahr]
  ) AS Sort_Jahr,
  [Liegenschaft] & " -> " & [Haus] AS Objekt,
  IIf(
    [sb].[ID] IS NULL, "SB fehlt", [sb].[name]
  ) AS SB,
  bsf.[Maßnahme],
  bsf.ID_Massn,
  bsf.Gepl_Finanz,
  [Kal_Jahr] >= F_Variable ("lng_Kalk_Jahr_Min")
  OR [Kal_Jahr] = "N.N."
  OR [Kal_Jahr] = "2000"
  OR bsf.[erledigt im Jahr] >= F_Variable ("lng_Kalk_Jahr_Min") AS Jahresauswahl,
  bsf.Kal_Jahr,
  bsf.Finanzquelle,
  bsf.[erledigt im Jahr],
  bsf.Erl,
  m.[nicht mehr erforderlich weil],
  bsf.tats_Kosten_Infoma
FROM
  Sachbearbeiter AS sb
  RIGHT JOIN (
    (
      [Bericht Sanierungsstau nach Finanzpl_Union] AS bsf
      INNER JOIN Maßnahmen AS m ON bsf.ID_Massn = m.ID
    )
    INNER JOIN tbl_100_10_Liegenschaften AS lieg ON bsf.[ID_Gebäude] = lieg.[ID_Gebäude]
  ) ON sb.ID = lieg.ID_SB
WHERE
  (
    (
      (
        [Kal_Jahr] >= F_Variable ("lng_Kalk_Jahr_Min")
        OR [Kal_Jahr] = "N.N."
        OR [Kal_Jahr] = "2000"
        OR bsf.[erledigt im Jahr] >= F_Variable ("lng_Kalk_Jahr_Min")
      )= True
    )
    AND (
      (bsf.[ID_Gebäude]) BETWEEN F_Variable ("lng_ID_Geb_Min")
      AND F_Variable ("lng_ID_Geb_Max")
    )
    AND (
      bsf.[ID_Gebäudeteil] BETWEEN F_Variable ("lng_ID_Geb_Teil_Min")
      AND F_Variable ("lng_ID_Geb_Teil_Max")
    )
    AND (
      (
        IIf(
          bsf.[erledigt im Jahr] IS NULL,
          True,
          IIf(
            bsf.[Kal_Jahr] <> "N.N.", True, False
          )
        )
      )= True
    )
  )
ORDER BY
  IIf(
    [nicht mehr erforderlich weil] IS NOT NULL,
    "3: nicht mehr erforderlich",
    IIf(
      bsf.[erledigt im Jahr] IS NULL, "2: nicht erledigt",
      "1: Erledigt"
    )
  ),
  bsf.[Maßnahme];
