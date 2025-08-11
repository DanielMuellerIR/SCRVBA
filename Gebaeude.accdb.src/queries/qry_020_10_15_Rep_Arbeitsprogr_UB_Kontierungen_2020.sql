SELECT
  DISTINCT Buchungsstellen.Sachkonto,
  M_Kostenstellen.Kostenstelle_Infoma,
  Haushaltsdaten.Kostentraeger,
  Haushaltsdaten.Inv_Nr,
  Maßnahmen.ID,
  Haushaltsdaten.Anlagen_Nr,
  Haushaltsdaten.FP_Nr,
  [Ansatz] + [HHR] + [VE] AS Summ,
  [Finanzquelle] & " / " & [Finanzherkunft] & " / " & Format(
    Nz([Ansatz])+ Nz([HHr])+ Nz([VE]),
    "#,##0.00 €"
  ) AS Kontierung
FROM
  (
    tbl_100_20_Gebäudeteile
    RIGHT JOIN (
      Finanzherkunft
      RIGHT JOIN (
        Finanzquellen
        RIGHT JOIN (
          Maßnahmen
          LEFT JOIN (
            Buchungsstellen
            RIGHT JOIN Haushaltsdaten ON Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]
          ) ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
        ) ON Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu
      ) ON Finanzherkunft.ID_Fin_Her = Haushaltsdaten.ID_Fin_Her
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
  )
  LEFT JOIN (
    M_Kostenstellen
    RIGHT JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst
  ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil
WHERE
  (
    (
      (Haushaltsdaten.Jahr)= F_Variable('lng_Kalk_Jahr')
    )
  );
