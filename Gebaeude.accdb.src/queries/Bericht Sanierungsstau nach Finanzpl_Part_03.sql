SELECT
  "N.N." AS Kalenderjahr,
  tbl_100_10_Liegenschaften.ID_Gebäude,
  [M_Strassenverzeichnis_1].[Name] & " " & [tbl_100_10_Liegenschaften].[Haus_Nr] & ": " & [Bezeichnung] AS Liegenschaft,
  tbl_100_20_Gebäudeteile.Gebäudeteil AS Haus,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  Maßnahmen.ID AS ID_Massn,
  Sachbearbeiter.Name,
  [Maßnahme] & Chr (13)& Chr (10)& "Vorauss. Kosten: " & Format(
    [voraussichtliche Kosten gesamt],
    "#,##0 €"
  )& "; Summe tats./gepl.: " & Format([Summe von Betrag], "#,##0 €")& "; frei s. letzte Spalte" AS MN,
  Max([geplante Finanzierung].ID) AS ID_Finanz,
  [voraussichtliche Kosten gesamt] - [Summe von Betrag] AS Fehlbetra,
  False AS Erl,
  "noch nicht festgel." AS Finanzquelle,
  "noch nicht festgel." AS Finanzherkunft,
  Maßnahmen.[erledigt im Jahr],
  [voraussichtliche Kosten gesamt] - [Summe von Betrag] AS Summevontats_Kosten_Infoma
FROM
  (
    Sachbearbeiter
    RIGHT JOIN (
      tbl_100_10_Liegenschaften
      LEFT JOIN M_Strassenverzeichnis AS M_Strassenverzeichnis_1 ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis_1.Kennummer
    ) ON Sachbearbeiter.ID = tbl_100_10_Liegenschaften.ID_SB
  )
  INNER JOIN (
    (
      tbl_100_20_Gebäudeteile
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    )
    INNER JOIN (
      (
        Maßnahmen
        LEFT JOIN Bereitgestellt ON Maßnahmen.ID = Bereitgestellt.[ID_Massnahme]
      )
      LEFT JOIN [geplante Finanzierung] ON Maßnahmen.ID = [geplante Finanzierung].[ID_Massnahme]
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
GROUP BY
  "N.N.",
  tbl_100_10_Liegenschaften.ID_Gebäude,
  [M_Strassenverzeichnis_1].[Name] & " " & [tbl_100_10_Liegenschaften].[Haus_Nr] & ": " & [Bezeichnung],
  tbl_100_20_Gebäudeteile.Gebäudeteil,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  Maßnahmen.ID,
  Sachbearbeiter.Name,
  [Maßnahme] & Chr (13)& Chr (10)& "Vorauss. Kosten: " & Format(
    [voraussichtliche Kosten gesamt],
    "#,##0 €"
  )& "; Summe tats./gepl.: " & Format([Summe von Betrag], "#,##0 €")& "; frei s. letzte Spalte",
  [voraussichtliche Kosten gesamt] - [Summe von Betrag],
  False,
  "noch nicht festgel.",
  "noch nicht festgel.",
  Maßnahmen.[erledigt im Jahr],
  [voraussichtliche Kosten gesamt] - [Summe von Betrag],
  [geplante Finanzierung].Sammelbuchungsstelle
HAVING
  (
    (
      (
        [voraussichtliche Kosten gesamt] - [Summe von Betrag]
      )<> 0
    )
    AND (
      (
        [geplante Finanzierung].Sammelbuchungsstelle
      )= False
    )
  )
ORDER BY
  Maßnahmen.ID;
