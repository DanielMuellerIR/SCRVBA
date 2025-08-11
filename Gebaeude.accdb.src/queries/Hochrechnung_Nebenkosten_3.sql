SELECT
  Hochrechnung_Nebenkosten_2.Haushaltsjahr,
  Hochrechnung_Nebenkosten_3a.Kalkulationsjahr,
  M_Kostenstellen.Kostenstelle,
  M_Kostenstellen.Bezeichnung,
  Hochrechnung_Nebenkosten_2.Nebenkosten_Art,
  Hochrechnung_Nebenkosten_2.Zyklus,
  Hochrechnung_Nebenkosten_2.[Anzahl von Betrag],
  Hochrechnung_Nebenkosten_2.[Summe von Betrag],
  Hochrechnung_Nebenkosten_2.Vervielfältiger,
  IIf(
    [vervielfältiger] = 1,
    [summe von betrag],
    (
      [summe von betrag] / [anzahl von betrag]
    )* [vervielfältiger]
  ) AS hochgerechnet,
  IIf(
    IsNull([steigerungssatz]),
    0,
    IIf(
      [Hochrechnung_Nebenkosten_2].[Haushaltsjahr] = [Hochrechnung_Nebenkosten_3a].[Kalkulationsjahr],
      0, [steigerungssatz]
    )
  ) AS Steigerungssatz_,
  [steigerungssatz_] * [hochgerechnet] AS Steigerung,
  [Steigerung] + [hochgerechnet] AS Kosten,
  Hochrechnung_Nebenkosten_2.[Name, Vorname],
  [Zuordnung KoSt zu Bereichen und Betrieben].BereichName,
  M_Betriebe.ID_Betrieb
FROM
  (
    (
      (
        Hochrechnung_Nebenkosten_2
        LEFT JOIN Hochrechnung_Nebenkosten_3a ON Hochrechnung_Nebenkosten_2.ID_Nebenkosten = Hochrechnung_Nebenkosten_3a.Nebenkostenart
      )
      LEFT JOIN M_Kostenstellen ON Hochrechnung_Nebenkosten_2.[ID aus Kostenstellen] = M_Kostenstellen.Kennummer
    )
    LEFT JOIN [Zuordnung KoSt zu Bereichen und Betrieben] ON M_Kostenstellen.Kennummer = [Zuordnung KoSt zu Bereichen und Betrieben].Kennummer
  )
  LEFT JOIN M_Betriebe ON [Zuordnung KoSt zu Bereichen und Betrieben].Betrieb = M_Betriebe.Betrieb
WHERE
  (
    (
      (
        Hochrechnung_Nebenkosten_2.Haushaltsjahr
      ) Between F_Variable("lng_Kalk_Jahr_Min")
      And F_Variable("lng_Kalk_Jahr_Max")
    )
    AND (
      (M_Betriebe.ID_Betrieb) Between F_Variable("lng_Betr_Nr_Min")
      And F_Variable("lng_Betr_Nr_Max")
    )
    AND (
      (
        Hochrechnung_Nebenkosten_2.[ID aus Kostenstellen]
      ) Between F_Variable("lng_ID_Kostst_Min")
      And F_Variable("lng_ID_Kostst_Max")
    )
    AND (
      (
        Hochrechnung_Nebenkosten_2.ID_Zyklus
      ) Between F_Variable("lng_ID_ZahlZykl_Min")
      And F_Variable("lng_ID_ZahlZykl_Max")
    )
    AND (
      (
        Hochrechnung_Nebenkosten_2.ID_Empf
      ) Between F_Variable("lng_ID_Empf_Min")
      And F_Variable("lng_ID_Empf_Max")
    )
    AND (
      (
        Hochrechnung_Nebenkosten_2.ID_Nebenkosten
      ) Between F_Variable("lng_ID_Kostart_Min")
      And F_Variable("lng_ID_Kostart_Max")
    )
  );
