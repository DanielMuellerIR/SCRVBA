SELECT
  DISTINCTROW [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " -> " & [tbl_100_20_Gebäudeteile].[Gebäudeteil] AS Objekt,
  "0 SACHANL" AS [Anlagenklassen-Code],
  60 AS Bereich,
  M_Kostenstellen.Kostenstelle AS [Kostenstellen-Code],
  "6011130300" AS [Kostenträger-Code],
  [Zuordnung Gebäudebestand zu Bilanz].Code AS [Sachgruppen-Code],
  "Anteil KSt " & [Anteil] * 100 & "%" AS [Erläuterungen 1],
  "bebautes Grundstück" AS [Erläuterungen 2],
  "" AS [Anschaffungs-Startdatum],
  "" AS Nutzungsdauer_,
  [B_Ergebnisse_Tabelle].[Grundstückswert] * [anteil] AS [Wert / Preis],
  [B_Ergebnisse_Tabelle].[Grundstückswert] * [anteil] AS [aktueller Buchwert],
  0 AS [bisherige AfA],
  "01.01." & Year(
    Now()
  ) AS [Datum des Buchwertes],
  tbl_100_20_Gebäudeteile.BGF
FROM
  (
    tbl_100_10_Liegenschaften
    LEFT JOIN M_Strassenverzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
  )
  RIGHT JOIN (
    (
      (
        (
          (
            B_Ergebnisse_Tabelle
            LEFT JOIN B_Abfrage_alle_Ergebnisse ON B_Ergebnisse_Tabelle.ID_Gebäudeteil = B_Abfrage_alle_Ergebnisse.ID_Gebäudeteil
          )
          LEFT JOIN Zuordnung_Abschreibung ON B_Ergebnisse_Tabelle.ID_Gebäudeteil = Zuordnung_Abschreibung.ID_Gebäudeteil
        )
        LEFT JOIN tbl_100_20_Gebäudeteile ON B_Ergebnisse_Tabelle.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
      )
      LEFT JOIN [Zuordnung Gebäudebestand zu Bilanz] ON tbl_100_20_Gebäudeteile.[Zuordnung Bilanz] = [Zuordnung Gebäudebestand zu Bilanz].ID
    )
    LEFT JOIN (
      M_Kostenstellen
      RIGHT JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
GROUP BY
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " -> " & [tbl_100_20_Gebäudeteile].[Gebäudeteil],
  "0 SACHANL",
  60,
  M_Kostenstellen.Kostenstelle,
  "6011130300",
  [Zuordnung Gebäudebestand zu Bilanz].Code,
  "Anteil KSt " & [Anteil] * 100 & "%",
  "bebautes Grundstück",
  "",
  [B_Ergebnisse_Tabelle].[Grundstückswert] * [anteil],
  0,
  "01.01." & Year(
    Now()
  ),
  tbl_100_20_Gebäudeteile.BGF,
  B_Ergebnisse_Tabelle.Baujahr_real,
  [B_Ergebnisse_Tabelle].[Grundstückswert] * [anteil],
  "01.01." & [tbl_100_20_Gebäudeteile].[Baujahr_real],
  [Zuordnung Gebäudebestand zu Bilanz].Grundstück
HAVING
  (
    (
      (
        [B_Ergebnisse_Tabelle].[Grundstückswert] * [anteil]
      ) Is Not Null
    )
    AND (
      (
        [Zuordnung Gebäudebestand zu Bilanz].Grundstück
      )= Yes
    )
  );
