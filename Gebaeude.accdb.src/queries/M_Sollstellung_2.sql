SELECT
  M_Sollstellung_1.Planjahr,
  M_Sollstellung_1.Betrieb,
  M_Sollstellung_1.BereichNr,
  M_Sollstellung_1.BereichName,
  M_Sollstellung_1.Bezeichnung,
  Int([Summe von Betrag]) AS Betrag,
  M_Sollstellung_1.sort,
  M_Sollstellung_1.Bruttogrundfläche
FROM
  M_Sollstellung_1;
