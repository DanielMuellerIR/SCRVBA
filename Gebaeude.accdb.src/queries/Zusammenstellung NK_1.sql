SELECT
  [Zusammenstellung NK_0].Haushaltsjahr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  [Zusammenstellung NK_0].Kostenstelle,
  [Zusammenstellung NK_0].Kostenstelle_Infoma,
  [Zusammenstellung NK_0].Bezeichnung,
  [Zusammenstellung NK_0].Nebenkosten_Art,
  Sum([Zusammenstellung NK_0].Betrag) AS [Summe von Betrag],
  M_Betriebe.ID_Betrieb
FROM
  M_Betriebe
  INNER JOIN (
    [Zusammenstellung NK_0]
    INNER JOIN M_Bereiche ON [Zusammenstellung NK_0].BereichNr = M_Bereiche.BereichNr
  ) ON M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb
WHERE
  (
    (
      (M_Bereiche.Kennummer) Between F_Variable("lng_Ber_Nr_Min")
      And F_Variable("lng_Ber_Nr_Max")
    )
    AND (
      (
        [Zusammenstellung NK_0].[ID aus Kostenstellen]
      ) Between F_Variable("lng_ID_Kostst_Min")
      And F_Variable("lng_ID_Kostst_Max")
    )
  )
GROUP BY
  [Zusammenstellung NK_0].Haushaltsjahr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  [Zusammenstellung NK_0].Kostenstelle,
  [Zusammenstellung NK_0].Kostenstelle_Infoma,
  [Zusammenstellung NK_0].Bezeichnung,
  [Zusammenstellung NK_0].Nebenkosten_Art,
  M_Betriebe.ID_Betrieb,
  [Zusammenstellung NK_0].ID_NebKostArt
HAVING
  (
    (
      (
        [Zusammenstellung NK_0].Haushaltsjahr
      ) Between F_Variable("lng_Kalk_Jahr_Min")
      And F_Variable("lng_Kalk_Jahr_Max")
    )
    AND (
      (M_Betriebe.ID_Betrieb) Between F_Variable("lng_Betr_Nr_Min")
      And F_Variable("lng_Betr_Nr_Max")
    )
    AND (
      (
        [Zusammenstellung NK_0].ID_NebKostArt
      ) Between F_Variable("lng_ID_Kostart_Min")
      And F_Variable("lng_ID_Kostart_Max")
    )
  )
ORDER BY
  [Zusammenstellung NK_0].Haushaltsjahr,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  [Zusammenstellung NK_0].Kostenstelle,
  [Zusammenstellung NK_0].Bezeichnung,
  [Zusammenstellung NK_0].Nebenkosten_Art;
