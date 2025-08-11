SELECT
  [M_Strassenverzeichnis].[Name] & ' ' & [Haus_Nr] & ": " & [Bezeichnung] AS Liegenschaft,
  IIf(
    [Sachbearbeiter].[Name] Is Null, "–––",
    [Sachbearbeiter].[Name]
  ) AS obj_V,
  IIf(
    [Sachbearbeiter_1].[Name] Is Null,
    "–––", [Sachbearbeiter_1].[Name]
  ) AS GS_V,
  IIf(
    [Sachbearbeiter_2].[Name] Is Null,
    "–––", [Sachbearbeiter_2].[Name]
  ) AS FP_El,
  IIf(
    [Sachbearbeiter_3].[Name] Is Null,
    "–––", [Sachbearbeiter_3].[Name]
  ) AS FP_HLS,
  IIf(
    [Sachbearbeiter_4].[Name] Is Null,
    "–––", [Sachbearbeiter_4].[Name]
  ) AS Verm_V
FROM
  (
    (
      (
        (
          (
            tbl_100_10_Liegenschaften
            LEFT JOIN M_Strassenverzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer
          )
          LEFT JOIN Sachbearbeiter ON tbl_100_10_Liegenschaften.ID_SB = Sachbearbeiter.ID
        )
        LEFT JOIN Sachbearbeiter AS Sachbearbeiter_1 ON tbl_100_10_Liegenschaften.ID_SB_Grundst = Sachbearbeiter_1.ID
      )
      LEFT JOIN Sachbearbeiter AS Sachbearbeiter_2 ON tbl_100_10_Liegenschaften.ID_SB_Fachpl_Elek = Sachbearbeiter_2.ID
    )
    LEFT JOIN Sachbearbeiter AS Sachbearbeiter_3 ON tbl_100_10_Liegenschaften.ID_SB_Fachpl_HLS = Sachbearbeiter_3.ID
  )
  LEFT JOIN Sachbearbeiter AS Sachbearbeiter_4 ON tbl_100_10_Liegenschaften.ID_SB_Mietverantw = Sachbearbeiter_4.ID
WHERE
  (
    (
      (
        tbl_100_10_Liegenschaften.ID_Gebäude
      ) Between F_Variable("lng_ID_Geb_Min")
      And F_Variable("lng_ID_Geb_Max")
    )
    AND (
      (
        tbl_100_10_Liegenschaften.Nicht_mehr_in_Betr_seit
      ) Is Null
      Or (
        tbl_100_10_Liegenschaften.Nicht_mehr_in_Betr_seit
      )= 0
    )
  )
ORDER BY
  [M_Strassenverzeichnis].[Name] & ' ' & [Haus_Nr] & ": " & [Bezeichnung];
