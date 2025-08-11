SELECT
  Archiv_Mietberechnungen.Planjahr AS Ausdr1,
  Archiv_Mietberechnungen.ID AS Ausdr2,
  Sum(Archiv_Mietberechnungen.Betrag) AS Vorauszahlung,
  Archiv_Mietberechnungen.datum AS Ausdr3
FROM
  Archiv_Mietberechnungen
WHERE
  (
    (
      (
        [Archiv_Mietberechnungen].[Text]
      ) Like [formulare]![Filter für Nebenkostenabrechnung]![Datei]
    )
  )
GROUP BY
  Archiv_Mietberechnungen.Planjahr,
  Archiv_Mietberechnungen.ID,
  Archiv_Mietberechnungen.datum
HAVING
  (
    (
      (
        [Archiv_Mietberechnungen].[Planjahr]
      ) Like [formulare]![Filter für Nebenkostenabrechnung]![JahrZahlung]
    )
  );
