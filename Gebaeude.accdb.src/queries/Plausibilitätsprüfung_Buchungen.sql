SELECT
  Plausibilitätsprüfung_Buchungen_2a.Emfpänger,
  Plausibilitätsprüfung_Buchungen_2a.angelegt,
  Plausibilitätsprüfung_Buchungen_2a.Verwendungszweck,
  Plausibilitätsprüfung_Buchungen_2a.Anordnungsbetrag,
  Plausibilitätsprüfung_Buchungen_2a.Einzelbetrag,
  Plausibilitätsprüfung_Buchungen_2b.[Kennummer],
  "Buchung auf nicht verwaltetes Objekt / keine Kostenstelle im Buchungssatz (korrupter Satz)" AS [Text]
FROM
  Plausibilitätsprüfung_Buchungen_2a
  LEFT JOIN Plausibilitätsprüfung_Buchungen_2b ON Plausibilitätsprüfung_Buchungen_2a.[ID aus Kostenstellen] = Plausibilitätsprüfung_Buchungen_2b.[Kennummer]
WHERE
  (
    (
      (
        Plausibilitätsprüfung_Buchungen_2b.[Kennummer]
      ) Is Null
    )
  )
UNION
SELECT
  [Anrede] & ", " & [Name, Vorname] AS Emfpänger,
  A_Buchungen.angelegt,
  A_Buchungen.Verwendungszweck,
  A_Buchungen.Betrag AS Anordnungsbetra,
  Sum(
    A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
  ) AS [Betrag aufgeteilt],
  A_Buchungen.Betrag - Sum(
    A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
  ) AS Differenz,
  "Gesamtbetrag falsch auftgeteilt" AS [Text]
FROM
  (
    A_Buchungen
    LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
  )
  LEFT JOIN A_Buchungen_Aufteilung_auf_Kostenstellen ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]
GROUP BY
  [Anrede] & ", " & [Name, Vorname],
  A_Buchungen.angelegt,
  A_Buchungen.Verwendungszweck,
  A_Buchungen.Betrag,
  "Gesamtbetrag falsch aufgeteilt",
  A_Buchungen.ID,
  A_Buchungen.Haushaltsjahr
HAVING
  (
    (
      (A_Buchungen.Haushaltsjahr)= Year(
        Now()
      )
    )
    AND (
      (
        [A_Buchungen].[Betrag] - Sum(
          [A_Buchungen_Aufteilung_auf_Kostenstellen].[Betrag]
        )
      )<-0.009
    )
  )
  OR (
    (
      (A_Buchungen.Haushaltsjahr)= Year(
        Now()
      )
    )
    AND (
      (
        [A_Buchungen].[Betrag] - Sum(
          [A_Buchungen_Aufteilung_auf_Kostenstellen].[Betrag]
        )
      )> 0.009
    )
  )
UNION
SELECT
  A_Buchungen.[ID Empfänger],
  A_Buchungen.angelegt,
  A_Buchungen.Verwendungszweck,
  A_Buchungen.Betrag,
  Null AS AO_Betrag,
  Null AS aufgeteilt,
  "Kein Empfänger angegeben!" AS [Text]
FROM
  A_Buchungen
  LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
WHERE
  (
    (
      (A_Buchungen.[ID Empfänger]) Is Null
    )
  )
UNION
SELECT
  A_Buchungen.[ID Nebenkostenart],
  A_Buchungen.angelegt,
  A_Buchungen.Verwendungszweck,
  A_Buchungen.Betrag,
  Null AS AO_Betrag,
  Null AS aufgeteilt,
  "Keine Kostenart angegeben!" AS [Text]
FROM
  A_Buchungen
  LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
WHERE
  (
    (
      (
        A_Buchungen.[ID Nebenkostenart]
      ) Is Null
    )
  )
UNION
SELECT
  A_Empfänger.[Name, Vorname],
  A_Buchungen.angelegt,
  A_Buchungen.Verwendungszweck,
  A_Buchungen.Betrag,
  A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag,
  M_Kostenstellen.Kostenstelle,
  "Kein Betrag oder unnötiger Betrag aufgeteilt!" AS [Text]
FROM
  (
    (
      A_Buchungen_Aufteilung_auf_Kostenstellen
      LEFT JOIN A_Buchungen ON A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen] = A_Buchungen.ID
    )
    LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
  )
  LEFT JOIN M_Kostenstellen ON A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen] = M_Kostenstellen.Kennummer
WHERE
  (
    (
      (
        A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
      ) Is Null
      Or (
        A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
      )= 0
    )
  )
UNION
SELECT
  A_Buchungen.[ID Sachbearbeiter],
  A_Buchungen.angelegt,
  A_Buchungen.Verwendungszweck,
  A_Buchungen.Betrag,
  Null AS AO_Betrag,
  Null AS aufgeteilt,
  "Kein Sachberarbeiter angegeben!" AS [Text]
FROM
  A_Buchungen
  LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
WHERE
  (
    (
      (
        A_Buchungen.[ID Sachbearbeiter]
      ) Is Null
    )
  )
UNION
SELECT
  A_Buchungen.[ID Fälligkeiten],
  A_Buchungen.angelegt,
  A_Buchungen.Verwendungszweck,
  A_Buchungen.Betrag,
  Null AS AO_Betrag,
  Null AS aufgeteilt,
  "Kein Zahlungszyklus angegeben!" AS [Text]
FROM
  A_Buchungen
  LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
WHERE
  (
    (
      (A_Buchungen.[ID Fälligkeiten]) Is Null
    )
  )
UNION
SELECT
  DISTINCTROW A_Empfänger.[Name, Vorname],
  A_Buchungen.angelegt,
  A_Buchungen.Verwendungszweck,
  A_Buchungen.Betrag,
  A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag,
  M_Kostenstellen.Kostenstelle,
  "Kostenst. durfte am " & Format([angelegt], "dd/mm/yyyy")& IIf(
    [angelegt] < [Buch_Zeitr_Start], " noch nicht ",
    " nicht mehr "
  )& "bebucht werden." AS [Text]
FROM
  (
    (
      A_Buchungen_Aufteilung_auf_Kostenstellen
      INNER JOIN A_Buchungen ON A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen] = A_Buchungen.ID
    )
    INNER JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
  )
  INNER JOIN (
    M_Kostenstellen
    INNER JOIN Plausibilitätsprüfung_Zeitsp_Kostellen ON M_Kostenstellen.Kennummer = Plausibilitätsprüfung_Zeitsp_Kostellen.Kennummer
  ) ON A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen] = M_Kostenstellen.Kennummer
WHERE
  (
    (
      (
        [angelegt] < [Buch_Zeitr_Start]
        Or [angelegt] > [Buch_Zeitr_Ende]
      )= True
    )
  );
