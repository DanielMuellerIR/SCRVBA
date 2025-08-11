SELECT
  [NHK-Typen].Kennummer,
  [NHK-Typen].[Typ-Nr],
  [NHK-Typen].Typ,
  [NKH-Ausstattungen].[ID aus NHK-Typen],
  [NKH-Ausstattungen].Ausstattung,
  [NHK-Werte].Kennummer,
  [NHK-Werte].[von 25],
  [NHK-Werte].[bis 25],
  [NHK-Werte].[von 25 - 45],
  [NHK-Werte].[bis 25 - 45],
  [NHK-Werte].[von 46 - 59],
  [NHK-Werte].[bis 46 - 59],
  [NHK-Werte].[von 60 - 69],
  [NHK-Werte].[bis 60 - 69],
  [NHK-Werte].[von 70 - 84],
  [NHK-Werte].[bis 70 - 84],
  [NHK-Werte].[von 85 - 99],
  [NHK-Werte].[bis 85 - 99],
  [NHK-Werte].[von 2000],
  [NHK-Werte].[bis 2000],
  [NHK-Typen].Baunebenkosten
FROM
  [NHK-Typen]
  LEFT JOIN (
    [NKH-Ausstattungen]
    LEFT JOIN [NHK-Werte] ON [NKH-Ausstattungen].Kennummer = [NHK-Werte].[ID aus NHK-Ausstattun]
  ) ON [NHK-Typen].Kennummer = [NKH-Ausstattungen].[ID aus NHK-Typen]
GROUP BY
  [NHK-Typen].Kennummer,
  [NHK-Typen].[Typ-Nr],
  [NHK-Typen].Typ,
  [NKH-Ausstattungen].[ID aus NHK-Typen],
  [NKH-Ausstattungen].Ausstattung,
  [NHK-Werte].Kennummer,
  [NHK-Werte].[von 25],
  [NHK-Werte].[bis 25],
  [NHK-Werte].[von 25 - 45],
  [NHK-Werte].[bis 25 - 45],
  [NHK-Werte].[von 46 - 59],
  [NHK-Werte].[bis 46 - 59],
  [NHK-Werte].[von 60 - 69],
  [NHK-Werte].[bis 60 - 69],
  [NHK-Werte].[von 70 - 84],
  [NHK-Werte].[bis 70 - 84],
  [NHK-Werte].[von 85 - 99],
  [NHK-Werte].[bis 85 - 99],
  [NHK-Werte].[von 2000],
  [NHK-Werte].[bis 2000],
  [NHK-Typen].Baunebenkosten;
