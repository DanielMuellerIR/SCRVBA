SELECT
  Bewertung_Archiv_3.ID_Gebäudeteil,
  Bewertung_Archiv_3.Maßnahme,
  Bewertung_Archiv_3.[voraussichtliche Kosten gesamt],
  Bewertung_Archiv_3.Datei,
  Bewertung_Archiv_3.Erläuterung
FROM
  Bewertung_Archiv_3
WHERE
  (
    (
      (Bewertung_Archiv_3.Datei)= F_Variable("dt_Fix_Datum")
    )
  );
