SELECT
  B_Gebäudebestand.Gebäudeteil,
  B_Gebäudebestand.[ID aus bebaute Grundstücke],
  B_Gebäudebestand.Bezeichnung,
  B_Gebäudebestand_1.Gebäudeteil,
  B_Gebäudebestand_1.Kennummer
FROM
  B_Gebäudebestand
  INNER JOIN B_Gebäudebestand AS B_Gebäudebestand_1 ON B_Gebäudebestand.Bezeichnung = B_Gebäudebestand_1.Bezeichnung
WHERE
  (
    (
      (
        B_Gebäudebestand.[ID aus bebaute Grundstücke]
      ) Is Not Null
    )
    And (
      (B_Gebäudebestand_1.Kennummer)<> B_Gebäudebestand.Kennummer
    )
  );
