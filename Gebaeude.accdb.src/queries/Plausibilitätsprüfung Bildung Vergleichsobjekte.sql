SELECT
  M_Objekte.Bezeichnung,
  "Keinem Vergleichsobjekt zugeordnet" AS Fehler,
  [V_Vergleichsobjekte_Zuordnung_M-Objekte].Anteil
FROM
  M_Objekte
  LEFT JOIN [V_Vergleichsobjekte_Zuordnung_M-Objekte] ON M_Objekte.ID = [V_Vergleichsobjekte_Zuordnung_M-Objekte].[ID aus M_Objekte]
WHERE
  (
    (
      (
        [V_Vergleichsobjekte_Zuordnung_M-Objekte].[ID aus M_Objekte]
      ) Is Null
    )
  )
ORDER BY
  M_Objekte.[Kennummer aus Straßenverzeichnis],
  M_Objekte.Hausnummer
UNION
SELECT
  DISTINCTROW M_Objekte.Bezeichnung,
  "doppelt zugeordnet, insges." AS Fehler,
  Sum(
    [V_Vergleichsobjekte_Zuordnung_M-Objekte].Anteil
  ) AS [Summe von Anteil]
FROM
  [V_Vergleichsobjekte_Zuordnung_M-Objekte]
  LEFT JOIN M_Objekte ON [V_Vergleichsobjekte_Zuordnung_M-Objekte].[ID aus M_Objekte] = M_Objekte.ID
GROUP BY
  M_Objekte.Bezeichnung,
  "doppelt zurgeordnet, insges.",
  [V_Vergleichsobjekte_Zuordnung_M-Objekte].[ID aus M_Objekte]
HAVING
  (
    (
      (
        Count(
          [V_Vergleichsobjekte_Zuordnung_M-Objekte].[ID aus M_Objekte]
        )
      )> 1
    )
  );
