SELECT
  [Name] & " " & [tbl_100_20_Gebäudeteile].[HAus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil] AS Objekt,
  M_Berechnung_Faktor_bei_Mietende_Mietbeginn.ID_Gebäudeteil,
  "Abschreibung" AS Kostenart,
  [Abschreibung Jahr] * [Anteile] * [Anteil] AS Betrag,
  "B" AS sort
FROM
  tbl_100_10_Liegenschaften
  RIGHT JOIN (
    (
      (
        M_Bereiche
        RIGHT JOIN tbl_100_20_Gebäudeteile ON M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]
      )
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    )
    RIGHT JOIN (
      (
        B_Ergebnisse_D
        INNER JOIN Zuordnung_Abschreibung ON B_Ergebnisse_D.ID_Gebäudeteil = Zuordnung_Abschreibung.ID_Gebäudeteil
      )
      LEFT JOIN M_Berechnung_Faktor_bei_Mietende_Mietbeginn ON Zuordnung_Abschreibung.ID_Gebäudeteil = M_Berechnung_Faktor_bei_Mietende_Mietbeginn.ID_Gebäudeteil
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Zuordnung_Abschreibung.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
GROUP BY
  [Name] & " " & [tbl_100_20_Gebäudeteile].[HAus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil],
  M_Berechnung_Faktor_bei_Mietende_Mietbeginn.ID_Gebäudeteil,
  "Abschreibung",
  [Abschreibung Jahr] * [Anteile] * [Anteil],
  "B",
  M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Anteile,
  Zuordnung_Abschreibung.Anteil,
  M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Jahr
HAVING
  (
    (
      (
        M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Jahr
      )= [Welches Kalkulationsjahr:]
    )
  )
ORDER BY
  [Name] & " " & [tbl_100_20_Gebäudeteile].[HAus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil];
