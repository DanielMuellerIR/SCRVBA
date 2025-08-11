SELECT
  [Übernahme Daten Finanzauskunft 1].Buchungsstelle,
  Sum(
    [Übernahme Daten Finanzauskunft 1].[Ansatz] + [HHR]
  ) AS [Mittel lt 60],
  [HHST Liste - Ansatz Soll Verf 2].[Gesamt HH-Mittel],
  [Sollbuchung] + [Sollerfassung] AS bezahlt,
  [HHST Liste - Ansatz Soll Verf 2].Aufträge AS [offene Aufträge]
FROM
  [Übernahme Daten Finanzauskunft 1]
  LEFT JOIN [HHST Liste - Ansatz Soll Verf 2] ON [Übernahme Daten Finanzauskunft 1].Buchungsstelle = [HHST Liste - Ansatz Soll Verf 2].Buchungsstelle
GROUP BY
  [Übernahme Daten Finanzauskunft 1].ID,
  [Übernahme Daten Finanzauskunft 1].Buchungsstelle,
  [HHST Liste - Ansatz Soll Verf 2].[Gesamt HH-Mittel],
  [Sollbuchung] + [Sollerfassung],
  [HHST Liste - Ansatz Soll Verf 2].Aufträge
ORDER BY
  [Übernahme Daten Finanzauskunft 1].Buchungsstelle;
