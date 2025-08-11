SELECT
  M_Fremdmieten.Haushaltsjahr AS Planjahr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil] AS Objekt,
  tbl_100_20_Gebäudeteile.ID_Gebäude,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  "Fremdmieten" AS Kostenart,
  [M_Fremdmieten].[Betrag] * [Anteile] AS Betrag,
  "B" AS sort
FROM
  tbl_100_10_Liegenschaften
  RIGHT JOIN (
    M_Betriebe
    RIGHT JOIN (
      (
        (
          M_Fremdmieten
          LEFT JOIN (
            tbl_100_20_Gebäudeteile
            LEFT JOIN M_Bereiche ON tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche] = M_Bereiche.Kennummer
          ) ON M_Fremdmieten.[ID_Gebäudeteil] = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
        )
        LEFT JOIN M_Berechnung_Faktor_bei_Mietende_Mietbeginn ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = M_Berechnung_Faktor_bei_Mietende_Mietbeginn.ID_Gebäudeteil
      )
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    ) ON M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Jahr
      )= [Haushaltsjahr] + 1
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Mietrelevant
      )= True
    )
  )
GROUP BY
  M_Fremdmieten.Haushaltsjahr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [Bezeichnung] & " -> " & [Gebäudeteil],
  tbl_100_20_Gebäudeteile.ID_Gebäude,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  "Fremdmieten",
  [M_Fremdmieten].[Betrag] * [Anteile];
