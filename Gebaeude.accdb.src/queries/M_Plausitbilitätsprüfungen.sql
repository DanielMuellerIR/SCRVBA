SELECT
  [Bezeichnung] & ": " & [Gebäudeteil] & ", " & [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] AS Objekt,
  tbl_100_30_Mietparteien.Mietpartei,
  IIf(
    IsNull([Kenn_Kostst]),
    "X",
    ""
  ) AS Kostenstelle,
  IIf(
    IsNull([BGF]),
    "X",
    IIf([BGF] = 0, "X", "")
  ) AS Fläche,
  IIf(
    IsNull([NK]),
    "X",
    ""
  ) AS Nebenkosten
FROM
  tbl_100_10_Liegenschaften
  INNER JOIN (
    tbl_100_30_Mietparteien
    RIGHT JOIN (
      (
        (
          (
            [Unterabfrage für Plausibiltitätsprüfung]
            RIGHT JOIN tbl_100_20_Gebäudeteile ON [Unterabfrage für Plausibiltitätsprüfung].ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
          )
          LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
        )
        INNER JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil
      )
      LEFT JOIN Zuordnung_Abschreibung ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Zuordnung_Abschreibung.ID_Gebäudeteil
    ) ON tbl_100_30_Mietparteien.ID_Mietpartei = Zuordnung_Abschreibung.ID_Mietpartei
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]
      ) Is Null
    )
  )
  OR (
    (
      (tbl_100_20_Gebäudeteile.BGF) Is Null
      Or (tbl_100_20_Gebäudeteile.BGF)= 0
    )
  )
  OR (
    (
      (
        [Unterabfrage für Plausibiltitätsprüfung].NK
      ) Is Null
      Or (
        [Unterabfrage für Plausibiltitätsprüfung].NK
      )= 0
    )
  )
GROUP BY
  [Bezeichnung] & ": " & [Gebäudeteil] & ", " & [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr],
  tbl_100_30_Mietparteien.Mietpartei,
  IIf(
    IsNull([Kenn_Kostst]),
    "X",
    ""
  ),
  IIf(
    IsNull([BGF]),
    "X",
    IIf([BGF] = 0, "X", "")
  ),
  IIf(
    IsNull([NK]),
    "X",
    ""
  ),
  IIf(
    IsNull([Kennummer aus Bereiche]),
    "X",
    ""
  );
