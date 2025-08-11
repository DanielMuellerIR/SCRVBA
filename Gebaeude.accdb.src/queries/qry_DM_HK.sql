SELECT
  tbl_100_10_Liegenschaften.Bezeichnung,
  tbl_100_10_Liegenschaften.Kennummer_Straße,
  tbl_100_10_Liegenschaften.Haus_Nr,
  tbl_100_10_Liegenschaften.ID_Gebäude,
  tbl_100_20_Gebäudeteile.Gebäudeteil,
  B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil,
  B_Sanierungsstau_Werterhöhung.Herstellkosten,
  tbl_100_20_Gebäudeteile.Neubauwert_ab_2000,
  tbl_100_20_Gebäudeteile.Baujahr_real,
  B_Sanierungsstau_Werterhöhung.DS_Typ,
  IIf(
    Val(
      Nz([Neubauwert_ab_2000])
    )= 0,
    [Herstellkosten],
    [Neubauwert_ab_2000]
  ) AS HK_fuer_WBW
FROM
  tbl_100_10_Liegenschaften
  INNER JOIN (
    tbl_100_20_Gebäudeteile
    INNER JOIN B_Sanierungsstau_Werterhöhung ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        B_Sanierungsstau_Werterhöhung.DS_Typ
      )= 1
    )
  );
