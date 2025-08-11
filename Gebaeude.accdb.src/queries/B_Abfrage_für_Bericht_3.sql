SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  B_Sanierungsstau_Werterhöhung.Bauteil,
  B_Sanierungsstau_Werterhöhung.Mehrwert
FROM
  tbl_100_20_Gebäudeteile
  LEFT JOIN B_Sanierungsstau_Werterhöhung ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil;
