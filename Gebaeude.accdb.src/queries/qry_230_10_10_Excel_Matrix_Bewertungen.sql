SELECT
  DISTINCT B_Sanierungsstau_Werterhöhung.ID_Werterh,
  [NAme] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil] AS Objekt,
  B_Sanierungsstau_Werterhöhung.Bauteil,
  B_Sanierungsstau_Werterhöhung.DS_Typ,
  B_Sanierungsstau_Werterhöhung.Aktivierungs_Datum,
  B_Sanierungsstau_Werterhöhung.Herstellkosten,
  B_Sanierungsstau_Werterhöhung.Mehrwert,
  B_Sanierungsstau_Werterhöhung_Vor_DS.Aktivierungs_Datum,
  fc_ID_WE_Vor_DS(
    [B_Sanierungsstau_Werterhöhung].[ID_Werterh]
  )= [B_Sanierungsstau_Werterhöhung_Vor_DS].[id_Werterh]
  Or (
    fc_ID_WE_Vor_DS(
      [B_Sanierungsstau_Werterhöhung].[ID_Werterh]
    )= 0
    And [B_Sanierungsstau_Werterhöhung_Vor_DS].[DS_Typ] = 1
  ) AS ID_WE_Vor_DS,
  B_Sanierungsstau_Werterhöhung_Vor_DS.ID_Werterh
FROM
  tbl_100_10_Liegenschaften
  INNER JOIN (
    (
      (
        M_Strassenverzeichnis
        RIGHT JOIN tbl_100_20_Gebäudeteile ON M_Strassenverzeichnis.Kennummer = tbl_100_20_Gebäudeteile.Kennummer_Straße
      )
      LEFT JOIN B_Sanierungsstau_Werterhöhung AS B_Sanierungsstau_Werterhöhung_Vor_DS ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung_Vor_DS.ID_Gebäudeteil
    )
    INNER JOIN B_Sanierungsstau_Werterhöhung ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        fc_ID_WE_Vor_DS(
          [B_Sanierungsstau_Werterhöhung].[ID_Werterh]
        )= [B_Sanierungsstau_Werterhöhung_Vor_DS].[id_Werterh]
        Or (
          fc_ID_WE_Vor_DS(
            [B_Sanierungsstau_Werterhöhung].[ID_Werterh]
          )= 0
          And [B_Sanierungsstau_Werterhöhung_Vor_DS].[DS_Typ] = 1
        )
      )= True
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.ID_Gebäudeteil
      ) Between F_Variable("lng_ID_Geb_Teil_Min")
      And F_Variable("lng_ID_Geb_Teil_Max")
    )
  )
ORDER BY
  [NAme] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil],
  B_Sanierungsstau_Werterhöhung.Aktivierungs_Datum;
