SELECT
  Bewertung_Archiv_4.ID_Gebäudeteil,
  Bewertung_Archiv_4.Bauteil,
  Bewertung_Archiv_4.Mehrwert,
  Bewertung_Archiv_4.Datei,
  Bewertung_Archiv_4.Erläuterung
FROM
  Bewertung_Archiv_4
WHERE
  (
    (
      (Bewertung_Archiv_4.Datei)= F_Variable("dt_Fix_Datum")
    )
  );
