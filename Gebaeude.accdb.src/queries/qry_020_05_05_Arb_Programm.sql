SELECT
  [Teile der Maßnahmen].ID,
  [Bezeichnung] & " " & [M_Strassenverzeichnis].[Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & " -> " & [Gebäudeteil] AS Obj,
  [Maßnahme] & " -> " & [Teilmaßname] AS Massn_Teilm,
  Maßnahmen.Aktiv_Eigenl,
  IIf([Aktiv_Eigenl], "X", "") AS akt_Eigenl,
  Sachbearbeiter.Name,
  [Teile der Maßnahmen].Umsetzungsjahr,
  [Teile der Maßnahmen].Dat_Grundl_Erm_Start,
  [Teile der Maßnahmen].Dat_Grundl_Erm_Ende,
  [Teile der Maßnahmen].Dat_Planung_Start,
  [Teile der Maßnahmen].Dat_Planung_Ende,
  [Teile der Maßnahmen].Dat_Ausschr_Start,
  [Teile der Maßnahmen].Dat_Ausschr_Ende,
  [Teile der Maßnahmen].Dat_Ausf_Start,
  [Teile der Maßnahmen].Dat_Ausf_Ende,
  [Teile der Maßnahmen].Dat_Abr_Start,
  [Teile der Maßnahmen].Dat_Abr_Ende,
  [Teile der Maßnahmen].Dat_Abschluss,
  [Teile der Maßnahmen].Dat_Abschluss_DB,
  [Teile der Maßnahmen].[voraussichtliche Kosten]
FROM
  tbl_100_10_Liegenschaften
  INNER JOIN (
    (
      tbl_100_20_Gebäudeteile
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    )
    INNER JOIN (
      Sachbearbeiter
      RIGHT JOIN (
        Maßnahmen
        INNER JOIN [Teile der Maßnahmen] ON Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]
      ) ON Sachbearbeiter.ID = [Teile der Maßnahmen].ID_SB
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        [Teile der Maßnahmen].Umsetzungsjahr
      )= F_Variable('lng_Kalk_Jahr')
    )
    AND (
      (
        (
          [Sachbearbeiter].[ID] >= F_Variable("lng_ID_SB_Min")
          And [Sachbearbeiter].[ID] <= F_Variable("lng_ID_SB_Max")
        )
        Or ([Sachbearbeiter].[ID] Is Null)
      )= True
    )
  )
ORDER BY
  [Bezeichnung] & " " & [M_Strassenverzeichnis].[Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & " -> " & [Gebäudeteil],
  [Maßnahme] & " -> " & [Teilmaßname],
  Sachbearbeiter.Name;
