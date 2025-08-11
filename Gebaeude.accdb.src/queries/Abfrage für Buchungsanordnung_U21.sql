SELECT
  A_Buchungen.ID,
  Sum(
    A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
  ) AS Betrag,
  M_Kostenstellen.Kostenstelle,
  A_Kostenträger.Kostenträger,
  IIf(
    [A_Empfänger]![Vorsteuerabzug] = 0,
    0,
    IIf(
      [M_Kostenstellen]![Vorsteuerabzug] = 0,
      0, [M_Kostenstellen]![Vorsteuerabzug]
    )
  ) AS Vorsteuerabzug_
FROM
  (
    A_Buchungen
    LEFT JOIN (
      (
        A_Buchungen_Aufteilung_auf_Kostenstellen
        LEFT JOIN M_Kostenstellen ON A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen] = M_Kostenstellen.Kennummer
      )
      LEFT JOIN A_Kostenträger ON A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenträger] = A_Kostenträger.ID
    ) ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]
  )
  LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
GROUP BY
  A_Buchungen.ID,
  M_Kostenstellen.Kostenstelle,
  A_Kostenträger.Kostenträger,
  IIf(
    [A_Empfänger]![Vorsteuerabzug] = 0,
    0,
    IIf(
      [M_Kostenstellen]![Vorsteuerabzug] = 0,
      0, [M_Kostenstellen]![Vorsteuerabzug]
    )
  )
HAVING
  (
    (
      (
        Sum(
          A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
        )
      )<> 0
    )
  )
ORDER BY
  M_Kostenstellen.Kostenstelle;
