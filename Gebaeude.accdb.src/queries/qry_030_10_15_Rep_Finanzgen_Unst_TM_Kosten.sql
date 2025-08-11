SELECT
  DISTINCT Maßnahmen.ID,
  0 AS IDTM,
  [Bezeichnung] & ": " & [Gebäudeteil] & " -> " & [Maßnahme] AS Obj_Massn,
  [Geplante Finanzierung].Betrag AS Finanz_Jahressumme
FROM
  tbl_100_10_Liegenschaften
  INNER JOIN (
    tbl_100_20_Gebäudeteile
    INNER JOIN (
      (
        Maßnahmen
        LEFT JOIN [Teile der Maßnahmen] ON Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]
      )
      INNER JOIN [Geplante Finanzierung] ON Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        [Geplante Finanzierung].Kalenderjahr
      )= F_VAriable("lng_Kalk_Jahr")
    )
    AND (
      (
        [Teile der Maßnahmen].Umsetzungsjahr
      ) Is Null
    )
  )
ORDER BY
  [Bezeichnung] & ": " & [Gebäudeteil] & " -> " & [Maßnahme];
