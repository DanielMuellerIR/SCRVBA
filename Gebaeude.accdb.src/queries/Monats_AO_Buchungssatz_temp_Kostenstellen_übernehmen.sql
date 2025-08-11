INSERT INTO A_Buchungen_Aufteilung_auf_Kostenstellen (
  [ID aus Buchungen], [ID aus Kostenstellen],
  [ID aus Kostenträger], Kostenstelle_Infoma,
  Betrag
)
SELECT
  [formulare]![Monatsanordnung_UF_5].[IDneu] AS Ausdr1,
  MonatsAO_temp_Buchungssatz_Kostenstellen.[ID aus Kostenstellen],
  MonatsAO_temp_Buchungssatz_Kostenstellen.[ID aus Kostenträger],
  MonatsAO_temp_Buchungssatz_Kostenstellen.Kostenstelle_Infoma,
  MonatsAO_temp_Buchungssatz_Kostenstellen.Betrag
FROM
  MonatsAO_temp_Buchungssatz_Kostenstellen;
