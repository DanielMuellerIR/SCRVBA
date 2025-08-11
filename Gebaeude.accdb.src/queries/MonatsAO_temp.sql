SELECT
  A_Buchungen.ID,
  A_Buchungen.angelegt
FROM
  A_Buchungen
WHERE
  (
    (
      (A_Buchungen.angelegt) Like [formulare]![Monatsanordnung]![angelegt_neu]
    )
  );
