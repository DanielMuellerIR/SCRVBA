UPDATE
  M_Nebenkosten
SET
  M_Nebenkosten.in_Kalkulation_übernommen = Yes
WHERE
  (
    (
      (M_Nebenkosten.[ID aus Objekte])= [Formulare]![M_Formular_Gebäudedaten]![Gebäudeauswahl]
    )
  );
