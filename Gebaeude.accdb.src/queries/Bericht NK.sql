SELECT
  A_Buchungen.Betrag AS Gesamtbetrag,
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen],
  A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag,
  [Anrede] & IIf(
    IsNull([Anrede]),
    "",
    " "
  )& [Name, Vorname] AS Empfänger,
  A_Empfänger.[Name, Vorname],
  A_Buchungen.angelegt,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  Sachbearbeiter.Name,
  M_Kostenstellen.Kostenstelle,
  M_Kostenstellen.Bezeichnung,
  A_Buchungen.Haushaltsjahr,
  Zahlungszyklen.Zyklus,
  IIf(
    Right(
      Left([Kostenstelle], 4),
      2
    )= 0,
    60,
    Right(
      Left([Kostenstelle], 4),
      2
    )
  ) AS Ausdr1,
  M_Bereiche.Betrieb AS Ausdr2
FROM
  (
    (
      (
        (
          A_Buchungen
          LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
        )
        INNER JOIN [M_Verzeichnis Nebenkosten] ON A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID
      )
      INNER JOIN Zahlungszyklen ON A_Buchungen.[ID Fälligkeiten] = Zahlungszyklen.ID
    )
    LEFT JOIN (
      (
        (
          A_Buchungen_Aufteilung_auf_Kostenstellen
          LEFT JOIN M_Kostenstellen ON A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen] = M_Kostenstellen.Kennummer
        )
        LEFT JOIN M_Objekte ON M_Kostenstellen.Kennummer = M_Objekte.[Kennummer aus Kostenstellenverzeichnis]
      )
      LEFT JOIN M_Bereiche ON M_Objekte.[Kennummer aus Bereiche] = M_Bereiche.Kennummer
    ) ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]
  )
  LEFT JOIN Sachbearbeiter ON A_Buchungen.[ID Sachbearbeiter] = Sachbearbeiter.ID
GROUP BY
  A_Buchungen.Betrag,
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen],
  A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag,
  [Anrede] & IIf(
    IsNull([Anrede]),
    "",
    " "
  )& [Name, Vorname],
  A_Empfänger.[Name, Vorname],
  A_Buchungen.angelegt,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  Sachbearbeiter.Name,
  M_Kostenstellen.Kostenstelle,
  M_Kostenstellen.Bezeichnung,
  A_Buchungen.Haushaltsjahr,
  Zahlungszyklen.Zyklus,
  IIf(
    Right(
      Left([Kostenstelle], 4),
      2
    )= 0,
    60,
    Right(
      Left([Kostenstelle], 4),
      2
    )
  ),
  M_Bereiche.Betrieb;
