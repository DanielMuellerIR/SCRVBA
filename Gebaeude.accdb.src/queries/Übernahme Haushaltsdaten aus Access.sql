INSERT INTO Import_Haushaltsdaten (
  Haushaltsjahr, Buchungsstelle, buchstelle,
  Ansatz, HHR_aus_Vorjahren, [Gesamt_HH-Mittel],
  Aufträge, Verfügbar, Sollbuchung
)
SELECT
  Hhstb60_doppik.Haushaltsjahr,
  Hhstb60_doppik.Buchungsstelle,
  Hhstb60_doppik.buchstelle,
  Hhstb60_doppik.Ansatz,
  Hhstb60_doppik.HHR_aus_Vorjahren,
  Hhstb60_doppik.[Gesamt-HH-Mittel],
  IIf(
    IsNull([Aufträge]),
    0,
    [Aufträge]
  ) AS auf,
  IIf(
    IsNull([Verfügbar]),
    0,
    [Verfügbar]
  ) AS vfgb,
  IIf(
    IsNull([Sollbuchung]),
    0,
    [Sollbuchung]
  ) AS soll
FROM
  Hhstb60_doppik
  INNER JOIN [Übernahme Haushaltsdaten aus Access max von Zeitstempel] ON Hhstb60_doppik.Zeitstempel = [Übernahme Haushaltsdaten aus Access max von Zeitstempel].[Max von Zeitstempel]
WHERE
  (
    (
      (Hhstb60_doppik.Buchungsstelle) Like "11.14*"
    )
  );
