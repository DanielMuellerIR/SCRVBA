SELECT
  [Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr AS Kalenderjahr,
  [Bericht Sanierungsstau nach Finanzplanung].ID_Massn,
  [Liegenschaft] & ": " & [Haus] AS Objekt,
  [Bericht Sanierungsstau nach Finanzplanung].Maßnahme,
  [Bericht Sanierungsstau nach Finanzplanung].Name AS [Name des SBs],
  [Bericht Sanierungsstau nach Finanzplanung].Gepl_Finanz AS [Geplante Finanzierung],
  [Bericht Sanierungsstau nach Finanzplanung].Finanzquelle
FROM
  [Bericht Sanierungsstau nach Finanzplanung]
ORDER BY
  [Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr,
  [Liegenschaft] & ": " & [Haus],
  [Bericht Sanierungsstau nach Finanzplanung].Maßnahme;
