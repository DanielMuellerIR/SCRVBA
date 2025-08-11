SELECT
  Union_Abfrage_Mietberechnung.Planjahr,
  Union_Abfrage_Mietberechnung.Betrieb,
  Union_Abfrage_Mietberechnung.BereichNr,
  Union_Abfrage_Mietberechnung.BereichName,
  Union_Abfrage_Mietberechnung.Bezeichnung,
  Union_Abfrage_Mietberechnung.ID,
  Sum(
    Union_Abfrage_Mietberechnung.Betrag
  ) AS [Summe von Betrag],
  Union_Abfrage_Mietberechnung.sort,
  Union_Abfrage_Mietberechnung.Bruttogrundfläche
FROM
  Union_Abfrage_Mietberechnung
GROUP BY
  Union_Abfrage_Mietberechnung.Planjahr,
  Union_Abfrage_Mietberechnung.Betrieb,
  Union_Abfrage_Mietberechnung.BereichNr,
  Union_Abfrage_Mietberechnung.BereichName,
  Union_Abfrage_Mietberechnung.Bezeichnung,
  Union_Abfrage_Mietberechnung.ID,
  Union_Abfrage_Mietberechnung.sort,
  Union_Abfrage_Mietberechnung.Bruttogrundfläche;
