SELECT
  F_Variable("lng_Kalk_Jahr") AS Bewertungsjahr,
  [M_Strassenverzeichnis].[name] & " " & [tbl_100_20_Gebäudeteile].[HAus_Nr] & " : " & Chr(13)& Chr(10)& [Bezeichnung] & " -> " & [Gebäudeteil] AS Objekt,
  B_Sanierungsstau_Werterhöhung.Bauteil,
  B_Sanierungsstau_Werterhöhung.Aktivierungs_Datum,
  B_Sanierungsstau_Werterhöhung.Mehrwert AS Werterhöhung,
  B_Sanierungsstau_Werterhöhung.Beruecks_Wiederbesch_Wert,
  B_Sanierungsstau_Werterhöhung.Nutz_dauer_Jahre_Verl
FROM
  tbl_100_10_Liegenschaften
  INNER JOIN (
    (
      tbl_100_20_Gebäudeteile
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    )
    INNER JOIN B_Sanierungsstau_Werterhöhung ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        Year([Aktivierungs_Datum])
      )> F_Variable("lng_Kalk_Jahr")
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.ID_Gebäudeteil
      ) Between F_Variable("lng_ID_Geb_Teil_min")
      And F_Variable("lng_ID_Geb_Teil_max")
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Bilanz_relevant
      )= True
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_seit
      ) Is Null
    )
    AND (
      (
        B_Sanierungsstau_Werterhöhung.DS_Typ
      )= 2
    )
  )
ORDER BY
  [M_Strassenverzeichnis].[name] & " " & [tbl_100_20_Gebäudeteile].[HAus_Nr] & " : " & Chr(13)& Chr(10)& [Bezeichnung] & " -> " & [Gebäudeteil];
