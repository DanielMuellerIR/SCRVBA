SELECT
  M_Sonderleistungen.Haushaltsjahr AS Planjahr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " -> " & [Gebäudeteil] AS Objekt,
  tbl_100_20_Gebäudeteile.ID_Gebäude,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  M_Sonderleistungen.Rechnungsaussteller AS Kostenart,
  [M_Sonderleistungen].[Betrag] * [Anteile] AS Betrag,
  "D" AS sort
FROM
  tbl_100_10_Liegenschaften
  RIGHT JOIN (
    (
      M_Betriebe
      RIGHT JOIN (
        (
          (
            tbl_100_20_Gebäudeteile
            LEFT JOIN M_Bereiche ON tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche] = M_Bereiche.Kennummer
          )
          LEFT JOIN M_Berechnung_Faktor_bei_Mietende_Mietbeginn ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = M_Berechnung_Faktor_bei_Mietende_Mietbeginn.ID_Gebäudeteil
        )
        LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
      ) ON M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb
    )
    INNER JOIN M_Sonderleistungen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = M_Sonderleistungen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        tbl_100_20_Gebäudeteile.Mietrelevant
      )= True
    )
  )
GROUP BY
  M_Sonderleistungen.Haushaltsjahr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " -> " & [Gebäudeteil],
  tbl_100_20_Gebäudeteile.ID_Gebäude,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  M_Sonderleistungen.Rechnungsaussteller,
  [M_Sonderleistungen].[Betrag] * [Anteile],
  "Gebäudereinigung",
  M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Jahr
HAVING
  (
    (
      (
        M_Sonderleistungen.Haushaltsjahr
      )= F_Variable("lng_Kalk_Jahr")
    )
    AND (
      (
        M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Jahr
      )= F_Variable("lng_Kalk_Jahr")
    )
  );
