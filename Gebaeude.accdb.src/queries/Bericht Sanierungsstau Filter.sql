SELECT
  [Bericht Sanierungsstau].ID,
  [Bericht Sanierungsstau].Gebäude,
  [Bericht Sanierungsstau].Name,
  [Bericht Sanierungsstau].Maßnahme,
  [Bericht Sanierungsstau].[voraussichtliche Kosten gesamt],
  [Bericht Sanierungsstau].Summe_finanzier,
  [Bericht Sanierungsstau].[ID aus Maßnahmen]
FROM
  [Bericht Sanierungsstau]
WHERE
  (
    (
      (
        [Bericht Sanierungsstau].Gebäude
      ) Like [Formulare]![Filter für Sanierungsstau]![Gebäude]
    )
    AND (
      (
        [Bericht Sanierungsstau].Maßnahme
      ) Like [Formulare]![Filter für Sanierungsstau]![Massnahme]
    )
  );
