SELECT
  Bewertung_Archiv_5.ID_Gebäudeteil,
  Bewertung_Archiv_5.Gebäudeteil,
  Bewertung_Archiv_5.[Lage des Gebäudes],
  Bewertung_Archiv_5.Gemarkung,
  Bewertung_Archiv_5.Flur,
  Bewertung_Archiv_5.Flurstücke,
  Bewertung_Archiv_5.Fläche,
  Bewertung_Archiv_5.Bodenrichtwert,
  Bewertung_Archiv_5.Bezeichnung,
  Bewertung_Archiv_5.Datei,
  Bewertung_Archiv_5.Erläuterung,
  Bewertung_Archiv_5.[anteil bodenrichtwert],
  Bewertung_Archiv_5.GebäudeteilB,
  Bewertung_Archiv_5.[voll berechnen]
FROM
  Bewertung_Archiv_5
WHERE
  (
    (
      (Bewertung_Archiv_5.Datei)= F_Variable("dt_Fix_Datum")
    )
  );
