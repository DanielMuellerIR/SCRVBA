SELECT
  Sum(
    [Fiktive Flächen berechnen].Berechnungsfläche
  ) AS [Summe von Bruttogrundfläche],
  [Fiktive Flächen berechnen].ID
FROM
  [Fiktive Flächen berechnen]
GROUP BY
  [Fiktive Flächen berechnen].ID;
