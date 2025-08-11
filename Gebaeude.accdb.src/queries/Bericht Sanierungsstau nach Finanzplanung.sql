SELECT
  [Bericht Sanierungsstau nach Finanzpl_Union].ID_Massn,
  [Bericht Sanierungsstau nach Finanzpl_Union].Kal_Jahr,
  Max(
    [Bericht Sanierungsstau nach Finanzpl_Union].ID_Gebäude
  ) AS ID_Gebäude,
  Max(
    [Bericht Sanierungsstau nach Finanzpl_Union].LIegenschaft
  ) AS LIegenschaft,
  Max(
    [Bericht Sanierungsstau nach Finanzpl_Union].Haus
  ) AS Haus,
  Max(
    [Bericht Sanierungsstau nach Finanzpl_Union].ID_Gebäudeteil
  ) AS ID_Gebäudeteil,
  Max(
    [Bericht Sanierungsstau nach Finanzpl_Union].Name
  ) AS Name,
  Max(
    [Bericht Sanierungsstau nach Finanzpl_Union].Maßnahme
  ) AS Maßnahme,
  [Bericht Sanierungsstau nach Finanzpl_Union].ID_Finanz,
  [Bericht Sanierungsstau nach Finanzpl_Union].Gepl_Finanz AS Gepl_Finanz,
  [Bericht Sanierungsstau nach Finanzpl_Union].Erl AS Erledigt,
  Min(
    [Bericht Sanierungsstau nach Finanzpl_Union].Finanzquelle
  ) AS Finanzquelle,
  [Bericht Sanierungsstau nach Finanzpl_Union].Finanzherkunft
FROM
  [Bericht Sanierungsstau nach Finanzpl_Union]
WHERE
  (
    (
      (
        [Bericht Sanierungsstau nach Finanzpl_Union].[erledigt im Jahr]
      ) IS NULL
    )
  )
GROUP BY
  [Bericht Sanierungsstau nach Finanzpl_Union].ID_Massn,
  [Bericht Sanierungsstau nach Finanzpl_Union].Kal_Jahr,
  [Bericht Sanierungsstau nach Finanzpl_Union].ID_Finanz,
  [Bericht Sanierungsstau nach Finanzpl_Union].Gepl_Finanz,
  [Bericht Sanierungsstau nach Finanzpl_Union].Erl,
  [Bericht Sanierungsstau nach Finanzpl_Union].Finanzherkunft;
