INSERT INTO M_Objekte (
  Bezeichnung, [Kennummer aus Straßenverzeichnis],
  Hausnummer, [Kennummer aus Bereiche],
  Bruttogrundfläche, [Kennummer aus Kostenstellenverzeichnis],
  [Kennummer aus Kostenträgerverzeichnis],
  [ID aus Sachbearbeiter], Mietbeginn,
  Mietende, Gebäudewert, Reinigungsfläche,
  Sportfläche
)
SELECT
  [Bezeichnung] & " Duplikat" AS Ausdr1,
  M_Objekte.[Kennummer aus Straßenverzeichnis],
  M_Objekte.Hausnummer,
  M_Objekte.[Kennummer aus Bereiche],
  M_Objekte.Bruttogrundfläche,
  M_Objekte.[Kennummer aus Kostenstellenverzeichnis],
  M_Objekte.[Kennummer aus Kostenträgerverzeichnis],
  M_Objekte.[ID aus Sachbearbeiter],
  M_Objekte.Mietbeginn,
  M_Objekte.Mietende,
  M_Objekte.Gebäudewert,
  M_Objekte.Reinigungsfläche,
  M_Objekte.Sportfläche
FROM
  M_Objekte
GROUP BY
  [Bezeichnung] & " Duplikat",
  M_Objekte.[Kennummer aus Straßenverzeichnis],
  M_Objekte.Hausnummer,
  M_Objekte.[Kennummer aus Bereiche],
  M_Objekte.Bruttogrundfläche,
  M_Objekte.[Kennummer aus Kostenstellenverzeichnis],
  M_Objekte.[Kennummer aus Kostenträgerverzeichnis],
  M_Objekte.[ID aus Sachbearbeiter],
  M_Objekte.Mietbeginn,
  M_Objekte.Mietende,
  M_Objekte.Gebäudewert,
  M_Objekte.Reinigungsfläche,
  M_Objekte.Sportfläche,
  M_Objekte.ID
HAVING
  (
    (
      (M_Objekte.ID)= [Formulare]![M_Formular_Gebäudedaten].[Gebäudeauswahl]
    )
  );
