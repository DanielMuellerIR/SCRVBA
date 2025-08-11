SELECT
  DISTINCT F_Variable("lng_Kalk_Jahr") AS Planjahr,
  M_Betriebe.Betrieb,
  M_Bereiche.BereichNr,
  M_Bereiche.BereichName,
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " -> " & [Gebäudeteil] AS Objekt,
  tbl_100_20_Gebäudeteile.ID_Gebäude,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  Hochrechnung_Nebenkosten_2.Nebenkosten_Art,
  IIf(
    IsNull(
      IIf(
        IsNull([steigerungssatz]),
        0,
        IIf(
          [Hochrechnung_Nebenkosten_2].[Haushaltsjahr] = [Hochrechnung_Nebenkosten_4a].[Kalkulationsjahr],
          0, [steigerungssatz]
        )
      )
    ),
    0,
    IIf(
      IsNull([steigerungssatz]),
      0,
      IIf(
        [Hochrechnung_Nebenkosten_2].[Haushaltsjahr] = [Hochrechnung_Nebenkosten_4a].[Kalkulationsjahr],
        0, [steigerungssatz]
      )
    )*(
      IIf(
        [vervielfältiger] = 1,
        [summe von betrag],
        (
          [summe von betrag] / [anzahl von betrag]
        )* [vervielfältiger]
      )
    )
  )+(
    IIf(
      [vervielfältiger] = 1,
      [summe von betrag],
      (
        [summe von betrag] / [anzahl von betrag]
      )* [vervielfältiger]
    )
  ) AS Kosten,
  "C" AS sort
FROM
  tbl_100_10_Liegenschaften
  RIGHT JOIN (
    (
      M_Betriebe
      RIGHT JOIN (
        (
          M_Bereiche
          RIGHT JOIN tbl_100_20_Gebäudeteile ON M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]
        )
        LEFT JOIN M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
      ) ON M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb
    )
    RIGHT JOIN (
      (
        (
          Hochrechnung_Nebenkosten_2
          LEFT JOIN M_Kostenstellen ON Hochrechnung_Nebenkosten_2.[ID aus Kostenstellen] = M_Kostenstellen.Kennummer
        )
        LEFT JOIN Hochrechnung_Nebenkosten_4a ON Hochrechnung_Nebenkosten_2.ID_Nebenkosten = Hochrechnung_Nebenkosten_4a.Nebenkostenart
      )
      LEFT JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        tbl_100_20_Gebäudeteile.ID_Gebäudeteil
      ) Is Not Null
    )
    AND (
      (
        Hochrechnung_Nebenkosten_2.Haushaltsjahr
      )= F_Variable("lng_NK_Jahr")
    )
    AND (
      (
        Year([Mietende])
      ) Is Null
      Or (
        Year([Mietende])
      )>= F_Variable("lng_Kalk_Jahr")
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Mietrelevant
      )= True
    )
  )
ORDER BY
  [Name] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " -> " & [Gebäudeteil];
