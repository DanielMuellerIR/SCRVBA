SELECT
  M_Nebenkosten_Kalkulation_für_Budget.ID_Gebäudeteil,
  Sum(
    M_Nebenkosten_Kalkulation_für_Budget.Betrag_bezahlt
  ) AS NK
FROM
  M_Nebenkosten_Kalkulation_für_Budget
GROUP BY
  M_Nebenkosten_Kalkulation_für_Budget.ID_Gebäudeteil;
