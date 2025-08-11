SELECT
  M_Objekte.Bezeichnung,
  M_Nebenkosten.Haushaltsjahr,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  M_Nebenkosten.Rechnungsaussteller,
  M_Nebenkosten.Einheit,
  M_Nebenkosten.Menge,
  M_Nebenkosten.berechnet_von,
  M_Nebenkosten.berechnet_bis,
  M_Nebenkosten.Betrag
FROM
  (
    M_Nebenkosten
    LEFT JOIN [M_Verzeichnis Nebenkosten] ON M_Nebenkosten.[ID aus Verzeichnis Nebenkosten] = [M_Verzeichnis Nebenkosten].ID
  )
  LEFT JOIN M_Objekte ON M_Nebenkosten.[ID aus Objekte] = M_Objekte.ID
WHERE
  (
    (
      (M_Objekte.Bezeichnung) Like [Formulare]![Filter für Nebenkosten]![Gebäude]
    )
    AND (
      (M_Nebenkosten.Haushaltsjahr) Like [Formulare]![Filter für Nebenkosten]![Haushaltsjahr]
    )
    AND (
      (
        [M_Verzeichnis Nebenkosten].Nebenkosten_Art
      ) Like [Formulare]![Filter für Nebenkosten]![Nebenkostenart]
    )
    AND (
      (
        M_Nebenkosten.Rechnungsaussteller
      ) Like [Formulare]![Filter für Nebenkosten]![Rechnungsaussteller]
    )
  )
ORDER BY
  M_Objekte.Bezeichnung,
  M_Nebenkosten.Haushaltsjahr,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art;
