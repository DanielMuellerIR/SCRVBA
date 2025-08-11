SELECT
  Hochrechnung_Nebenkosten_1.Haushaltsjahr,
  Hochrechnung_Nebenkosten_1.[ID aus Kostenstellen],
  Hochrechnung_Nebenkosten_1.Nebenkosten_Art,
  Hochrechnung_Nebenkosten_1.ID_Nebenkosten,
  Hochrechnung_Nebenkosten_1.[Name, Vorname],
  Hochrechnung_Nebenkosten_1.ID_Empf,
  Hochrechnung_Nebenkosten_1.Zyklus,
  Hochrechnung_Nebenkosten_1.ID_Zyklus,
  Count(
    Hochrechnung_Nebenkosten_1.Betrag
  ) AS [Anzahl von Betrag],
  Sum(
    Hochrechnung_Nebenkosten_1.Betrag
  ) AS [Summe von Betrag],
  Hochrechnung_Nebenkosten_1.Vervielfältiger
FROM
  Hochrechnung_Nebenkosten_1
GROUP BY
  Hochrechnung_Nebenkosten_1.Haushaltsjahr,
  Hochrechnung_Nebenkosten_1.[ID aus Kostenstellen],
  Hochrechnung_Nebenkosten_1.Nebenkosten_Art,
  Hochrechnung_Nebenkosten_1.ID_Nebenkosten,
  Hochrechnung_Nebenkosten_1.[Name, Vorname],
  Hochrechnung_Nebenkosten_1.ID_Empf,
  Hochrechnung_Nebenkosten_1.Zyklus,
  Hochrechnung_Nebenkosten_1.ID_Zyklus,
  Hochrechnung_Nebenkosten_1.Vervielfältiger;
