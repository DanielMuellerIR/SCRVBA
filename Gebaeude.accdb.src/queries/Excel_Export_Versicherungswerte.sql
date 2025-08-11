SELECT
  B_Ergebnisse_Tabelle.Bezeichnung,
  B_Ergebnisse_Tabelle.Straße,
  B_Ergebnisse_Tabelle.Gebäudeteil,
  B_Ergebnisse_Tabelle.Versicherungswert AS [Versicherungs-Wert],
  B_Ergebnisse_Tabelle.BGF,
  B_Ergebnisse_Tabelle.BRI,
  B_Ergebnisse_Tabelle.Baujahr_real AS Baujahr,
  B_Ergebnisse_Tabelle.Typ
FROM
  B_Ergebnisse_Tabelle
ORDER BY
  B_Ergebnisse_Tabelle.Straße,
  B_Ergebnisse_Tabelle.Bezeichnung;
