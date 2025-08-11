SELECT
  fc_Round(
    200000 *(
      [Fiktive Flächen berechnen].[berechnungsfläche] / DSum(
        "[Berechnungsfläche]", "[Fiktive Flächen berechnen]"
      )
    )
  ) AS Anteil,
  [Fiktive Flächen berechnen].ID_Gebäudeteil,
  M_Kostenstellen.Kennummer,
  112 AS Ausdr2
FROM
  (
    [Fiktive Flächen berechnen]
    INNER JOIN tbl_100_20_Gebäudeteile ON [Fiktive Flächen berechnen].ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
  )
  INNER JOIN (
    M_Kostenstellen
    INNER JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst
  ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil
WHERE
  (
    (
      (
        fc_Round(
          200000 *(
            [Fiktive Flächen berechnen].[berechnungsfläche] / DSum(
              "[Berechnungsfläche]", "[Fiktive Flächen berechnen]"
            )
          )
        )
      )> 0
    )
    AND (
      (
        Date()
      )>= [Datum_von]
      And (
        Date()
      )<= [Datum_bis]
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Mietrelevant
      )= True
    )
  );
