SELECT
  A_Buchungen.Verwendungszweck,
  Last(A_Buchungen.ID) AS [LetzterWert von ID],
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  A_Empfänger.[Name, Vorname],
  [Buchungsstellen _Doppik].Buchungsstelle
FROM
  (
    (
      (
        (
          A_Empfänger
          RIGHT JOIN A_Buchungen ON A_Empfänger.ID = A_Buchungen.[ID Empfänger]
        )
        LEFT JOIN [M_Verzeichnis Nebenkosten] ON A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID
      )
      LEFT JOIN A_Buchungen_Aufteilung_auf_Fälligkeiten ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen]
    )
    INNER JOIN A_Buchungen_Aufteilung_auf_Buchungsstellen ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungen]
  )
  INNER JOIN [Buchungsstellen _Doppik] ON A_Buchungen_Aufteilung_auf_Buchungsstellen.[ID aus Buchungsstellen] = [Buchungsstellen _Doppik].Kennummer
WHERE
  (
    (
      (
        A_Buchungen_Aufteilung_auf_Fälligkeiten.sofort
      )= Yes
      Or (
        A_Buchungen_Aufteilung_auf_Fälligkeiten.sofort
      )= Yes
    )
  )
GROUP BY
  A_Buchungen.Verwendungszweck,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  A_Empfänger.[Name, Vorname],
  [Buchungsstellen _Doppik].Buchungsstelle,
  A_Empfänger.[Name, Vorname]
HAVING
  (
    (
      (A_Buchungen.Verwendungszweck) Is Not Null
    )
    AND (
      (A_Empfänger.[Name, Vorname]) Like [formulare]![monatsanordnung]![firma]
    )
  )
ORDER BY
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art;
