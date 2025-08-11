SELECT
  M_Kostenstellen.Kennummer,
  M_Kostenstellen.Kostenstelle,
  M_Kostenstellen.Bezeichnung,
  M_Bereiche.BereichNr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichName
FROM
  (
    (
      M_Betriebe
      RIGHT JOIN M_Bereiche ON M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb
    )
    RIGHT JOIN tbl_100_20_Gebäudeteile ON M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]
  )
  RIGHT JOIN (
    M_Kostenstellen
    LEFT JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst
  ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil
GROUP BY
  M_Kostenstellen.Kennummer,
  M_Kostenstellen.Kostenstelle,
  M_Kostenstellen.Bezeichnung,
  M_Bereiche.BereichNr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichName;
