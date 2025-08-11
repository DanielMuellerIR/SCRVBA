SELECT
  Maßnahmen.ID,
  [Bezeichung] & ",  " & [Straße Hausnummer] AS Gebäude,
  Sachbearbeiter.Name,
  Maßnahmen.Maßnahme,
  Maßnahmen.[voraussichtliche Kosten gesamt],
  [Ansatz] + [HHR] + [VE] AS Summe_finanzier,
  Haushaltsdaten.[ID aus Maßnahmen]
FROM
  Sachbearbeiter
  RIGHT JOIN (
    Gebäudeliste
    RIGHT JOIN (
      Haushaltsdaten
      RIGHT JOIN Maßnahmen ON Haushaltsdaten.[ID aus Maßnahmen] = Maßnahmen.ID
    ) ON Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste]
  ) ON Sachbearbeiter.ID = Gebäudeliste.[ID aus Sachbearbeiter]
WHERE
  (
    (
      (
        Haushaltsdaten.[ID aus Maßnahmen]
      ) Is Null
    )
  )
ORDER BY
  [Bezeichung] & ",  " & [Straße Hausnummer];
UNION
SELECT
  [Abfrage teilfinanziert 1].ID,
  [Abfrage teilfinanziert 1].Gebäude,
  [Abfrage teilfinanziert 1].Name,
  [Abfrage teilfinanziert 1].Maßnahme,
  [Abfrage teilfinanziert 1].[voraussichtliche Kosten gesamt],
  Sum(
    [Abfrage teilfinanziert 1].zufVfg
  ) AS Summe_finanziert,
  [Abfrage teilfinanziert 1].[ID aus Maßnahmen]
FROM
  [Abfrage teilfinanziert 1]
GROUP BY
  [Abfrage teilfinanziert 1].ID,
  [Abfrage teilfinanziert 1].Gebäude,
  [Abfrage teilfinanziert 1].Name,
  [Abfrage teilfinanziert 1].Maßnahme,
  [Abfrage teilfinanziert 1].[voraussichtliche Kosten gesamt],
  [Abfrage teilfinanziert 1].[ID aus Maßnahmen]
HAVING
  (
    (
      (
        Sum(
          [Abfrage teilfinanziert 1].zufVfg
        )
      )< [voraussichtliche Kosten gesamt]
    )
  );
