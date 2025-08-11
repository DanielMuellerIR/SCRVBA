SELECT
  Maßnahmen.ID,
  0 AS IDTM,
  [Bezeichnung] & ": " & [Gebäudeteil] & " -> " & [Maßnahme] AS Obj_Massn,
  [Geplante Finanzierung].Betrag AS Finanz_Jahressumme
FROM
  tbl_100_10_Liegenschaften
  RIGHT JOIN (
    tbl_100_20_Gebäudeteile
    RIGHT JOIN (
      (
        Maßnahmen
        LEFT JOIN [Teile der Maßnahmen] ON Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]
      )
      RIGHT JOIN [Geplante Finanzierung] ON Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        Maßnahmen.[nicht mehr erforderlich weil]
      ) Is Null
    )
    AND (
      (
        IIf(
          [Umsetzungsjahr] = 2017, [Voraussichtliche Kosten],
          0
        )
      )= 0
    )
    AND (
      (
        [Geplante Finanzierung].Kalenderjahr
      )= F_VAriable("lng_Kalk_Jahr")
    )
  )
ORDER BY
  [Bezeichnung] & ": " & [Gebäudeteil] & " -> " & [Maßnahme];
