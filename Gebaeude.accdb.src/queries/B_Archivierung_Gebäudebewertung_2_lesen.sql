SELECT
  Bewertung_Archiv_2.ID_Gebäudeteil,
  Bewertung_Archiv_2.[Fassade (11%)],
  Bewertung_Archiv_2.[Fenster (14%)],
  Bewertung_Archiv_2.[Dächer (15%)],
  Bewertung_Archiv_2.[Sanitär (13%)],
  Bewertung_Archiv_2.[Innenwände Sanitärbereich (6%)],
  Bewertung_Archiv_2.[Innentüren (11%)],
  Bewertung_Archiv_2.[Heizung (15%)],
  Bewertung_Archiv_2.[Elektroinstallation (7%)],
  Bewertung_Archiv_2.[Bodenbeläge (8 %)],
  Bewertung_Archiv_2.Datei,
  Bewertung_Archiv_2.Erläuterung
FROM
  Bewertung_Archiv_2
WHERE
  (
    (
      (Bewertung_Archiv_2.Datei)= F_Variable("dt_Fix_Datum")
    )
  );
