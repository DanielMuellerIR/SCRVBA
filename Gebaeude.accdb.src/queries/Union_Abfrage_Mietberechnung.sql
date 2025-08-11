SELECT
  Union_Abfrage_Mietberechnung_1.Planjahr,
  Union_Abfrage_Mietberechnung_1.Betrieb,
  Union_Abfrage_Mietberechnung_1.BereichNr,
  Union_Abfrage_Mietberechnung_1.BereichName,
  Union_Abfrage_Mietberechnung_1.Objekt,
  Union_Abfrage_Mietberechnung_1.ID_Gebäudeteil,
  Union_Abfrage_Mietberechnung_1.Kostenart,
  Union_Abfrage_Mietberechnung_1.Betrag,
  Union_Abfrage_Mietberechnung_1.sort,
  tbl_100_20_Gebäudeteile.BGF AS Bruttogrundfläche
FROM
  Union_Abfrage_Mietberechnung_1
  LEFT JOIN tbl_100_20_Gebäudeteile ON Union_Abfrage_Mietberechnung_1.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
WHERE
  (
    (
      (
        tbl_100_20_Gebäudeteile.ID_Gebäudeteil
      ) Is Not Null
    )
  );
