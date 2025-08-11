SELECT
  Plausibilitätsprüfung_Buchungen_2a.Emfpänger,
  Plausibilitätsprüfung_Buchungen_2a.angelegt,
  Plausibilitätsprüfung_Buchungen_2a.Verwendungszweck,
  Plausibilitätsprüfung_Buchungen_2a.Anordnungsbetrag,
  Plausibilitätsprüfung_Buchungen_2a.Einzelbetrag,
  Plausibilitätsprüfung_Buchungen_2b.[Kennummer aus Kostenstellenverzeichnis],
  "Buchung auf nicht verwaltetes Objekt" AS [Text]
FROM
  Plausibilitätsprüfung_Buchungen_2a
  LEFT JOIN Plausibilitätsprüfung_Buchungen_2b ON Plausibilitätsprüfung_Buchungen_2a.[ID aus Kostenstellen] = Plausibilitätsprüfung_Buchungen_2b.[Kennummer aus Kostenstellenverzeichnis]
WHERE
  (
    (
      (
        Plausibilitätsprüfung_Buchungen_2b.[Kennummer aus Kostenstellenverzeichnis]
      ) Is Null
    )
  );
