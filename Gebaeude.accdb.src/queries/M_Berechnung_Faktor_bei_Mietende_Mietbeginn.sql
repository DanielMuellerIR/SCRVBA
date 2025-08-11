SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäude,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  tbl_100_20_Gebäudeteile.Mietbeginn,
  tbl_100_20_Gebäudeteile.Mietende,
  "01.01." & [Jahr] AS Anfang,
  "31.12." & [Jahr] AS Ende,
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
  Kalenderjahre.Jahr
FROM
  Kalenderjahre,
  tbl_100_20_Gebäudeteile
WHERE
  (
    (
      ("01.01." & [Jahr])> "01.01.2005"
      And ("01.01." & [Jahr])< "31.12.2009"
    )
  );
