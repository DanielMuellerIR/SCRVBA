SELECT
  Maßnahmen.ID,
  [Geplante Finanzierung].Kalenderjahr,
  [Geplante Finanzierung].Betrag AS Voraus_Kosten,
  IIf(
    [Finanzherkunft] <> "Bauunterhaltung"
    Or [Sammelbuchungsstelle] = True,
    [Betrag], 0
  ) AS Tats_Voraus_Kosten,
  [Geplante Finanzierung].Sammelbuchungsstelle,
  Finanzherkunft.Finanzherkunft,
  IIf(
    IsDate([Dat_Abschluss_DB]),
    "Z: Abgeschlossene Maßnahmen",
    "A: Noch offene Maßnahmen"
  ) AS Sort,
  [Teile der Maßnahmen].Umsetzungsjahr
FROM
  (
    Maßnahmen
    INNER JOIN [Teile der Maßnahmen] ON (
      Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]
    )
    AND (
      Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]
    )
  )
  INNER JOIN (
    Finanzherkunft
    INNER JOIN [Geplante Finanzierung] ON Finanzherkunft.ID_Fin_Her = [Geplante Finanzierung].ID_Fin_Her
  ) ON Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme
GROUP BY
  Maßnahmen.ID,
  [Geplante Finanzierung].Kalenderjahr,
  [Geplante Finanzierung].Betrag,
  IIf(
    [Finanzherkunft] <> "Bauunterhaltung"
    Or [Sammelbuchungsstelle] = True,
    [Betrag], 0
  ),
  [Geplante Finanzierung].Sammelbuchungsstelle,
  Finanzherkunft.Finanzherkunft,
  IIf(
    IsDate([Dat_Abschluss_DB]),
    "Z: Abgeschlossene Maßnahmen",
    "A: Noch offene Maßnahmen"
  ),
  [Teile der Maßnahmen].Umsetzungsjahr
HAVING
  (
    (
      (
        [Geplante Finanzierung].Kalenderjahr
      )= F_Variable("lng_Kalk_Jahr")
    )
    AND (
      (
        [Teile der Maßnahmen].Umsetzungsjahr
      )= F_Variable("lng_Kalk_JAhr")
    )
  );
