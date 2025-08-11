SELECT
  Jahre_für_Bauunterhaltung.Jahr AS Planjahr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  [Bezeichnung] & ": " & [Gebäudeteil] AS Objekt,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  DLookUp(
    "[Summe von Bruttogrundfläche]",
    "Union_Abfrage_Mietberechnung_Bauunterhaltung_Summe_Flächen"
  ) AS [Summe von Bruttogrundfläche],
  "Bauunterhaltung" AS KostenarT,
  [Fiktive Flächen berechnen].Berechnungsfläche AS Bruttogrundfläche
FROM
  tbl_100_10_Liegenschaften
  INNER JOIN (
    M_Betriebe
    RIGHT JOIN (
      (
        (
          tbl_100_20_Gebäudeteile
          LEFT JOIN M_Bereiche ON tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche] = M_Bereiche.Kennummer
        )
        INNER JOIN [Fiktive Flächen berechnen] ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = [Fiktive Flächen berechnen].ID_Gebäudeteil
      )
      LEFT JOIN Jahre_für_Bauunterhaltung ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Jahre_für_Bauunterhaltung.ID_Gebäudeteil
    ) ON M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        tbl_100_20_Gebäudeteile.Mietrelevant
      )= True
    )
  )
GROUP BY
  Jahre_für_Bauunterhaltung.Jahr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  [Bezeichnung] & ": " & [Gebäudeteil],
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  DLookUp(
    "[Summe von Bruttogrundfläche]",
    "Union_Abfrage_Mietberechnung_Bauunterhaltung_Summe_Flächen"
  ),
  "Bauunterhaltung",
  [Fiktive Flächen berechnen].Berechnungsfläche
ORDER BY
  Jahre_für_Bauunterhaltung.Jahr,
  M_Bereiche.BereichNr,
  [Bezeichnung] & ": " & [Gebäudeteil];
