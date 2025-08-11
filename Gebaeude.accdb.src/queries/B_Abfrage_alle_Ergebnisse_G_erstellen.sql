SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  tbl_100_20_Gebäudeteile.[Fassade (11%)],
  tbl_100_20_Gebäudeteile.[Fenster (14%)],
  tbl_100_20_Gebäudeteile.[Dächer (15%)],
  tbl_100_20_Gebäudeteile.[Sanitär (13%)],
  tbl_100_20_Gebäudeteile.[Innenwände Sanitärbereich (6%)],
  tbl_100_20_Gebäudeteile.[Bodenbeläge (8 %)],
  tbl_100_20_Gebäudeteile.[Innentüren (11%)],
  tbl_100_20_Gebäudeteile.[Heizung (15%)],
  tbl_100_20_Gebäudeteile.[Elektroinstallation (7%)] INTO B_Ergebnisse_G
FROM
  tbl_100_20_Gebäudeteile
GROUP BY
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  tbl_100_20_Gebäudeteile.[Fassade (11%)],
  tbl_100_20_Gebäudeteile.[Fenster (14%)],
  tbl_100_20_Gebäudeteile.[Dächer (15%)],
  tbl_100_20_Gebäudeteile.[Sanitär (13%)],
  tbl_100_20_Gebäudeteile.[Innenwände Sanitärbereich (6%)],
  tbl_100_20_Gebäudeteile.[Bodenbeläge (8 %)],
  tbl_100_20_Gebäudeteile.[Innentüren (11%)],
  tbl_100_20_Gebäudeteile.[Heizung (15%)],
  tbl_100_20_Gebäudeteile.[Elektroinstallation (7%)];
