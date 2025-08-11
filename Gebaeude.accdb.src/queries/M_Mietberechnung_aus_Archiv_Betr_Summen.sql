SELECT
  DISTINCTROW M_Mietberechnung_aus_Archiv.Planjahr,
  M_Mietberechnung_aus_Archiv.NK_Grundl_Jahr,
  M_Mietberechnung_aus_Archiv.Betrieb,
  M_Mietberechnung_aus_Archiv.BereichNr,
  M_Mietberechnung_aus_Archiv.BereichName,
  M_Mietberechnung_aus_Archiv.Objekt,
  M_Mietberechnung_aus_Archiv.Sportfläche,
  M_Mietberechnung_aus_Archiv.Sportfl,
  M_Mietberechnung_aus_Archiv.sort,
  M_Mietberechnung_aus_Archiv.Sorttext,
  M_Mietberechnung_aus_Archiv.Kostenart,
  Sum(
    M_Mietberechnung_aus_Archiv.Sum_BGF_Sp_Fl
  ) AS Sum_BGF_Sp_Fl,
  Sum(
    M_Mietberechnung_aus_Archiv.Sum_BGF_Gb_LS
  ) AS Sum_BGF_Gb_LS,
  M_Mietberechnung_aus_Archiv.betrag_ AS betrag_,
  M_Mietberechnung_aus_Archiv.text
FROM
  M_Mietberechnung_aus_Archiv
GROUP BY
  M_Mietberechnung_aus_Archiv.Planjahr,
  M_Mietberechnung_aus_Archiv.NK_Grundl_Jahr,
  M_Mietberechnung_aus_Archiv.Betrieb,
  M_Mietberechnung_aus_Archiv.BereichNr,
  M_Mietberechnung_aus_Archiv.BereichName,
  M_Mietberechnung_aus_Archiv.Objekt,
  M_Mietberechnung_aus_Archiv.Sportfläche,
  M_Mietberechnung_aus_Archiv.Sportfl,
  M_Mietberechnung_aus_Archiv.sort,
  M_Mietberechnung_aus_Archiv.Sorttext,
  M_Mietberechnung_aus_Archiv.Kostenart,
  M_Mietberechnung_aus_Archiv.betrag_,
  M_Mietberechnung_aus_Archiv.text;
