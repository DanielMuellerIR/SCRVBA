CREATE TABLE [Hhstb60_doppik] (
  [Kennummer] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [Haushaltsjahr] VARCHAR (255),
  [Buchungsstelle] VARCHAR (255),
  [buchstelle] VARCHAR (255),
  [Ansatz] CURRENCY,
  [HHR_aus_Vorjahren] CURRENCY,
  [Gesamt-HH-Mittel] CURRENCY,
  [Aufträge] CURRENCY,
  [Sollbuchung] CURRENCY,
  [Sollerfassung] CURRENCY,
  [Verfügbar] CURRENCY,
  [Zeitstempel] VARCHAR (255),
  [SollGesamt] VARCHAR (255)
)
