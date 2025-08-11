SELECT
  B_Abfrage_für_Bericht_4.ID_Gebäudeteil,
  B_Abfrage_für_Bericht_4.Flur,
  B_Abfrage_für_Bericht_4.Flurstücke,
  B_Abfrage_für_Bericht_4.Fläche,
  B_Abfrage_für_Bericht_4.Bodenrichtwert,
  IIf(
    [voll berechnen] = Yes,
    [Bodenrichtwert] * [Fläche],
    [Bodenrichtwert] * [Fläche] *(
      [Formulare]![startformular]![Anteil Bodenrichtwert] / 100
    )
  ) AS Grundstückswert INTO B_Ergebnisse_E
FROM
  B_Abfrage_für_Bericht_4
GROUP BY
  B_Abfrage_für_Bericht_4.ID_Gebäudeteil,
  B_Abfrage_für_Bericht_4.Flur,
  B_Abfrage_für_Bericht_4.Flurstücke,
  B_Abfrage_für_Bericht_4.Fläche,
  B_Abfrage_für_Bericht_4.Bodenrichtwert,
  IIf(
    [voll berechnen] = Yes,
    [Bodenrichtwert] * [Fläche],
    [Bodenrichtwert] * [Fläche] *(
      [Formulare]![startformular]![Anteil Bodenrichtwert] / 100
    )
  )
HAVING
  (
    (
      (B_Abfrage_für_Bericht_4.Flur) Is Not Null
    )
  );
