SELECT
  A_Buchungen.ID,
  A_Buchungen_Aufteilung_auf_Buchungsstellen.Betrag,
  [Buchungsstellen _Doppik].Buchungsstelle,
  A_Buchungen_Aufteilung_auf_Buchungsstellen.Sachkonto,
  A_Buchungen_Aufteilung_auf_Buchungsstellen.Prod_Nr
FROM
  A_Buchungen
  LEFT JOIN (
    A_Buchungen_Aufteilung_auf_Buchungsstellen
    LEFT JOIN [Buchungsstellen _Doppik] ON A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungsstellen] = [Buchungsstellen _Doppik].Kennummer
  ) ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungen];
