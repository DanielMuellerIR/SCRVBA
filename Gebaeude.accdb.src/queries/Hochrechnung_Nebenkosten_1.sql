SELECT
  A_Buchungen.Haushaltsjahr,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen],
  A_Empfänger.[Name, Vorname],
  A_Empfänger.ID AS ID_Empf,
  Zahlungszyklen.Zyklus,
  Zahlungszyklen.ID AS ID_Zyklus,
  Zahlungszyklen.Vervielfältiger,
  Sum(
    A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
  ) AS Betrag,
  [M_Verzeichnis Nebenkosten].ID AS ID_Nebenkosten
FROM
  (
    (
      (
        A_Buchungen
        LEFT JOIN [M_Verzeichnis Nebenkosten] ON A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID
      )
      LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
    )
    LEFT JOIN Zahlungszyklen ON A_Buchungen.[ID Fälligkeiten] = Zahlungszyklen.ID
  )
  RIGHT JOIN A_Buchungen_Aufteilung_auf_Kostenstellen ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]
GROUP BY
  A_Buchungen.Haushaltsjahr,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen],
  A_Empfänger.[Name, Vorname],
  A_Empfänger.ID,
  Zahlungszyklen.Zyklus,
  Zahlungszyklen.ID,
  Zahlungszyklen.Vervielfältiger,
  [M_Verzeichnis Nebenkosten].ID,
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen];
