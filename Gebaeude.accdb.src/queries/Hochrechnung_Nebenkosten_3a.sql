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
      ) Between F_Variable("lng_Kalk_Jahr_Min")
      And F_Variable("lng_Kalk_Jahr_Max")
    )
  );
