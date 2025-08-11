INSERT INTO MonatsAO_temp_Buchungssatz_Kostenstellen (
  [ID aus Buchungen_alt], [ID aus Kostenstellen],
  [ID aus Kostenträger], Kostenstelle_Infoma,
  Betrag
)
SELECT
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen],
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen],
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenträger],
  A_Buchungen_Aufteilung_auf_Kostenstellen.Kostenstelle_Infoma,
  A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
FROM
  A_Buchungen_Aufteilung_auf_Kostenstellen
GROUP BY
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen],
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen],
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenträger],
  A_Buchungen_Aufteilung_auf_Kostenstellen.Kostenstelle_Infoma,
  A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
HAVING
  (
    (
      (
        A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]
      )= [formulare]![Monatsanordnung]![alteID]
    )
  );
