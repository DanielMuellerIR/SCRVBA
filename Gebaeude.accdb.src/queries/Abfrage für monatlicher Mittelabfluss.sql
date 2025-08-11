SELECT
  Haushaltsdaten.[ID aus Maßnahmen],
  Buchungsstellen.Buchungsstelle,
  Haushaltsdaten.Jahr,
  Haushaltsdaten.Ansatz,
  Haushaltsdaten.HHR,
  Haushaltsdaten.VE,
  Finanzquellen.Finanzquelle,
  IIf(
    [Jahr] = Year(
      Now()
    )-1
    And [HHR] <> 0,
    [HHR],
    IIf(
      [Jahr] = Year(
        Now()
      )
      And [Ansatz] <> 0,
      [Ansatz],
      IIf(
        [Jahr] = Year(
          Now()
        )
        And [VE] <> 0,
        [VE],
        0
      )
    )
  ) AS zufVfg,
  IIf(
    [Jahr] = Year(
      Now()
    )-1
    And [HHR] <> 0,
    [HHR],
    IIf(
      [Jahr] = Year(
        Now()
      )
      And [Ansatz] <> 0,
      [Ansatz],
      IIf(
        [Jahr] = Year(
          Now()
        )
        And [VE] <> 0,
        0,
        0
      )
    )
  ) AS zufVfgohneVE,
  Abfrage_für_Import_Haushaltsdaten_in_Tabelle.[Gesamt_HH-Mittel],
  [Bezeichnung] & ":  " & [Maßnahme] AS Massnahme_,
  Abfrage_für_Import_Haushaltsdaten_in_Tabelle.Aufträge,
  Abfrage_für_Import_Haushaltsdaten_in_Tabelle.sollgesamt
FROM
  tbl_100_10_Liegenschaften
  RIGHT JOIN (
    tbl_100_20_Gebäudeteile
    RIGHT JOIN (
      Finanzquellen
      RIGHT JOIN (
        Maßnahmen
        RIGHT JOIN (
          (
            Buchungsstellen
            LEFT JOIN Abfrage_für_Import_Haushaltsdaten_in_Tabelle ON Buchungsstellen.Buchungsstelle = Abfrage_für_Import_Haushaltsdaten_in_Tabelle.Buchungsstelle
          )
          RIGHT JOIN Haushaltsdaten ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]
        ) ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
      ) ON Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
GROUP BY
  Haushaltsdaten.[ID aus Maßnahmen],
  Buchungsstellen.Buchungsstelle,
  Haushaltsdaten.Jahr,
  Haushaltsdaten.Ansatz,
  Haushaltsdaten.HHR,
  Haushaltsdaten.VE,
  Finanzquellen.Finanzquelle,
  IIf(
    [Jahr] = Year(
      Now()
    )-1
    And [HHR] <> 0,
    [HHR],
    IIf(
      [Jahr] = Year(
        Now()
      )
      And [Ansatz] <> 0,
      [Ansatz],
      IIf(
        [Jahr] = Year(
          Now()
        )
        And [VE] <> 0,
        [VE],
        0
      )
    )
  ),
  IIf(
    [Jahr] = Year(
      Now()
    )-1
    And [HHR] <> 0,
    [HHR],
    IIf(
      [Jahr] = Year(
        Now()
      )
      And [Ansatz] <> 0,
      [Ansatz],
      IIf(
        [Jahr] = Year(
          Now()
        )
        And [VE] <> 0,
        0,
        0
      )
    )
  ),
  Abfrage_für_Import_Haushaltsdaten_in_Tabelle.[Gesamt_HH-Mittel],
  [Bezeichnung] & ":  " & [Maßnahme],
  Abfrage_für_Import_Haushaltsdaten_in_Tabelle.Aufträge,
  Abfrage_für_Import_Haushaltsdaten_in_Tabelle.sollgesamt
HAVING
  (
    (
      (
        Haushaltsdaten.[ID aus Maßnahmen]
      ) Is Not Null
    )
    AND (
      (Buchungsstellen.Buchungsstelle) Like [formulare]![Filter für Controllingbericht]![AuswahlBuchungsstelle]
    )
  )
ORDER BY
  Buchungsstellen.Buchungsstelle;
