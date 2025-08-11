DELETE A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen],
A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen],
A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenträger],
A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
FROM
  A_Buchungen_Aufteilung_auf_Kostenstellen
WHERE
  (
    (
      (
        A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]
      )= [formulare]![Buchungsanordnung]![ID]
    )
  );
