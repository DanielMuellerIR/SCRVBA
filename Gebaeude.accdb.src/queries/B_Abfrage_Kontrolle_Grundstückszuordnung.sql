SELECT
  B_bebaute_Grundstücke.Kennummer,
  B_Gebäudebestand.Kennummer,
  B_Gebäudebestand.Straße,
  B_Gebäudebestand.Gebäudeteil,
  B_Gebäudebestand_1.Kennummer
FROM
  (
    B_bebaute_Grundstücke
    INNER JOIN B_Gebäudebestand ON B_bebaute_Grundstücke.Kennummer = B_Gebäudebestand.[ID aus bebaute Grundstücke]
  )
  INNER JOIN B_Gebäudebestand AS B_Gebäudebestand_1 ON B_bebaute_Grundstücke.Kennummer = B_Gebäudebestand_1.[ID aus bebaute Grundstücke]
GROUP BY
  B_bebaute_Grundstücke.Kennummer,
  B_Gebäudebestand.Kennummer,
  B_Gebäudebestand.Straße,
  B_Gebäudebestand.Gebäudeteil,
  B_Gebäudebestand_1.Kennummer
HAVING
  (
    (
      (B_Gebäudebestand_1.Kennummer)<> [B_Gebäudebestand].[Kennummer]
    )
  );
