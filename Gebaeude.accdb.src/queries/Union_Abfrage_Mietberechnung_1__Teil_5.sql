SELECT
  Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Planjahr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil] AS Objekt,
  tbl_100_20_Gebäudeteile.ID_Gebäude,
  Union_Abfrage_Mietberechnung_Bauunterhaltung_1.ID_Gebäudeteil,
  "Sachkosten" AS Kostenart,
  (
    (
      [Betrag_520000] *(
        [Anteil_520000_Verwaltung] + [Anteil_520000_Unterhaltung]
      )/ 100
    )+(
      [Betrag_550000] *(
        [Anteil_550000_Verwaltung] + [Anteil_550000_Unterhaltung]
      )/ 100
    )+(
      [Betrag_560000] *(
        [Anteil_560000_Verwaltung] + [Anteil_560000_Unterhaltung]
      )/ 100
    )+(
      [Betrag_570000] *(
        [Anteil_570000_Verwaltung] + [Anteil_570000_Unterhaltung]
      )/ 100
    )+(
      [Betrag_650000] *(
        [Anteil_650000_Verwaltung] + [Anteil_650000_Unterhaltung]
      )/ 100
    )+(
      [Betrag_Reinigung] *(
        [Anteil_Reinigung_Verwaltung] + [Anteil_Reinigung_Unterhaltung]
      )/ 100
    )
  )/ [Summe von Bruttogrundfläche] * [Bruttogrundfläche] AS Betrag,
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
            M_Verwaltungskosten
            INNER JOIN Union_Abfrage_Mietberechnung_Bauunterhaltung_1 ON M_Verwaltungskosten.Haushaltsjahr = Union_Abfrage_Mietberechnung_Bauunterhaltung_1.Planjahr
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
  );
