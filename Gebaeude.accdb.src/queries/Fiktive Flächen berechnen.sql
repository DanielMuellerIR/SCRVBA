SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  tbl_100_20_Gebäudeteile.Mietbeginn,
  tbl_100_20_Gebäudeteile.Mietende,
  Kalkulationsjahr.Anfang,
  Kalkulationsjahr.Ende,
  Faktor(
    [Anfang],
    [Ende],
    IIf(
      IsNull([Mietbeginn]),
      [Anfang],
      [Mietbeginn]
    ),
    IIf(
      IsNull([Mietende]),
      [Ende],
      [Mietende]
    )
  ) AS Anteile,
  tbl_100_20_Gebäudeteile.Sportfläche,
  tbl_100_20_Gebäudeteile.BGF,
  IIf(
    [angemietetes_Gebäude] = Yes,
    0,
    IIf(
      [Sportfläche] = Yes, [BGF] / 100 * 2, [BGF]
    )* [Anteile]
  ) AS Berechnungsfläche,
  tbl_100_20_Gebäudeteile.angemietetes_Gebäude
FROM
  Kalkulationsjahr,
  tbl_100_20_Gebäudeteile
WHERE
  (
    (
      (
        tbl_100_20_Gebäudeteile.Mietrelevant
      )= True
    )
  );
