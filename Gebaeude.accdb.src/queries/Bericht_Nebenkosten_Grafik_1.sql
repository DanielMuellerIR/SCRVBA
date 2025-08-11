SELECT
  M_Kostenstellen.Kostenstelle,
  M_Kostenstellen.Bezeichnung,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  Sum(
    A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
  ) AS [Summe von Betrag]
FROM
  (
    (
      M_Kostenstellen
      LEFT JOIN A_Buchungen_Aufteilung_auf_Kostenstellen ON M_Kostenstellen.Kennummer = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]
    )
    LEFT JOIN A_Buchungen ON A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen] = A_Buchungen.ID
  )
  LEFT JOIN [M_Verzeichnis Nebenkosten] ON A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID
WHERE
  (
    (
      (A_Buchungen.Haushaltsjahr)= Year(
        Now()
      )
    )
  )
GROUP BY
  M_Kostenstellen.Kostenstelle,
  M_Kostenstellen.Bezeichnung,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art
ORDER BY
  M_Kostenstellen.Kostenstelle;
