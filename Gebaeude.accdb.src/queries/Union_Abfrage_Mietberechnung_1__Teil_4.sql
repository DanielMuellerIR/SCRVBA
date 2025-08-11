SELECT
  Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Planjahr,
  Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Betrieb,
  Union_Abfrage_Mietberechnung_Bauunterhaltung_1.BereichNr,
  Union_Abfrage_Mietberechnung_Bauunterhaltung_1.BereichName,
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil] AS Objekt,
  tbl_100_20_Gebäudeteile.ID_Gebäude,
  Union_Abfrage_Mietberechnung_Bauunterhaltung_1.ID_Gebäudeteil,
  "Verwaltungskosten Personal Verwaltung" AS Kostenart,
  Sum(
    CCur(
      Nz(
        [Verwaltung] / [Summe von Bruttogrundfläche] * [Bruttogrundfläche]
      )
    )
  ) AS Betrag,
  "B" AS sort
FROM
  tbl_100_10_Liegenschaften
  INNER JOIN (
    M_Betriebe
    RIGHT JOIN (
      (
        M_Bereiche
        RIGHT JOIN (
          (
            Union_Abfrage_Mietberechnung_Bauunterhaltung_1
            INNER JOIN Union_Abfrage_Mietberechnung_Personalkosten_1 ON Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Planjahr = Union_Abfrage_Mietberechnung_Personalkosten_1.Haushaltsjahr
          )
          INNER JOIN tbl_100_20_Gebäudeteile ON Union_Abfrage_Mietberechnung_Bauunterhaltung_1.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
        ) ON M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]
      )
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    ) ON M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        CCur(
          Nz([Summe von Bruttogrundfläche])
        )
      )> 0
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Mietrelevant
      )= True
    )
  )
GROUP BY
  Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Planjahr,
  Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Betrieb,
  Union_Abfrage_Mietberechnung_Bauunterhaltung_1.BereichNr,
  Union_Abfrage_Mietberechnung_Bauunterhaltung_1.BereichName,
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil],
  tbl_100_20_Gebäudeteile.ID_Gebäude,
  Union_Abfrage_Mietberechnung_Bauunterhaltung_1.ID_Gebäudeteil,
  "Verwaltungskosten Personal Verwaltung",
  Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Bruttogrundfläche,
  Union_Abfrage_Mietberechnung_Bauunterhaltung_1.[Summe von Bruttogrundfläche];
