CREATE TABLE [Usys_tbl_DBDok_Module_Prozeduren_Zeilen] (
  [lfd_Nr] LONG CONSTRAINT [lfd_Nr] UNIQUE,
  [Modul-Typ] VARCHAR (50),
  [Modulname] VARCHAR (255),
  [Prozedurname] VARCHAR (255),
  [Codezeile] LONGTEXT
)
