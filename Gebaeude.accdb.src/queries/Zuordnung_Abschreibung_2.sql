SELECT
  Zuordnung_Abschreibung_1.Bezeichnung AS Mietobjekt,
  tbl_100_20_Gebäudeteile.Gebäudeteil,
  Zuordnung_Abschreibung_1.Anteil,
  Zuordnung_Abschreibung_1.[Abschreibung Jahr],
  CCur(
    Nz([Abschreibung Jahr])
  )* CDbl(
    Nz([Anteil])
  ) AS Betrag
FROM
  Zuordnung_Abschreibung_1
  LEFT JOIN tbl_100_20_Gebäudeteile ON Zuordnung_Abschreibung_1.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
ORDER BY
  Zuordnung_Abschreibung_1.Bezeichnung;
