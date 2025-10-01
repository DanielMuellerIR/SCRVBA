SELECT
  a.ID,
  a.ID_Massnahme AS ID_Massn,
  a.Bezeichnung AS Anlage,
  a.AnlagenNr,
  a.BeendetB20,
  L.Bezeichnung AS Liegenschaft,
  s.Name,
  g.Haus_Nr,
  g.Gebäudeteil,
  m.Maßnahme,
  L.ID_Gebäude,
  g.ID_Gebäudeteil,
  s.Name & " " & g.Haus_Nr & " " & g.Gebäudeteil AS Haus,
  IIf(
    IsNull(a.BeendetB20),
    "Offen",
    "Erledigt " & CStr (
      Year(a.BeendetB20)
    )
  ) AS Kal_Jahr
FROM
  (
    (
      (
        Maßnahmen AS m
        LEFT JOIN tbl_100_20_Gebäudeteile AS g ON m.[ID_Gebäudeteil] = g.[ID_Gebäudeteil]
      )
      LEFT JOIN tbl_100_10_Liegenschaften AS L ON g.[ID_Gebäude] = L.[ID_Gebäude]
    )
    LEFT JOIN M_Strassenverzeichnis AS s ON g.Kennummer_Straße = s.Kennummer
  )
  INNER JOIN Anlagen AS a ON m.ID = a.ID_Massnahme
WHERE
  (
    (
      (L.ID_Gebäude) BETWEEN F_Variable ("lng_ID_Geb_Min")
      AND F_Variable ("lng_ID_Geb_Max")
    )
    AND (
      (g.ID_Gebäudeteil) BETWEEN F_Variable ("lng_ID_Geb_Teil_Min")
      AND F_Variable ("lng_ID_Geb_Teil_Max")
    )
  );
