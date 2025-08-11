SELECT
  B_Abfrage_alle_Ergebnisse_A.ID_Gebäudeteil,
  B_Abfrage_alle_Ergebnisse_C.Herstellungskosten,
  B_Abfrage_alle_Ergebnisse_A.Nutzungsdauer,
  IIf(
    [Formulare]![startformular]![Bewertungsjahr] - [berücksichtigtes Baujahr] > [Nutzungsdauer],
    [Nutzungsdauer], [Formulare]![startformular]![Bewertungsjahr] - [berücksichtigtes Baujahr]
  ) AS [Abschreibung Jahre],
  [Herstellungskosten] / [Nutzungsdauer] AS [Abschreibung Jahr],
  [Herstellungskosten] / [Nutzungsdauer] * IIf(
    [Formulare]![startformular]![Bewertungsjahr] - [berücksichtigtes Baujahr] > [Nutzungsdauer],
    [Nutzungsdauer], [Formulare]![startformular]![Bewertungsjahr] - [berücksichtigtes Baujahr]
  ) AS [kumulierte Abschreibung] INTO B_Ergebnisse_D
FROM
  B_Abfrage_alle_Ergebnisse_A
  INNER JOIN B_Abfrage_alle_Ergebnisse_C ON B_Abfrage_alle_Ergebnisse_A.ID_Gebäudeteil = B_Abfrage_alle_Ergebnisse_C.ID_Gebäudeteil;
