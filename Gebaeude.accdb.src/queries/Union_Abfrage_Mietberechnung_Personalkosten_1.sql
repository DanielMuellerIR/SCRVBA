SELECT
  M_Personalkosten.Haushaltsjahr,
  M_Personalkosten.Betrag_400000,
  M_Personalkosten.Anteil_Name_Verwaltung,
  M_Personalkosten.Anteil_Name_Unterhaltung,
  [Betrag_400000] * [Anteil_Name_Verwaltung] / 100 AS Verwaltung,
  [Betrag_400000] * [Anteil_Name_Unterhaltung] / 100 AS Unterhaltung
FROM
  M_Personalkosten;
