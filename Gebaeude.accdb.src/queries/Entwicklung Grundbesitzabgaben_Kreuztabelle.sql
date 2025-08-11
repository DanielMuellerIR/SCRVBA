TRANSFORM Sum(
  [Entwicklung Grundbesitzabgaben].[Summe von Betrag]
) AS [Der Wert]
SELECT
  [Entwicklung Grundbesitzabgaben].Kostenstelle,
  [Entwicklung Grundbesitzabgaben].Bezeichnung
FROM
  [Entwicklung Grundbesitzabgaben]
GROUP BY
  [Entwicklung Grundbesitzabgaben].Kostenstelle,
  [Entwicklung Grundbesitzabgaben].Bezeichnung
ORDER BY
  [Entwicklung Grundbesitzabgaben].Kostenstelle PIVOT [Entwicklung Grundbesitzabgaben].Haushaltsjahr;
