CREATE TABLE [MonatsAO_temp_Buchungssatz] (
  [alteID] AUTOINCREMENT,
  [ID Sachbearbeiter] LONG,
  [ID Empfänger] LONG,
  [ID Fälligkeiten] LONG,
  [Haushaltsjahr] SHORT,
  [Ausgabe] VARCHAR (50),
  [Ausgabe_ja_nein] BIT,
  [Skonto] BIT,
  [Verwendungszweck] VARCHAR (50),
  [Fälligkeit] VARCHAR (50),
  [Auftragsnummer] LONG,
  [Zahlung] VARCHAR (50),
  [ID Nebenkostenart] LONG,
  [angelegt] DATETIME,
  [von_] DATETIME,
  [bis_] DATETIME,
  [Anlage] VARCHAR (50)
)
