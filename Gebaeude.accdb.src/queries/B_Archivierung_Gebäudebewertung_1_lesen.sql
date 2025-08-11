SELECT
  tbl_100_10_Liegenschaften.ID_Gebäude,
  Bewertung_Archiv_1.ID_Gebäudeteil,
  Bewertung_Archiv_1.Bezeichnung,
  Bewertung_Archiv_1.Straße,
  Bewertung_Archiv_1.Gebäudeteil,
  Bewertung_Archiv_1.BGF,
  Bewertung_Archiv_1.Baujahr,
  Bewertung_Archiv_1.Baujahr_real,
  Bewertung_Archiv_1.Baujahr_mod,
  Bewertung_Archiv_1.[gewöhnliche Nutzungsdauer],
  Bewertung_Archiv_1.[geschätze Nutzungsdauer],
  Bewertung_Archiv_1.Neubauwert_ab_2000,
  Bewertung_Archiv_1.PunkteAusstattung,
  Bewertung_Archiv_1.Ausstattung,
  Bewertung_Archiv_1.Range,
  Bewertung_Archiv_1.[Wert von],
  Bewertung_Archiv_1.[Wert bis],
  Bewertung_Archiv_1.[Euro je BGF],
  Bewertung_Archiv_1.Wert1,
  Bewertung_Archiv_1.Baunebenkosten,
  Bewertung_Archiv_1.Erläuterungen,
  Bewertung_Archiv_1.Datei,
  Bewertung_Archiv_1.Erläuterung,
  Bewertung_Archiv_1.Bewertungsjahr,
  Bewertung_Archiv_1.[index ab 2000],
  Bewertung_Archiv_1.[Bewertung abgeschlossen],
  Bewertung_Archiv_1.Index_manuell
FROM
  tbl_100_10_Liegenschaften
  INNER JOIN (
    Bewertung_Archiv_1
    INNER JOIN tbl_100_20_Gebäudeteile ON Bewertung_Archiv_1.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
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
        Bewertung_Archiv_1.ID_Gebäudeteil
      ) Between F_Variable("lng_ID_Geb_Teil_Min")
      And F_Variable("lng_ID_Geb_Teil_Max")
    )
    AND (
      (Bewertung_Archiv_1.Datei)= F_Variable("dt_Fix_Datum")
    )
  );
