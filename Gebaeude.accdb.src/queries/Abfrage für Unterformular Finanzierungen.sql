SELECT
  Haushaltsdaten.[ID aus Maßnahmen],
  Haushaltsdaten.[ID aus Buchungsstelle],
  Buchungsstellen.Buchungsstelle,
  Haushaltsdaten.Jahr,
  Haushaltsdaten.Ansatz,
  Haushaltsdaten.HHR,
  Haushaltsdaten.VE,
  Finanzherkunft.Finanzherkunft,
  Finanzquellen.Finanzquelle,
  Haushaltsdaten.Inv_Nr,
  Haushaltsdaten.Anlagen_Nr,
  [Ansatz] + [HHR] AS zufVfg,
  IIf(
    [HHR] > 0,
    [HHR],
    IIf([Ansatz] > 0, [Ansatz], 0)
  ) AS zufVfgohneVE,
  Haushaltsdaten.bez_Rechnung
FROM
  Finanzherkunft
  RIGHT JOIN (
    Finanzquellen
    RIGHT JOIN (
      Maßnahmen
      INNER JOIN (
        Buchungsstellen
        RIGHT JOIN Haushaltsdaten ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]
      ) ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
    ) ON Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu
  ) ON Finanzherkunft.ID_Fin_Her = Haushaltsdaten.ID_Fin_Her
WHERE
  (
    (
      (
        Haushaltsdaten.[ID aus Maßnahmen]
      )= F_Variable("lng_ID_Massn")
    )
  )
ORDER BY
  Haushaltsdaten.Jahr DESC;
