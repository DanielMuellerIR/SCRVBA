SELECT
  Energieverbräuche.Jahr,
  M_Objekte.Bezeichnung,
  [Verzeichnis Energiearten].Energieart,
  IIf(
    [monatlicher Verbrauch] = 0, Yes, No
  ) AS Jahresverbrauch,
  IIf(
    [monatlicher Verbrauch] =-1, Yes,
    No
  ) AS Monatsverbrauch,
  [Verzeichnis Energiearten].Einheit,
  M_Bereiche.BereichNr,
  [M_Strassenverzeichnis].[Name] & ", " & [Bezeichnung] AS Gebäude,
  Sum(Energieverbräuche.Menge) AS [Summe von Menge]
FROM
  (
    (
      (
        Energieverbräuche
        LEFT JOIN M_Objekte ON Energieverbräuche.[ID aus Objekte] = M_Objekte.ID
      )
      LEFT JOIN [Verzeichnis Energiearten] ON Energieverbräuche.Energie = [Verzeichnis Energiearten].ID
    )
    LEFT JOIN M_Bereiche ON M_Objekte.[Kennummer aus Bereiche] = M_Bereiche.Kennummer
  )
  LEFT JOIN M_Strassenverzeichnis ON M_Objekte.[Kennummer aus Straßenverzeichnis] = M_Strassenverzeichnis.Kennummer
GROUP BY
  Energieverbräuche.Jahr,
  M_Objekte.Bezeichnung,
  [Verzeichnis Energiearten].Energieart,
  IIf(
    [monatlicher Verbrauch] = 0, Yes, No
  ),
  IIf(
    [monatlicher Verbrauch] =-1, Yes,
    No
  ),
  [Verzeichnis Energiearten].Einheit,
  M_Bereiche.BereichNr,
  [M_Strassenverzeichnis].[Name] & ", " & [Bezeichnung]
HAVING
  (
    (
      (Energieverbräuche.Jahr) Like [Formulare]![Filter für Bericht Energieverbrauch]![Haushaltsjahr]
    )
    AND (
      (
        [Verzeichnis Energiearten].Energieart
      ) Like [Formulare]![Filter für Bericht Energieverbrauch]![Energieart]
    )
    AND (
      (M_Bereiche.BereichNr) Like [Formulare]![Filter für Bericht Energieverbrauch]![Bereich]
    )
    AND (
      (
        [M_Strassenverzeichnis].[Name] & ", " & [Bezeichnung]
      ) Like [Formulare]![Filter für Bericht Energieverbrauch]![Gebäude]
    )
  )
  OR (
    (
      (Energieverbräuche.Jahr) Like [Formulare]![Filter für Bericht Energieverbrauch]![Haushaltsjahr]
    )
    AND (
      (
        [Verzeichnis Energiearten].Energieart
      ) Like [Formulare]![Filter für Bericht Energieverbrauch]![Energieart]
    )
    AND (
      (M_Bereiche.BereichNr) Is Not Null
    )
    AND (
      (
        [M_Strassenverzeichnis].[Name] & ", " & [Bezeichnung]
      ) Like [Formulare]![Filter für Bericht Energieverbrauch]![Gebäude]
    )
  );
