SELECT
  NK_entstanden_ohne_Abschläge_Zahlungen.ID,
  NK_entstanden_ohne_Abschläge_Zahlungen.[Summe von Zahlungen],
  NK_enstanden_ohne_Abschläge_Vorauszahlungen.Vorauszahlung,
  NK_entstanden_ohne_Abschläge_Zahlungen.Haushaltsjahr,
  M_Bereiche.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  M_Objekte.Bezeichnung,
  M_Objekte.ID,
  "keine Vorauszahlungen" AS Kostenart,
  0 AS Betrag,
  "C" AS sort,
  M_Objekte.Bruttogrundfläche,
  [formulare]![Filter für Nebenkostenabrechnung]![Datei] AS [Text]
FROM
  (
    (
      NK_entstanden_ohne_Abschläge_Zahlungen
      LEFT JOIN NK_enstanden_ohne_Abschläge_Vorauszahlungen ON (
        NK_entstanden_ohne_Abschläge_Zahlungen.Haushaltsjahr = NK_enstanden_ohne_Abschläge_Vorauszahlungen.Planjahr
      )
      AND (
        NK_entstanden_ohne_Abschläge_Zahlungen.ID = NK_enstanden_ohne_Abschläge_Vorauszahlungen.ID
      )
    )
    LEFT JOIN M_Objekte ON NK_entstanden_ohne_Abschläge_Zahlungen.ID = M_Objekte.ID
  )
  LEFT JOIN M_Bereiche ON M_Objekte.[Kennummer aus Bereiche] = M_Bereiche.Kennummer
WHERE
  (
    (
      (
        NK_enstanden_ohne_Abschläge_Vorauszahlungen.Vorauszahlung
      ) Is Null
    )
    AND (
      (
        NK_entstanden_ohne_Abschläge_Zahlungen.Haushaltsjahr
      )= [formulare]![Filter für Nebenkostenabrechnung]![JahrZahlung]
    )
  );
