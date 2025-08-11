INSERT INTO Archiv_Mietberechnungen (
  ID_Gebäude, Bezeichnung, Planjahr,
  NK_Grundl_Jahr, Betrieb, BereichNr,
  BereichName, Kostenart, Sum_BGF_Gb_LS,
  Sum_BGF_Sp_Fl, Betrag, sort, Sportfläche,
  datum, [Text], Neu_ab_2017
)
SELECT
  Union_Abfrage_Mietberechnung_mit_Filter.ID_Gebäude,
  Union_Abfrage_Mietberechnung_mit_Filter.Objekt,
  Union_Abfrage_Mietberechnung_mit_Filter.Planjahr,
  F_VAriable("lng_NK_Jahr") AS NKGL_Jahr,
  Union_Abfrage_Mietberechnung_mit_Filter.Betrieb,
  Union_Abfrage_Mietberechnung_mit_Filter.BereichNr,
  Union_Abfrage_Mietberechnung_mit_Filter.BereichName,
  Union_Abfrage_Mietberechnung_mit_Filter.Kostenart,
  Union_Abfrage_Mietberechnung_mit_Filter.Sum_BGF_Gb_LS,
  Union_Abfrage_Mietberechnung_mit_Filter.Sum_BGF_Sp_Fl,
  Union_Abfrage_Mietberechnung_mit_Filter.Betrag_,
  Union_Abfrage_Mietberechnung_mit_Filter.sort,
  Union_Abfrage_Mietberechnung_mit_Filter.Sportfläche,
  Now() AS dat,
  F_Variable("str_Suchtext") AS Hinweis,
  True AS n_2017
FROM
  Union_Abfrage_Mietberechnung_mit_Filter;
