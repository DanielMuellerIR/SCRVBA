SELECT
  [Zusammenstellung NK_0].Haushaltsjahr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  [Zusammenstellung NK_0].Kostenstelle,
  [Zusammenstellung NK_0].Kostenstelle_Infoma,
  [Zusammenstellung NK_0].Bezeichnung,
  [Zusammenstellung NK_0].Nebenkosten_Art,
  Sum([Zusammenstellung NK_0].Betrag) AS [Summe von Betrag]
FROM
  M_Betriebe
  INNER JOIN (
    [Zusammenstellung NK_0]
    INNER JOIN M_Bereiche ON [Zusammenstellung NK_0].BereichNr = M_Bereiche.BereichNr
  ) ON M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb
GROUP BY
  [Zusammenstellung NK_0].Haushaltsjahr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  [Zusammenstellung NK_0].Kostenstelle,
  [Zusammenstellung NK_0].Kostenstelle_Infoma,
  [Zusammenstellung NK_0].Bezeichnung,
  [Zusammenstellung NK_0].Nebenkosten_Art
HAVING
  (
    (
      (
        [Zusammenstellung NK_0].Haushaltsjahr
      )= [welches Jahr?]
    )
  )
ORDER BY
  [Zusammenstellung NK_0].Haushaltsjahr,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  [Zusammenstellung NK_0].Kostenstelle,
  [Zusammenstellung NK_0].Bezeichnung,
  [Zusammenstellung NK_0].Nebenkosten_Art;
