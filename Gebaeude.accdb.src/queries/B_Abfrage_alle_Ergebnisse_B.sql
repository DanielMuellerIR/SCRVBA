SELECT
  B_Abfrage_alle_Ergebnisse_A.ID_Gebäudeteil,
  IIf(
    IsNull([Herstellungskosten2]),
    IIf(
      IsNull([herstellungskosten1]),
      0,
      [Herstellungskosten1]
    ),
    [Herstellungskosten2]
  ) AS Herstellungskosten3,
  Sum(
    IIf(
      IsNull([Mehrwert]),
      0,
      [Mehrwert]
    )
  ) AS Mehrwert_,
  B_Abfrage_alle_Ergebnisse_A.Neubauwert_ab_2000
FROM
  (
    B_Abfrage_alle_Ergebnisse_A
    LEFT JOIN tbl_100_20_Gebäudeteile ON B_Abfrage_alle_Ergebnisse_A.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
  )
  LEFT JOIN B_Sanierungsstau_Werterhöhung ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.[Kennnummer aus B_Gebäudeliste]
GROUP BY
  B_Abfrage_alle_Ergebnisse_A.ID_Gebäudeteil,
  IIf(
    IsNull([Herstellungskosten2]),
    IIf(
      IsNull([herstellungskosten1]),
      0,
      [Herstellungskosten1]
    ),
    [Herstellungskosten2]
  ),
  B_Abfrage_alle_Ergebnisse_A.Neubauwert_ab_2000;
