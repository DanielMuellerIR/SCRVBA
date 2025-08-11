SELECT
  IIf(
    IsNull(
      [Zuordnung_Abschreibung].[ID_Gebäudeteil]
    ),
    "KEINEM OBJEKT ZUGEORDNET!",
    [Bezeichnung]
  ) AS Mietobjekt,
  tbl_100_20_Gebäudeteile.Gebäudeteil,
  B_Abfrage_alle_Ergebnisse_D.[Abschreibung Jahr],
  Zuordnung_Abschreibung.Anteil,
  [Abschreibung Jahr] * [Anteil] AS Betrag,
  Zuordnung_Abschreibung.ID_Gebäudeteil
FROM
  tbl_100_10_Liegenschaften
  RIGHT JOIN (
    (
      B_Abfrage_alle_Ergebnisse_D
      LEFT JOIN Zuordnung_Abschreibung ON B_Abfrage_alle_Ergebnisse_D.ID_Gebäudeteil = Zuordnung_Abschreibung.ID_Gebäudeteil
    )
    LEFT JOIN tbl_100_20_Gebäudeteile ON Zuordnung_Abschreibung.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
ORDER BY
  IIf(
    IsNull(
      [Zuordnung_Abschreibung].[ID_Gebäudeteil]
    ),
    "KEINEM OBJEKT ZUGEORDNET!",
    [Bezeichnung]
  ),
  tbl_100_20_Gebäudeteile.Gebäudeteil;
