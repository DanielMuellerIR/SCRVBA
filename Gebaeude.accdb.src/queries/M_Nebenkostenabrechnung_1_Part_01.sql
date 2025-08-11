SELECT
  Archiv_Mietberechnungen.Planjahr,
  Archiv_Mietberechnungen.Betrieb,
  Archiv_Mietberechnungen.BereichNr,
  Archiv_Mietberechnungen.BereichName,
  Archiv_Mietberechnungen.Bezeichnung,
  Archiv_Mietberechnungen.ID_Gebäudeteil,
  Archiv_Mietberechnungen.Kostenart,
  Sum(Archiv_Mietberechnungen.Betrag) AS Abschläge,
  Archiv_Mietberechnungen.Betrag
FROM
  Archiv_Mietberechnungen
WHERE
  (
    (
      (Archiv_Mietberechnungen.sort)= "c"
    )
    AND (
      (Archiv_Mietberechnungen.Text) Like [formulare]![Filter für Nebenkostenabrechnung]![Datei]
    )
  )
GROUP BY
  Archiv_Mietberechnungen.Planjahr,
  Archiv_Mietberechnungen.Betrieb,
  Archiv_Mietberechnungen.BereichNr,
  Archiv_Mietberechnungen.BereichName,
  Archiv_Mietberechnungen.Bezeichnung,
  Archiv_Mietberechnungen.ID_Gebäudeteil,
  Archiv_Mietberechnungen.Kostenart,
  Archiv_Mietberechnungen.Betrag
HAVING
  (
    (
      (
        Archiv_Mietberechnungen.Planjahr
      ) Like [formulare]![Filter für Nebenkostenabrechnung]![JahrZahlung]
    )
    AND (
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
      ) Like [formulare]![Filter für Nebenkostenabrechnung]![Objekt]
    )
  );
