SELECT
  B_Abfrage_alle_Ergebnisse.ID_Gebäudeteil,
  B_Abfrage_alle_Ergebnisse.Straße,
  B_Abfrage_alle_Ergebnisse.Bezeichnung,
  B_Abfrage_alle_Ergebnisse.Gebäudeteil,
  B_Abfrage_alle_Ergebnisse.BGF,
  B_Abfrage_alle_Ergebnisse.BRI,
  [NHK-Typen].Typ,
  B_Abfrage_alle_Ergebnisse.Baujahr_real,
  B_Abfrage_alle_Ergebnisse.Herstellungskosten,
  B_Abfrage_alle_Ergebnisse.Versicherungswert,
  B_Abfrage_alle_Ergebnisse.[kumulierte Abschreibung],
  B_Abfrage_alle_Ergebnisse.Sanierungsstau,
  B_Abfrage_alle_Ergebnisse.Grundstückswert,
  IIf(
    [ermittelter Wert] <= 0, 1, [ermittelter Wert]
  ) AS [Wert ermittelt],
  B_Abfrage_alle_Ergebnisse.[Bewertung abgeschlossen],
  B_Abfrage_alle_Ergebnisse.[Abschreibung Jahr],
  B_Abfrage_alle_Ergebnisse.[Typ aus NHK-Typen]
FROM
  B_Abfrage_alle_Ergebnisse
  LEFT JOIN [NHK-Typen] ON B_Abfrage_alle_Ergebnisse.[Typ aus NHK-Typen] = [NHK-Typen].Kennummer
ORDER BY
  B_Abfrage_alle_Ergebnisse.Straße,
  B_Abfrage_alle_Ergebnisse.Bezeichnung;
