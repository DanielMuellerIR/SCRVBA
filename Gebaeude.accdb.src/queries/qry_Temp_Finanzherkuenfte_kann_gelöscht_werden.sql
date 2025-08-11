SELECT
  Buchungsstellen.Buchungsstelle,
  Haushaltsdaten.Inv_Nr,
  Haushaltsdaten.Anlagen_Nr,
  Haushaltsdaten.Kostentraeger,
  Finanzquellen.Finanzquelle,
  Finanzherkunft.Finanzherkunft,
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
  Maßnahmen.ID
FROM
  Finanzherkunft
  RIGHT JOIN (
    Finanzquellen
    RIGHT JOIN (
      Maßnahmen
      LEFT JOIN (
        Buchungsstellen
        RIGHT JOIN Haushaltsdaten ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]
      ) ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
    ) ON Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu
  ) ON Finanzherkunft.ID_Fin_Her = Haushaltsdaten.ID_Fin_Her
WHERE
  (
    (
      (Haushaltsdaten.Jahr)= F_Variable('lng_Kalk_Jahr')
    )
  );
