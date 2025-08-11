SELECT
  [Formulare]![Filter für Nebenkostenabrechnung]![JahrZahlung] AS Planjahr,
  Archiv_Mietberechnungen.Betrieb,
  Archiv_Mietberechnungen.BereichNr,
  Archiv_Mietberechnungen.BereichName,
  Archiv_Mietberechnungen.Bezeichnung,
  Archiv_Mietberechnungen.ID_Gebäudeteil,
  "." AS Kostenart_,
  0 AS Abschläge,
  Archiv_Mietberechnungen.Betrag
FROM
  Archiv_Mietberechnungen
GROUP BY
  [Formulare]![Filter für Nebenkostenabrechnung]![JahrZahlung],
  Archiv_Mietberechnungen.Betrieb,
  Archiv_Mietberechnungen.BereichNr,
  Archiv_Mietberechnungen.BereichName,
  Archiv_Mietberechnungen.Bezeichnung,
  Archiv_Mietberechnungen.ID_Gebäudeteil,
  ".",
  0,
  Archiv_Mietberechnungen.Betrag
HAVING
  (
    (
      (
        Archiv_Mietberechnungen.Betrieb
      ) Like [formulare]![Filter für Nebenkostenabrechnung]![Betrieb]
    )
    AND (
      (
        Archiv_Mietberechnungen.BereichName
      ) Like [formulare]![Filter für Nebenkostenabrechnung]![Bereich]
    )
    AND (
      (
        Archiv_Mietberechnungen.ID_Gebäudeteil
      ) Is Null
    )
  );
