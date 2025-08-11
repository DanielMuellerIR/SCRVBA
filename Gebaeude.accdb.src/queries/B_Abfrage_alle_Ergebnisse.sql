SELECT
  B_Ergebnisse_A.ID_Gebäudeteil,
  B_Ergebnisse_A.Bezeichnung,
  B_Ergebnisse_A.Straße,
  B_Ergebnisse_A.Gebäudeteil,
  B_Ergebnisse_A.[Typ aus NHK-Typen],
  B_Ergebnisse_A.BGF,
  B_Ergebnisse_A.BRI,
  B_Ergebnisse_A.Baujahr_real,
  B_Ergebnisse_A.Baujahr_mod,
  B_Ergebnisse_A.[gewöhnliche Nutzungsdauer],
  B_Ergebnisse_A.[geschätze Nutzungsdauer],
  B_Ergebnisse_A.Ausstattung,
  B_Ergebnisse_A.[Wert von],
  B_Ergebnisse_A.[Wert bis],
  B_Ergebnisse_A.[Euro je BGF],
  B_Ergebnisse_A.[Wert NHK x BGF],
  B_Ergebnisse_A.Index,
  B_Ergebnisse_A.[hochgerechneter Wert],
  B_Ergebnisse_A.Baunebenkosten,
  B_Ergebnisse_A.[Baunebenkosten €],
  B_Ergebnisse_A.Herstellungskosten1,
  B_Ergebnisse_A.Neubauwert_ab_2000,
  B_Ergebnisse_A.[Index 2000],
  B_Ergebnisse_A.Herstellungskosten2,
  B_Ergebnisse_C.Außenanlagen,
  B_Ergebnisse_C.Mehrwert_,
  B_Ergebnisse_C.Herstellungskosten,
  B_Ergebnisse_G.[Fassade (11%)],
  B_Ergebnisse_G.[Fenster (14%)],
  B_Ergebnisse_G.[Dächer (15%)],
  B_Ergebnisse_G.[Sanitär (13%)],
  B_Ergebnisse_G.[Bodenbeläge (8 %)],
  B_Ergebnisse_G.[Innenwände Sanitärbereich (6%)],
  B_Ergebnisse_G.[Innentüren (11%)],
  B_Ergebnisse_G.[Heizung (15%)],
  B_Ergebnisse_G.[Elektroinstallation (7%)],
  B_Ergebnisse_D.Nutzungsdauer,
  B_Ergebnisse_A.[berücksichtigtes Baujahr],
  B_Ergebnisse_D.[Abschreibung Jahre],
  B_Ergebnisse_D.[Abschreibung Jahr],
  B_Ergebnisse_D.[kumulierte Abschreibung],
  B_Ergebnisse_F.[Summe von voraussichtliche Kosten gesamt] AS Sanierungsstau,
  B_Ergebnisse_E.Flur,
  B_Ergebnisse_E.Flurstücke,
  B_Ergebnisse_E.Fläche,
  B_Ergebnisse_E.Bodenrichtwert,
  B_Ergebnisse_E.Grundstückswert,
  [B_Ergebnisse_C].[Herstellungskosten] - [kumulierte Abschreibung] - IIf(
    IsNull(
      [Summe von voraussichtliche Kosten gesamt]
    ),
    0,
    [Summe von voraussichtliche Kosten gesamt]
  ) AS [ermittelter Wert],
  B_Ergebnisse_A.[Bewertung abgeschlossen],
  B_Ergebnisse_A.Versicherungswert
FROM
  (
    (
      (
        (
          (
            B_Ergebnisse_A
            LEFT JOIN B_Ergebnisse_b ON B_Ergebnisse_A.ID_Gebäudeteil = B_Ergebnisse_b.ID_Gebäudeteil
          )
          LEFT JOIN B_Ergebnisse_E ON B_Ergebnisse_A.ID_Gebäudeteil = B_Ergebnisse_E.ID_Gebäudeteil
        )
        LEFT JOIN B_Ergebnisse_G ON B_Ergebnisse_A.ID_Gebäudeteil = B_Ergebnisse_G.ID_Gebäudeteil
      )
      LEFT JOIN B_Ergebnisse_C ON B_Ergebnisse_A.ID_Gebäudeteil = B_Ergebnisse_C.ID_Gebäudeteil
    )
    LEFT JOIN B_Ergebnisse_F ON B_Ergebnisse_A.ID_Gebäudeteil = B_Ergebnisse_F.ID_Gebäudeteil
  )
  LEFT JOIN B_Ergebnisse_D ON B_Ergebnisse_A.ID_Gebäudeteil = B_Ergebnisse_D.ID_Gebäudeteil;
