TRANSFORM Sum(
  [Bericht Sanierungsstau nach Finanzplanung].Betrag
) AS [Summe von Betrag]
SELECT
  [Bericht Sanierungsstau nach Finanzplanung].Gebäude,
  Sum(
    [Bericht Sanierungsstau nach Finanzplanung].Betrag
  ) AS [Gesamtsumme von Betrag]
FROM
  [Bericht Sanierungsstau nach Finanzplanung]
GROUP BY
  [Bericht Sanierungsstau nach Finanzplanung].Gebäude PIVOT [Bericht Sanierungsstau nach Finanzplanung].Kalenderjahr;
