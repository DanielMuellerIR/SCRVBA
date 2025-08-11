SELECT
  DISTINCTROW A_Buchungen.ID AS ID_Buch,
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen] AS ID_KS,
  A_Buchungen.Betrag AS Gesamtbetrag,
  A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen],
  A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag,
  A_Buchungen.angelegt,
  [Anrede] & IIf(
    IsNull([Anrede]),
    "",
    " "
  )& [Name, Vorname] AS Empfänger,
  Sachbearbeiter.Name,
  [M_Verzeichnis Nebenkosten].Nebenkosten_Art,
  M_Kostenstellen.Kostenstelle,
  M_Kostenstellen.Bezeichnung,
  A_Buchungen.Haushaltsjahr,
  Zahlungszyklen.Zyklus,
  M_Bereiche.Kennummer,
  [Betrieb] & " - " & [BereichNr] & ": " & [BereichName] AS Betr_Bereich,
  M_Bereiche.BereichNr,
  A_Buchungen.Verwendungszweck
FROM
  (
    M_Betriebe
    RIGHT JOIN (
      M_Bereiche
      RIGHT JOIN tbl_100_20_Gebäudeteile ON M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]
    ) ON M_Betriebe.ID_Betrieb = M_Bereiche.ID_Betrieb
  )
  RIGHT JOIN (
    (
      (
        (
          (
            (
              A_Buchungen
              LEFT JOIN A_Empfänger ON A_Buchungen.[ID Empfänger] = A_Empfänger.ID
            )
            LEFT JOIN [M_Verzeichnis Nebenkosten] ON A_Buchungen.[ID Nebenkostenart] = [M_Verzeichnis Nebenkosten].ID
          )
          LEFT JOIN Zahlungszyklen ON A_Buchungen.[ID Fälligkeiten] = Zahlungszyklen.ID
        )
        LEFT JOIN (
          A_Buchungen_Aufteilung_auf_Kostenstellen
          LEFT JOIN M_Kostenstellen ON A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen] = M_Kostenstellen.Kennummer
        ) ON A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]
      )
      LEFT JOIN Sachbearbeiter ON A_Buchungen.[ID Sachbearbeiter] = Sachbearbeiter.ID
    )
    LEFT JOIN tbl_100_40_Zuordn_Gebteile_Koststellen ON M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst
  ) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen.ID_Gebäudeteil
WHERE
  (
    (
      (A_Buchungen.angelegt)<= CDate(
        F_Variable("dt_RE_Bis")
      )
    )
    AND (
      (A_Buchungen.Haushaltsjahr) Between F_Variable("lng_Kalk_Jahr_Min")
      And F_Variable("lng_Kalk_Jahr_Max")
    )
    AND (
      (M_Bereiche.Kennummer) Between F_Variable("lng_Ber_Nr_Min")
      And F_Variable("lng_Ber_Nr_Max")
    )
    AND (
      ([M_Verzeichnis Nebenkosten].ID) Between F_Variable("lng_ID_Kostart_Min")
      And F_Variable("lng_ID_Kostart_Max")
    )
    AND (
      (A_Empfänger.ID) Between F_Variable("lng_ID_Empf_Min")
      And F_Variable("lng_ID_Empf_Max")
    )
    AND (
      (M_Kostenstellen.Kennummer) Between F_Variable("lng_ID_Kostst_Min")
      And F_Variable("lng_ID_Kostst_Max")
    )
    AND (
      (Zahlungszyklen.ID) Between F_Variable("lng_ID_ZahlZykl_Min")
      And F_Variable("lng_ID_ZahlZykl_Max")
    )
    AND (
      (M_Betriebe.ID_Betrieb) Between F_Variable("lng_Betr_Nr_Min")
      And F_Variable("lng_Betr_Nr_Max")
    )
    AND (
      (
        F_Variable("lng_Kalk_Jahr_Min")>= Year([Datum_von])
      )= True
    )
    AND (
      (
        F_Variable("lng_Kalk_Jahr_Max")<= Year([Datum_bis])
      )= True
    )
  );
