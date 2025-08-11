SELECT
  tbl_200_10_05_Indexe.Jahr,
  tbl_200_10_05_Indexe.[Anteil Bodenrichtwert],
  Max(
    tbl_200_10_05_Indexe.Bezugsjahr
  ) AS MaxvonBezugsjahr
FROM
  tbl_200_10_05_Indexe
GROUP BY
  tbl_200_10_05_Indexe.Jahr,
  tbl_200_10_05_Indexe.[Anteil Bodenrichtwert];
