INSERT INTO MonatsAO_temp_Buchungssatz_BuSt (
  [ID aus Buchungsstellen], [ID aus Buchungen_alt],
  Betrag, Prod_Nr
)
SELECT
  A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungsstellen],
  A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungen],
  A_Buchungen_Aufteilung_auf_Buchungsstellen.Betrag,
  A_Buchungen_Aufteilung_auf_Buchungsstellen.Prod_Nr
FROM
  A_Buchungen_Aufteilung_auf_Buchungsstellen
  INNER JOIN [Buchungsstellen _Doppik] ON A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungsstellen] = [Buchungsstellen _Doppik].Kennummer
WHERE
  (
    (
      (
        A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungen]
      )= [formulare]![Monatsanordnung]![alteID]
    )
  );
