SELECT
  tbl_20_30_Q_Prüfung.Kalenderjahr,
  tbl_20_30_Q_Prüfung.Quartal,
  tbl_20_30_Q_Prüfung.Datum,
  [Anrede] & " " & [Username] AS Pruefer
FROM
  tbl_20_30_Q_Prüfung
  LEFT JOIN tbl_10_10_User ON tbl_20_30_Q_Prüfung.ID_User = tbl_10_10_User.ID_User
WHERE
  (
    (
      (
        tbl_20_30_Q_Prüfung.Kalenderjahr
      ) Like "*" & [Formulare]![frm_10_10_Startformular]![TF_Filter_Jahr] & "*"
    )
  )
ORDER BY
  tbl_20_30_Q_Prüfung.Kalenderjahr,
  tbl_20_30_Q_Prüfung.Quartal;
