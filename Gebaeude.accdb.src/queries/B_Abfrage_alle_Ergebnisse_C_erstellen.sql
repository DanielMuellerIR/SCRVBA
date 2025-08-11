SELECT
  B_Abfrage_alle_Ergebnisse_B.ID_Gebäudeteil,
  B_Abfrage_alle_Ergebnisse_B.Herstellungskosten3,
  IIf(
    IsNull([Neubauwert_ab_2000]),
    IIf(
      IsNull([Herstellungskosten3]),
      0,
      [Herstellungskosten3] * 4 / 100
    ),
    0
  ) AS Außenanlagen,
  B_Abfrage_alle_Ergebnisse_B.Mehrwert_,
  [Herstellungskosten3] + IIf(
    IsNull([Neubauwert_ab_2000]),
    IIf(
      IsNull([Herstellungskosten3]),
      0,
      [Herstellungskosten3] * 4 / 100
    ),
    0
  )+ [Mehrwert_] AS Herstellungskosten INTO B_Ergebnisse_C
FROM
  B_Abfrage_alle_Ergebnisse_B
GROUP BY
  B_Abfrage_alle_Ergebnisse_B.ID_Gebäudeteil,
  B_Abfrage_alle_Ergebnisse_B.Herstellungskosten3,
  IIf(
    IsNull([Neubauwert_ab_2000]),
    IIf(
      IsNull([Herstellungskosten3]),
      0,
      [Herstellungskosten3] * 4 / 100
    ),
    0
  ),
  B_Abfrage_alle_Ergebnisse_B.Mehrwert_,
  [Herstellungskosten3] + IIf(
    IsNull([Neubauwert_ab_2000]),
    IIf(
      IsNull([Herstellungskosten3]),
      0,
      [Herstellungskosten3] * 4 / 100
    ),
    0
  )+ [Mehrwert_],
  B_Abfrage_alle_Ergebnisse_B.Neubauwert_ab_2000;
