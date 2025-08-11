SELECT
  Maßnahmen.ID,
  Haushaltsdaten.Jahr,
  Sum(
    CCur([HHR])+ CCur([Ansatz])
  ) AS Betrag
FROM
  Finanzherkunft
  INNER JOIN (
    Maßnahmen
    INNER JOIN Haushaltsdaten ON Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]
  ) ON Finanzherkunft.ID_Fin_Her = Haushaltsdaten.ID_Fin_Her
WHERE
  (
    (
      (Finanzherkunft.Finanzherkunft)<> "Bauunterhaltung"
    )
  )
GROUP BY
  Maßnahmen.ID,
  Haushaltsdaten.Jahr
HAVING
  (
    (
      (Haushaltsdaten.Jahr)= F_Variable("lng_Kalk_JAhr")
    )
  );
