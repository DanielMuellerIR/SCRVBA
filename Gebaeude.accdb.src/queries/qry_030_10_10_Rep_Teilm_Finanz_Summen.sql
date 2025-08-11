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
      Sachbearbeiter
      RIGHT JOIN (
        (
          Maßnahmen
          INNER JOIN [Teile der Maßnahmen] ON Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]
        )
        INNER JOIN [Geplante Finanzierung] ON Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme
      ) ON Sachbearbeiter.ID = [Teile der Maßnahmen].ID_SB
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        [Teile der Maßnahmen].Umsetzungsjahr
      )= F_VAriable("lng_Kalk_Jahr")
    )
    AND (
      (
        [Geplante Finanzierung].Kalenderjahr
      )= F_VAriable("lng_Kalk_Jahr")
    )
    AND (
      ([Teile der Maßnahmen].ID_SB) Between F_VAriable("lng_ID_SB_Min")
      And F_VAriable("lng_ID_SB_Max")
    )
  )
ORDER BY
  [Bezeichnung] & ": " & [Gebäudeteil] & " -> " & [Maßnahme];
