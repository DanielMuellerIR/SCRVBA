SELECT
  DISTINCT tbl_100_10_Liegenschaften.Bezeichnung,
  tbl_100_20_Gebäudeteile.Gebäudeteil,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  Maßnahmen.Maßnahme,
  Maßnahmen.[voraussichtliche Kosten gesamt],
  Maßnahmen.ID AS ID_Massn,
  Min(
    [geplante Finanzierung].Kalenderjahr
  ) AS MinvonKalenderjahr
FROM
  (
    tbl_100_10_Liegenschaften
    INNER JOIN tbl_100_20_Gebäudeteile ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
  )
  INNER JOIN (
    Maßnahmen
    INNER JOIN [geplante Finanzierung] ON Maßnahmen.ID = [geplante Finanzierung].ID_Massnahme
  ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
WHERE
  (
    (
      (Maßnahmen.Bilanz_relevant)= True
    )
  )
GROUP BY
  tbl_100_10_Liegenschaften.Bezeichnung,
  tbl_100_20_Gebäudeteile.Gebäudeteil,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  Maßnahmen.Maßnahme,
  Maßnahmen.[voraussichtliche Kosten gesamt],
  Maßnahmen.ID
ORDER BY
  Min(
    [geplante Finanzierung].Kalenderjahr
  );
