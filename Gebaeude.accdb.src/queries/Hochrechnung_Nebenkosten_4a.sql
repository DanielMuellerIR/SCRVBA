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
      )= F_Variable("lng_Kalk_Jahr")
      Or (
        [M_Steigerungssätze Nebenkosten].Kalkulationsjahr
      ) Is Null
    )
  );
