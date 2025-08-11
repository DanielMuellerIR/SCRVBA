SELECT
  B_Ergebnisse_Tabelle.Bezeichnung,
  B_Ergebnisse_Tabelle.Straße,
  B_Ergebnisse_Tabelle.Gebäudeteil,
  B_Ergebnisse_Tabelle.Herstellungskosten AS Herstellkosten_NHK,
  B_Ergebnisse_Tabelle.Sanierungsstau AS Sanierung,
  CCur(
    Nz([kumulierte Abschreibung])
  ) AS Abschreibung,
  B_Ergebnisse_Tabelle.[Wert ermittelt] AS Gebäude,
  B_Ergebnisse_Tabelle.Grundstückswert AS Grundstück,
  IIf(
    IsNull([Bewertung abgeschlossen]),
    "-",
    "X"
  ) AS Erl
FROM
  B_Ergebnisse_Tabelle
ORDER BY
  B_Ergebnisse_Tabelle.Straße,
  B_Ergebnisse_Tabelle.Bezeichnung;
