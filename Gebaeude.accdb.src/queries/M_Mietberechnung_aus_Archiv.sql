SELECT
  DISTINCTROW Archiv_Mietberechnungen.Planjahr,
  Archiv_Mietberechnungen.NK_Grundl_Jahr,
  Archiv_Mietberechnungen.Betrieb,
  Archiv_Mietberechnungen.BereichNr,
  Archiv_Mietberechnungen.BereichName,
  [M_Strassenverzeichnis].[Name] & " " & [tbl_100_10_Liegenschaften].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] AS Objekt,
  Archiv_Mietberechnungen.Sportfläche,
  IIf(
    [Archiv_Mietberechnungen].[Sportfläche] = True,
    "Flächen mit reduziertem NK-Satz",
    " Gebäude der Liegenschaft"
  ) AS Sportfl,
  Archiv_Mietberechnungen.sort,
  fc_Sort_Text([sort]) AS Sorttext,
  Archiv_Mietberechnungen.Kostenart,
  Archiv_Mietberechnungen.Sum_BGF_Sp_Fl,
  Archiv_Mietberechnungen.Sum_BGF_Gb_LS,
  Sum(Archiv_Mietberechnungen.Betrag) AS betrag_,
  Archiv_Mietberechnungen.text
FROM
  Archiv_Mietberechnungen
  INNER JOIN (
    tbl_100_10_Liegenschaften
    LEFT JOIN M_Strassenverzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
  ) ON Archiv_Mietberechnungen.ID_Gebäude = tbl_100_10_Liegenschaften.ID_Gebäude
GROUP BY
  Archiv_Mietberechnungen.Planjahr,
  Archiv_Mietberechnungen.NK_Grundl_Jahr,
  Archiv_Mietberechnungen.Betrieb,
  Archiv_Mietberechnungen.BereichNr,
  Archiv_Mietberechnungen.BereichName,
  [M_Strassenverzeichnis].[Name] & " " & [tbl_100_10_Liegenschaften].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung],
  Archiv_Mietberechnungen.Sportfläche,
  IIf(
    [Archiv_Mietberechnungen].[Sportfläche] = True,
    "Flächen mit reduziertem NK-Satz",
    " Gebäude der Liegenschaft"
  ),
  Archiv_Mietberechnungen.sort,
  fc_Sort_Text([sort]),
  Archiv_Mietberechnungen.Kostenart,
  Archiv_Mietberechnungen.Sum_BGF_Sp_Fl,
  Archiv_Mietberechnungen.Sum_BGF_Gb_LS,
  Archiv_Mietberechnungen.text,
  Archiv_Mietberechnungen.ID_Gebäude
HAVING
  (
    (
      (
        Archiv_Mietberechnungen.Planjahr
      )= F_Variable("lng_Kalk_Jahr")
    )
    AND (
      (
        Archiv_Mietberechnungen.BereichNr
      ) Between F_Variable("lng_Ber_Nr_Min")
      And F_Variable("lng_Ber_Nr_Max")
    )
    AND (
      (Archiv_Mietberechnungen.text)= F_Variable("str_Suchtext")
    )
    AND (
      (
        Archiv_Mietberechnungen.ID_Gebäude
      ) Between F_Variable("lng_ID_Geb_Min")
      And F_Variable("lng_ID_Geb_Max")
    )
  );
