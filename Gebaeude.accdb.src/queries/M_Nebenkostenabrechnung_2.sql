SELECT
  A_Buchungen.Haushaltsjahr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  Sum(
    A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag
  ) AS Zahlungen
FROM
  M_Betriebe
  RIGHT JOIN (
    tbl_100_10_Liegenschaften
    RIGHT JOIN (
      (
        (
          (
            A_Buchungen_Aufteilung_auf_Kostenstellen
            LEFT JOIN A_Buchungen ON A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen] = A_Buchungen.ID
          )
          LEFT JOIN [M_Verzeichnis Nebenkosten] ON A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID
        )
        LEFT JOIN (
          M_Bereiche
          RIGHT JOIN tbl_100_20_Gebäudeteile ON M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]
        ) ON A_Buchungen_Aufteilung_auf_Kostenstellen.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
      )
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
  ) ON M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb
GROUP BY
  A_Buchungen.Haushaltsjahr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  [Bezeichnung] & ": " & [Gebäudeteil] & ", " & [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr]
ORDER BY
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art;
