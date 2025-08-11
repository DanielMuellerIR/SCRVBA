SELECT
  DISTINCT Maßnahmen.ID,
  [Geplante Finanzierung].Betrag,
  Finanzquellen.Finanzquelle,
  Finanzherkunft.Finanzherkunft,
  [Geplante Finanzierung].Maßn_Nr_Infoma
FROM
  (
    tbl_100_20_Gebäudeteile
    RIGHT JOIN (
      Maßnahmen
      INNER JOIN (
        Finanzquellen
        INNER JOIN (
          Finanzherkunft
          INNER JOIN [Geplante Finanzierung] ON Finanzherkunft.ID_Fin_Her = [Geplante Finanzierung].ID_Fin_Her
        ) ON Finanzquellen.ID_Fin_Qu = [Geplante Finanzierung].ID_Fin_Qu
      ) ON Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
  )
  LEFT JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil
WHERE
  (
    (
      (
        [Geplante Finanzierung].Kalenderjahr
      )= F_Variable('lng_Kalk_Jahr')
    )
  );
