SELECT
  Haushaltsdaten.Jahr,
  Buchungsstellen.Buchungsstelle,
  Buchungsstellen.[Text Buchungsstelle],
  Haushaltsdaten.Ansatz,
  Haushaltsdaten.HHR,
  Haushaltsdaten.VE,
  Maßnahmen.ID AS ID_Massn,
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften.Bezeichnung] & ", " & [Gebäudeteil] & " -> " & [Maßnahme] AS Maßnahm,
  IIf(
    [Jahr] = Year(
      Now()
    )-1
    And [HHR] > 0,
    [HHR],
    IIf(
      [Jahr] = Year(
        Now()
      )
      And [Ansatz] > 0,
      [Ansatz],
      IIf(
        [Jahr] = Year(
          Now()
        )
        And [VE] > 0,
        [VE],
        0
      )
    )
  ) AS vfg,
  Finanzquellen.Finanzquelle,
  IIf(
    [VE] > 1,
    1,
    IIf([Ansatz] > 1, 2, 3)
  ) AS sort
FROM
  tbl_100_10_Liegenschaften
  RIGHT JOIN (
    Finanzquellen
    INNER JOIN (
      (
        (
          Maßnahmen
          RIGHT JOIN (
            Buchungsstellen
            RIGHT JOIN Haushaltsdaten ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]
          ) ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
        )
        LEFT JOIN tbl_100_20_Gebäudeteile ON Maßnahmen.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
      )
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    ) ON Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
ORDER BY
  Haushaltsdaten.Jahr,
  Buchungsstellen.Buchungsstelle,
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften.Bezeichnung] & ", " & [Gebäudeteil] & " -> " & [Maßnahme];
