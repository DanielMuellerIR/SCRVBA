SELECT
  B_Ergebnisse_Tabelle.Bezeichnung,
  B_Ergebnisse_Tabelle.Straße,
  B_Ergebnisse_Tabelle.Gebäudeteil,
  B_Ergebnisse_Tabelle.[Abschreibung Jahr],
  B_Ergebnisse_Tabelle.Kennummer
FROM
  B_Ergebnisse_Tabelle
ORDER BY
  B_Ergebnisse_Tabelle.Straße,
  B_Ergebnisse_Tabelle.Gebäudeteil;
