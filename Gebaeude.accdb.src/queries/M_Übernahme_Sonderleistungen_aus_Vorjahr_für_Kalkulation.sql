INSERT INTO M_Sonderleistungen_Kalkulation_für_Budget (
  Haushaltsjahr_Kalkulation, [erledigte Arbeiten],
  Betrag_bezahlt, Rechnungsaussteller,
  gezahlt_in, ID_Gebäudeteil
)
SELECT
  [Haushaltsjahr] + 1 AS Neues_HHJ,
  M_Sonderleistungen.[erledigte Arbeiten],
  M_Sonderleistungen.Betrag,
  M_Sonderleistungen.Rechnungsaussteller,
  M_Sonderleistungen.Haushaltsjahr,
  M_Sonderleistungen.ID_Gebäudeteil
FROM
  M_Sonderleistungen
WHERE
  (
    (
      (
        M_Sonderleistungen.ID_Gebäudeteil
      )= [Formulare]![M_Formular_Gebäudedaten]![Gebäudeauswahl]
    )
  );
