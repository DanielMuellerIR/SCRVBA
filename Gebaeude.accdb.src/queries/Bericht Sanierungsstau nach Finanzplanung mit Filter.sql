SELECT
  [Bericht Sanierungsstau nach Finanzplanung].[ID_Gebäudeteil]
FROM
  [Bericht Sanierungsstau nach Finanzplanung]
WHERE
  (
    (
      (
        [Bericht Sanierungsstau nach Finanzplanung].[ID_Gebäude]
      ) Between F_Variable("lng_ID_Geb_Min")
      And F_Variable("lng_ID_Geb_Max")
    )
    AND (
      (
        [Bericht Sanierungsstau nach Finanzplanung].[ID_Gebäudeteil]
      ) Between F_Variable("lng_ID_Geb_Teil_Min")
      And F_Variable("lng_ID_Geb_Teil_Max")
    )
  );
