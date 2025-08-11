SELECT
  [M_Steigerungssätze Nebenkosten].Kalkulationsjahr,
  [M_Steigerungssätze Nebenkosten].Nebenkostenart,
  [M_Steigerungssätze Nebenkosten].Steigerungssatz
FROM
  [M_Steigerungssätze Nebenkosten]
WHERE
  (
    (
      (
        [M_Steigerungssätze Nebenkosten].Kalkulationsjahr
      ) Like Int(
        [Formulare]![M_Formular_Gebäudedaten]![Kalkulationsjahr]
      )
      Or (
        [M_Steigerungssätze Nebenkosten].Kalkulationsjahr
      ) Is Null
    )
  );
