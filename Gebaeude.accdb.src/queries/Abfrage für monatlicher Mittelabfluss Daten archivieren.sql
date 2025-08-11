INSERT INTO [Archiv monatlicher Mittelabfluss] (
  archivieren, [ID aus Maßnahmen],
  Buchungsstelle, Jahr, Ansatz, HHR,
  VE, Herkunft, zufVfg, zufVfgohneVE,
  [Gesamt_HH-Mittel], Massnahme_,
  Aufträge, sollgesamt, Archivierungsdatum
) IN 's:\a60\datenbank\archiv.accdb'
SELECT
  IIf(
    [Jahr] = Year(
      Now()
    )
    And [Ansatz] > 1,
    1,
    IIf(
      [Jahr] = Year(
        Now()
      )-1
      And [HHR] > 1,
      1,
      IIf(
        [Jahr] = Year(
          Now()
        )
        And [VE] > 1,
        1,
        0
      )
    )
  ) AS archivieren,
  Haushaltsdaten.[ID aus Maßnahmen],
  Buchungsstellen.Buchungsstelle,
  Haushaltsdaten.Jahr,
  Haushaltsdaten.Ansatz,
  Haushaltsdaten.HHR,
  Haushaltsdaten.VE,
  Haushaltsdaten.Herkunft,
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
  ) AS zufVfg,
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
        0,
        0
      )
    )
  ) AS zufVfgohneVE,
  Abfrage_für_Import_Haushaltsdaten_in_Tabelle.[Gesamt_HH-Mittel],
  [Bezeichung] & ":  " & [Maßnahme] AS Massnahme_,
  Abfrage_für_Import_Haushaltsdaten_in_Tabelle.Aufträge,
  Abfrage_für_Import_Haushaltsdaten_in_Tabelle.sollgesamt,
  Date() AS Archivierungsdatum
FROM
  Gebäudeliste
  RIGHT JOIN (
    Maßnahmen
    RIGHT JOIN (
      (
        Buchungsstellen
        INNER JOIN Abfrage_für_Import_Haushaltsdaten_in_Tabelle ON Buchungsstellen.Buchungsstelle = Abfrage_für_Import_Haushaltsdaten_in_Tabelle.Buchungsstelle
      )
      INNER JOIN Haushaltsdaten ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]
    ) ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
  ) ON Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste]
GROUP BY
  IIf(
    [Jahr] = Year(
      Now()
    )
    And [Ansatz] > 1,
    1,
    IIf(
      [Jahr] = Year(
        Now()
      )-1
      And [HHR] > 1,
      1,
      IIf(
        [Jahr] = Year(
          Now()
        )
        And [VE] > 1,
        1,
        0
      )
    )
  ),
  Haushaltsdaten.[ID aus Maßnahmen],
  Buchungsstellen.Buchungsstelle,
  Haushaltsdaten.Jahr,
  Haushaltsdaten.Ansatz,
  Haushaltsdaten.HHR,
  Haushaltsdaten.VE,
  Haushaltsdaten.Herkunft,
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
  ),
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
        0,
        0
      )
    )
  ),
  Abfrage_für_Import_Haushaltsdaten_in_Tabelle.[Gesamt_HH-Mittel],
  [Bezeichung] & ":  " & [Maßnahme],
  Abfrage_für_Import_Haushaltsdaten_in_Tabelle.Aufträge,
  Abfrage_für_Import_Haushaltsdaten_in_Tabelle.sollgesamt,
  Date()
HAVING
  (
    (
      (
        IIf(
          [Jahr] = Year(
            Now()
          )
          And [Ansatz] > 1,
          1,
          IIf(
            [Jahr] = Year(
              Now()
            )-1
            And [HHR] > 1,
            1,
            IIf(
              [Jahr] = Year(
                Now()
              )
              And [VE] > 1,
              1,
              0
            )
          )
        )
      )= 1
    )
    AND (
      (
        Haushaltsdaten.[ID aus Maßnahmen]
      ) Is Not Null
    )
  )
ORDER BY
  IIf(
    [Jahr] = Year(
      Now()
    )
    And [Ansatz] > 1,
    1,
    IIf(
      [Jahr] = Year(
        Now()
      )-1
      And [HHR] > 1,
      1,
      IIf(
        [Jahr] = Year(
          Now()
        )
        And [VE] > 1,
        1,
        0
      )
    )
  ),
  Buchungsstellen.Buchungsstelle;
