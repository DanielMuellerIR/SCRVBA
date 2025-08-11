SELECT
  A_Buchungen.ID,
  A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen],
  A_Buchungen_Aufteilung_auf_Fälligkeiten.sofort,
  A_Buchungen_Aufteilung_auf_Fälligkeiten.[andere Fälligkeit],
  A_Buchungen_Aufteilung_auf_Fälligkeiten.Fälligkeitsdatum,
  A_Buchungen_Aufteilung_auf_Fälligkeiten.Betrag
FROM
  A_Buchungen
  LEFT JOIN A_Buchungen_Aufteilung_auf_Fälligkeiten ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen];
