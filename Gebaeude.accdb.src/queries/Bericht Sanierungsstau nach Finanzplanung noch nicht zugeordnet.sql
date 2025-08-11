SELECT
  [Bericht Sanierungsstau nach Finanzplanung].[ID aus Maßnahmen],
  [Bericht Sanierungsstau nach Finanzplanung].Maßnahme,
  [Bericht Sanierungsstau nach Finanzplanung].ID,
  [Bericht Sanierungsstau nach Finanzplanung].Haus,
  [Bericht Sanierungsstau nach Finanzplanung].Finanzierung,
  [Bericht Sanierungsstau nach Finanzplanung].[voraussichtliche Kosten gesamt],
  [voraussichtliche Kosten gesamt] - Sum([Betrag]) AS Nnzg
FROM
  [Bericht Sanierungsstau nach Finanzplanung]
WHERE
  (
    (
      (
        [Bericht Sanierungsstau nach Finanzplanung].Gebäude
      ) Like [Formulare]![Filter für Sanierungsstau]![Gebäude]
    )
    AND (
      (
        [Bericht Sanierungsstau nach Finanzplanung].Maßnahme
      ) Like [Formulare]![Filter für Sanierungsstau]![Massnahme]
    )
  )
GROUP BY
  [Bericht Sanierungsstau nach Finanzplanung].[ID aus Maßnahmen],
  [Bericht Sanierungsstau nach Finanzplanung].Maßnahme,
  [Bericht Sanierungsstau nach Finanzplanung].ID,
  [Bericht Sanierungsstau nach Finanzplanung].Haus,
  [Bericht Sanierungsstau nach Finanzplanung].Finanzierung,
  [Bericht Sanierungsstau nach Finanzplanung].[voraussichtliche Kosten gesamt]
HAVING
  (
    (
      (
        [voraussichtliche Kosten gesamt] - Sum([Betrag])
      )> 0
    )
  );
