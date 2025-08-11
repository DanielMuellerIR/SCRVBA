SELECT
  Union_Abfrage_Mietberechnung_mit_Filter.ID_Gebäude,
  Union_Abfrage_Mietberechnung_mit_Filter.Planjahr,
  Union_Abfrage_Mietberechnung_mit_Filter.Betrieb,
  Union_Abfrage_Mietberechnung_mit_Filter.BereichNr,
  Union_Abfrage_Mietberechnung_mit_Filter.BereichName,
  Union_Abfrage_Mietberechnung_mit_Filter.Objekt,
  Union_Abfrage_Mietberechnung_mit_Filter.Sportfläche,
  Union_Abfrage_Mietberechnung_mit_Filter.Sportfl,
  Union_Abfrage_Mietberechnung_mit_Filter.sort,
  Union_Abfrage_Mietberechnung_mit_Filter.Sorttext,
  Union_Abfrage_Mietberechnung_mit_Filter.Kostenart,
  Union_Abfrage_Mietberechnung_mit_Filter.Kennummer,
  Sum(
    Union_Abfrage_Mietberechnung_mit_Filter.Sum_BGF_Gb_LS
  ) AS Sum_BGF_Gb_LS,
  Sum(
    Union_Abfrage_Mietberechnung_mit_Filter.Sum_BGF_Sp_Fl
  ) AS Sum_BGF_Sp_Fl,
  Union_Abfrage_Mietberechnung_mit_Filter.Anteile,
  Union_Abfrage_Mietberechnung_mit_Filter.Betrag_ AS Betrag_,
  "" AS [Text]
FROM
  Union_Abfrage_Mietberechnung_mit_Filter
GROUP BY
  Union_Abfrage_Mietberechnung_mit_Filter.ID_Gebäude,
  Union_Abfrage_Mietberechnung_mit_Filter.Planjahr,
  Union_Abfrage_Mietberechnung_mit_Filter.Betrieb,
  Union_Abfrage_Mietberechnung_mit_Filter.BereichNr,
  Union_Abfrage_Mietberechnung_mit_Filter.BereichName,
  Union_Abfrage_Mietberechnung_mit_Filter.Objekt,
  Union_Abfrage_Mietberechnung_mit_Filter.Sportfläche,
  Union_Abfrage_Mietberechnung_mit_Filter.Sportfl,
  Union_Abfrage_Mietberechnung_mit_Filter.sort,
  Union_Abfrage_Mietberechnung_mit_Filter.Sorttext,
  Union_Abfrage_Mietberechnung_mit_Filter.Kostenart,
  Union_Abfrage_Mietberechnung_mit_Filter.Kennummer,
  Union_Abfrage_Mietberechnung_mit_Filter.Anteile,
  Union_Abfrage_Mietberechnung_mit_Filter.Betrag_,
  "";
