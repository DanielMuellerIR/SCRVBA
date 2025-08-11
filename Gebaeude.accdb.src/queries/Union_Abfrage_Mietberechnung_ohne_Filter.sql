SELECT
  DISTINCTROW Union_Abfrage_Mietberechnung_1.Planjahr,
  Union_Abfrage_Mietberechnung_1.Betrieb,
  M_Bereiche.BereichNr,
  tbl_100_20_Gebäudeteile.ID_Gebäude,
  [M_Strassenverzeichnis].[Name] & " " & [tbl_100_10_Liegenschaften].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] AS Objekt,
  tbl_100_20_Gebäudeteile.Sportfläche,
  IIf(
    [Sportfläche] = True, "Flächen mit reduziertem NK-Satz",
    " Gebäude der Liegenschaft"
  ) AS Sportfl,
  Union_Abfrage_Mietberechnung_1.sort,
  fc_Sort_Text([sort]) AS Sorttext,
  Union_Abfrage_Mietberechnung_1.Kostenart,
  M_Bereiche.Kennummer,
  Union_Abfrage_Mietberechnung_1.BereichName,
  qry_BGF_Summen.Sum_BGF_Gb_LS,
  qry_BGF_Summen.Sum_BGF_Sp_Fl,
  M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Anteile,
  ([Betrag] * [anteile]) AS Betrag_
FROM
  (
    (
      M_Bereiche
      INNER JOIN tbl_100_20_Gebäudeteile ON M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]
    )
    INNER JOIN (
      Union_Abfrage_Mietberechnung_1
      INNER JOIN M_Berechnung_Faktor_bei_Mietende_Mietbeginn ON Union_Abfrage_Mietberechnung_1.ID_Gebäudeteil = M_Berechnung_Faktor_bei_Mietende_Mietbeginn.ID_Gebäudeteil
    ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Union_Abfrage_Mietberechnung_1.ID_Gebäudeteil
  )
  INNER JOIN (
    (
      tbl_100_10_Liegenschaften
      LEFT JOIN M_Strassenverzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
    )
    INNER JOIN qry_BGF_Summen ON tbl_100_10_Liegenschaften.ID_Gebäude = qry_BGF_Summen.ID_Gebäude
  ) ON (
    tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
  )
  AND (
    tbl_100_20_Gebäudeteile.Sportfläche = qry_BGF_Summen.Sportfläche
  )
  AND (
    M_Bereiche.Kennummer = qry_BGF_Summen.KN_Bereich
  )
WHERE
  (
    (
      (
        Union_Abfrage_Mietberechnung_1.Betrag
      )> 0
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Mietrelevant
      )= True
    )
  )
GROUP BY
  Union_Abfrage_Mietberechnung_1.Planjahr,
  Union_Abfrage_Mietberechnung_1.Betrieb,
  M_Bereiche.BereichNr,
  tbl_100_20_Gebäudeteile.ID_Gebäude,
  [M_Strassenverzeichnis].[Name] & " " & [tbl_100_10_Liegenschaften].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung],
  tbl_100_20_Gebäudeteile.Sportfläche,
  IIf(
    [Sportfläche] = True, "Flächen mit reduziertem NK-Satz",
    " Gebäude der Liegenschaft"
  ),
  Union_Abfrage_Mietberechnung_1.sort,
  fc_Sort_Text([sort]),
  Union_Abfrage_Mietberechnung_1.Kostenart,
  M_Bereiche.Kennummer,
  Union_Abfrage_Mietberechnung_1.BereichName,
  qry_BGF_Summen.Sum_BGF_Gb_LS,
  qry_BGF_Summen.Sum_BGF_Sp_Fl,
  M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Anteile,
  ([Betrag] * [anteile]);
