SELECT
  A_Buchungen.Betrag,
  A_Buchungen.Verwendungszweck,
  A_Buchungen.angelegt,
  A_Buchungen.Fälligkeit,
  A_Buchungen.von_,
  A_Buchungen.bis_,
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]
FROM
  A_Buchungen
  INNER JOIN A_Buchungen_Aufteilung_auf_Kostenstellen ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]
ORDER BY
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen];
