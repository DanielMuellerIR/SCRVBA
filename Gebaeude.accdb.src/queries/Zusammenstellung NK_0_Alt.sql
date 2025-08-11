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
  [M_Verzeichnis Nebenkosten].ID AS ID_NebKostArt,
  A_Sachbearbeiter_Buchung.Name,
  M_Kostenstellen.Kostenstelle,
  M_Kostenstellen.Bezeichnung,
  A_Buchungen.Haushaltsjahr,
  Zahlungszyklen.Zyklus,
  CDbl(
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
    )
  ) AS BereichNr
FROM
  M_Kostenstellen
  RIGHT JOIN (
    (
      (
        (
          (
            (
              A_Buchungen
              LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
            )
            LEFT JOIN [M_Verzeichnis Nebenkosten] ON A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID
          )
          LEFT JOIN A_Sachbearbeiter_Buchung ON A_Buchungen.[ID Sachbearbeiter] = A_Sachbearbeiter_Buchung.ID
        )
        LEFT JOIN Zahlungszyklen ON A_Buchungen.[ID Fälligkeiten] = Zahlungszyklen.ID
      )
      LEFT JOIN A_Buchungen_Aufteilung_auf_Kostenstellen ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]
    )
    LEFT JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON A_Buchungen_Aufteilung_auf_Kostenstellen.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil
  ) ON M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst
WHERE
  (
    (
      (M_Kostenstellen.Kostenstelle) Is Not Null
    )
  );
