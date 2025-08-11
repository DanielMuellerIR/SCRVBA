SELECT
  DISTINCTROW M_Objekte.Bezeichnung,
  "doppelt zurgeordnet" AS Fehler
FROM
  [V_Vergleichsobjekte_Zuordnung_M-Objekte]
  LEFT JOIN M_Objekte ON [V_Vergleichsobjekte_Zuordnung_M-Objekte].[ID aus M_Objekte] = M_Objekte.ID
GROUP BY
  M_Objekte.Bezeichnung,
  "doppelt zurgeordnet",
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
