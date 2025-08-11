SELECT
  DISTINCTROW IIf(
    [Kalenderjahr] IS NULL,
    "N.N.",
    CStr ([Kalenderjahr])
  ) AS Kal_Jahr,
  tbl_100_10_Liegenschaften.ID_Gebäude,
  [M_Strassenverzeichnis].[Name] & " " & [tbl_100_10_Liegenschaften].[Haus_Nr] & ": " & [Bezeichnung] AS Liegenschaft,
  tbl_100_20_Gebäudeteile.Gebäudeteil AS Haus,
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  Maßnahmen.ID AS ID_Massn,
  Sachbearbeiter.Name,
  Maßnahmen.Maßnahme,
  [Geplante Finanzierung].ID AS ID_Finanz,
  IIf(
    IsNull([Betrag]),
    IIf(
      IsNull(
        [voraussichtliche Kosten gesamt]
      ),
      0,
      [voraussichtliche Kosten gesamt]
    ),
    [Betrag]
  ) AS Gepl_Finanz,
  IIf(
    [Kalenderjahr] IS NULL, False, [Erledigt]
  ) AS Erl,
  Finanzquellen.Finanzquelle,
  Finanzherkunft.Finanzherkunft,
  Maßnahmen.[erledigt im Jahr],
  [Geplante Finanzierung].tats_Kosten_Infoma
FROM
  (
    (
      tbl_100_10_Liegenschaften
      LEFT JOIN Sachbearbeiter ON tbl_100_10_Liegenschaften.ID_SB = Sachbearbeiter.ID
    )
    RIGHT JOIN (
      tbl_100_20_Gebäudeteile
      RIGHT JOIN (
        Maßnahmen
        LEFT JOIN (
          Finanzquellen
          RIGHT JOIN (
            Finanzherkunft
            RIGHT JOIN [Geplante Finanzierung] ON Finanzherkunft.ID_Fin_Her = [Geplante Finanzierung].ID_Fin_Her
          ) ON Finanzquellen.ID_Fin_Qu = [Geplante Finanzierung].ID_Fin_Qu
        ) ON Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme
      ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil
    ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
  )
  LEFT JOIN M_Strassenverzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
WHERE
  (
    (
      (
        [Geplante Finanzierung].Sammelbuchungsstelle
      )= False
      OR (
        [Geplante Finanzierung].Sammelbuchungsstelle
      ) IS NULL
    )
  );
