SELECT
  M_Kostenstellen.Kennummer,
  M_Kostenstellen.Kostenstelle,
  Min(
    tbl_100_40_Zuordn_Gebteile_Koststellen.Datum_von
  ) AS Buch_Zeitr_Start,
  Max(
    tbl_100_40_Zuordn_Gebteile_Koststellen.Datum_bis
  ) AS Buch_Zeitr_Ende
FROM
  M_Kostenstellen
  INNER JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst
GROUP BY
  M_Kostenstellen.Kennummer,
  M_Kostenstellen.Kostenstelle;
