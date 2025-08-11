INSERT INTO MonatsAO_temp_Buchungssatz_fällig (
  [ID aus Buchungen_alt], sofort, [andere Fälligkeit],
  Fälligkeitsdatum
)
SELECT
  A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen],
  A_Buchungen_Aufteilung_auf_Fälligkeiten.sofort,
  A_Buchungen_Aufteilung_auf_Fälligkeiten.[andere Fälligkeit],
  Null AS Fälligkeitsdatum
FROM
  A_Buchungen_Aufteilung_auf_Fälligkeiten
GROUP BY
  A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen],
  A_Buchungen_Aufteilung_auf_Fälligkeiten.sofort,
  A_Buchungen_Aufteilung_auf_Fälligkeiten.[andere Fälligkeit],
  Null
HAVING
  (
    (
      (
        A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen]
      )= [formulare]![Monatsanordnung]![alteID]
    )
    AND (
      (
        A_Buchungen_Aufteilung_auf_Fälligkeiten.sofort
      )= Yes
    )
  );
