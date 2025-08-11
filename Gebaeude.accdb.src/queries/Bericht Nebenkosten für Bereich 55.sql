SELECT
  A_Buchungen.Haushaltsjahr,
  M_Kostenstellen.Bezeichnung,
  M_Kostenstellen.Kostenstelle,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  A_Buchungen.angelegt,
  A_Buchungen.Betrag AS [Gesamtbetrag Rechnung],
  A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag AS [Anteil Kostenstelle],
  A_Buchungen.von_,
  A_Buchungen.bis_,
  [Anrede] & IIf(
    IsNull([Anrede]),
    "",
    " "
  )& [Name, Vorname] AS Empfänger,
  M_Betriebe.Betrieb
FROM
  (
    M_Betriebe
    RIGHT JOIN (
      M_Bereiche
      RIGHT JOIN tbl_100_20_Gebäudeteile ON M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]
    ) ON M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb
  )
  RIGHT JOIN (
    (
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
          A_Buchungen_Aufteilung_auf_Kostenstellen
          LEFT JOIN M_Kostenstellen ON A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen] = M_Kostenstellen.Kennummer
        ) ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]
      )
      LEFT JOIN Sachbearbeiter ON A_Buchungen.[ID Sachbearbeiter] = Sachbearbeiter.ID
    )
    LEFT JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst
  ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil
GROUP BY
  A_Buchungen.Haushaltsjahr,
  M_Kostenstellen.Bezeichnung,
  M_Kostenstellen.Kostenstelle,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  A_Buchungen.angelegt,
  A_Buchungen.Betrag,
  A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag,
  A_Buchungen.von_,
  A_Buchungen.bis_,
  [Anrede] & IIf(
    IsNull([Anrede]),
    "",
    " "
  )& [Name, Vorname],
  Sachbearbeiter.Name,
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen],
  A_Empfänger.[Name, Vorname],
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
  M_Betriebe.Betrieb
HAVING
  (
    (
      (A_Buchungen.Haushaltsjahr)= 2010
      Or (A_Buchungen.Haushaltsjahr)= 2011
    )
    AND (
      (M_Kostenstellen.Kostenstelle)= 60550111
    )
    AND (
      (A_Buchungen.bis_)> #12/31/2009#
      Or (A_Buchungen.bis_) Is Null
    )
  )
  OR (
    (
      (A_Buchungen.Haushaltsjahr)= 2010
      Or (A_Buchungen.Haushaltsjahr)= 2011
    )
    AND (
      (M_Kostenstellen.Kostenstelle)= 60550101
    )
    AND (
      (A_Buchungen.bis_)> #12/31/2009#
      Or (A_Buchungen.bis_) Is Null
    )
  )
  OR (
    (
      (A_Buchungen.Haushaltsjahr)= 2010
      Or (A_Buchungen.Haushaltsjahr)= 2011
    )
    AND (
      (M_Kostenstellen.Kostenstelle)= 60550106
    )
    AND (
      (A_Buchungen.bis_)> #12/31/2009#
      Or (A_Buchungen.bis_) Is Null
    )
  )
  OR (
    (
      (A_Buchungen.Haushaltsjahr)= 2010
      Or (A_Buchungen.Haushaltsjahr)= 2011
    )
    AND (
      (M_Kostenstellen.Kostenstelle)= 60550301
    )
    AND (
      (A_Buchungen.bis_)> #12/31/2009#
      Or (A_Buchungen.bis_) Is Null
    )
  )
  OR (
    (
      (A_Buchungen.Haushaltsjahr)= 2010
      Or (A_Buchungen.Haushaltsjahr)= 2011
    )
    AND (
      (M_Kostenstellen.Kostenstelle)= 60550101
    )
    AND (
      (A_Buchungen.bis_)> #12/31/2009#
      Or (A_Buchungen.bis_) Is Null
    )
  )
  OR (
    (
      (A_Buchungen.Haushaltsjahr)= 2010
      Or (A_Buchungen.Haushaltsjahr)= 2011
    )
    AND (
      (M_Kostenstellen.Kostenstelle)= 60550110
    )
    AND (
      (A_Buchungen.bis_)> #12/31/2009#
      Or (A_Buchungen.bis_) Is Null
    )
  )
  OR (
    (
      (A_Buchungen.Haushaltsjahr)= 2010
      Or (A_Buchungen.Haushaltsjahr)= 2011
    )
    AND (
      (M_Kostenstellen.Kostenstelle)= 60550109
    )
    AND (
      (A_Buchungen.bis_)> #12/31/2009#
      Or (A_Buchungen.bis_) Is Null
    )
  )
ORDER BY
  A_Buchungen.Haushaltsjahr,
  M_Kostenstellen.Kostenstelle,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art;
