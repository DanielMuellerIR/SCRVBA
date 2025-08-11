SELECT
  B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil,
  B_Sanierungsstau_Werterhöhung.Herstellkosten,
  B_Sanierungsstau_Werterhöhung.DS_Typ
FROM
  B_Sanierungsstau_Werterhöhung
WHERE
  (
    (
      (
        B_Sanierungsstau_Werterhöhung.DS_Typ
      )= 1
    )
  );
