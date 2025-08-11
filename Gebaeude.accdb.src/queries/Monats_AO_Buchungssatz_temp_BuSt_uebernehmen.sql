INSERT INTO A_Buchungen_Aufteilung_auf_Buchungsstellen (
  [ID aus Buchungen], Betrag, [ID aus Buchungsstellen],
  Prod_Nr, Sachkonto
)
SELECT
  [formulare]![Monatsanordnung_UF_5].[IDneu] AS Ausdr1,
  [formulare]![Monatsanordnung]![Anordnungsbetrag] AS Ausdr2,
  MonatsAO_temp_Buchungssatz_BuSt.[ID aus Buchungsstellen],
  tbl_Prod_Nummern.Prod_Nr,
  [Buchungsstellen _Doppik].Sachkonto
FROM
  tbl_Prod_Nummern
  RIGHT JOIN (
    MonatsAO_temp_Buchungssatz_BuSt
    LEFT JOIN [Buchungsstellen _Doppik] ON MonatsAO_temp_Buchungssatz_BuSt.[ID aus Buchungsstellen] = [Buchungsstellen _Doppik].Kennummer
  ) ON tbl_Prod_Nummern.ID_Pr_Nr = [Buchungsstellen _Doppik].ID_Pr_Nr;
