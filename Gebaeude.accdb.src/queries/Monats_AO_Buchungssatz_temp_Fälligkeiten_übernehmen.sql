INSERT INTO A_Buchungen_Aufteilung_auf_Fälligkeiten (
  [ID aus Buchungen], sofort, [andere Fälligkeit],
  Fälligkeitsdatum
)
SELECT
  [formulare]![Monatsanordnung_UF_5].[IDneu] AS Ausdr1,
  [formulare]![Monatsanordnung]![Monatsanordnung_UF_3]![sofort] AS Ausdr2,
  [formulare]![Monatsanordnung]![Monatsanordnung_UF_3]![andere Fälligkeit] AS Ausdr3,
  MonatsAO_temp_Buchungssatz_fällig.Fälligkeitsdatum
FROM
  MonatsAO_temp_Buchungssatz_fällig;
