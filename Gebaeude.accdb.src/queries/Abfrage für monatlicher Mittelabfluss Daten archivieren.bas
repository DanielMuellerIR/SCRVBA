dbMemo "SQL" ="INSERT INTO [Archiv monatlicher Mittelabfluss] ( archivieren, [ID aus Maßnahmen]"
    ", Buchungsstelle, Jahr, Ansatz, HHR, VE, Herkunft, zufVfg, zufVfgohneVE, [Gesamt"
    "_HH-Mittel], Massnahme_, Aufträge, sollgesamt, Archivierungsdatum ) IN 's:\\a60\\"
    "datenbank\\archiv.accdb'\015\012SELECT IIf([Jahr]=Year(Now()) And [Ansatz]>1,1,I"
    "If([Jahr]=Year(Now())-1 And [HHR]>1,1,IIf([Jahr]=Year(Now()) And [VE]>1,1,0))) A"
    "S archivieren, Haushaltsdaten.[ID aus Maßnahmen], Buchungsstellen.Buchungsstelle"
    ", Haushaltsdaten.Jahr, Haushaltsdaten.Ansatz, Haushaltsdaten.HHR, Haushaltsdaten"
    ".VE, Haushaltsdaten.Herkunft, IIf([Jahr]=Year(Now())-1 And [HHR]>0,[HHR],IIf([Ja"
    "hr]=Year(Now()) And [Ansatz]>0,[Ansatz],IIf([Jahr]=Year(Now()) And [VE]>0,[VE],0"
    "))) AS zufVfg, IIf([Jahr]=Year(Now())-1 And [HHR]>0,[HHR],IIf([Jahr]=Year(Now())"
    " And [Ansatz]>0,[Ansatz],IIf([Jahr]=Year(Now()) And [VE]>0,0,0))) AS zufVfgohneV"
    "E, Abfrage_für_Import_Haushaltsdaten_in_Tabelle.[Gesamt_HH-Mittel], [Bezeichung]"
    " & \":  \" & [Maßnahme] AS Massnahme_, Abfrage_für_Import_Haushaltsdaten_in_Tabe"
    "lle.Aufträge, Abfrage_für_Import_Haushaltsdaten_in_Tabelle.sollgesamt, Date() AS"
    " Archivierungsdatum\015\012FROM Gebäudeliste RIGHT JOIN (Maßnahmen RIGHT JOIN (("
    "Buchungsstellen INNER JOIN Abfrage_für_Import_Haushaltsdaten_in_Tabelle ON Buchu"
    "ngsstellen.Buchungsstelle=Abfrage_für_Import_Haushaltsdaten_in_Tabelle.Buchungss"
    "telle) INNER JOIN Haushaltsdaten ON Buchungsstellen.ID=Haushaltsdaten.[ID aus Bu"
    "chungsstelle]) ON Maßnahmen.ID=Haushaltsdaten.[ID aus Maßnahmen]) ON Gebäudelist"
    "e.ID=Maßnahmen.[ID aus Gebäudeliste]\015\012GROUP BY IIf([Jahr]=Year(Now()) And "
    "[Ansatz]>1,1,IIf([Jahr]=Year(Now())-1 And [HHR]>1,1,IIf([Jahr]=Year(Now()) And ["
    "VE]>1,1,0))), Haushaltsdaten.[ID aus Maßnahmen], Buchungsstellen.Buchungsstelle,"
    " Haushaltsdaten.Jahr, Haushaltsdaten.Ansatz, Haushaltsdaten.HHR, Haushaltsdaten."
    "VE, Haushaltsdaten.Herkunft, IIf([Jahr]=Year(Now())-1 And [HHR]>0,[HHR],IIf([Jah"
    "r]=Year(Now()) And [Ansatz]>0,[Ansatz],IIf([Jahr]=Year(Now()) And [VE]>0,[VE],0)"
    ")), IIf([Jahr]=Year(Now())-1 And [HHR]>0,[HHR],IIf([Jahr]=Year(Now()) And [Ansat"
    "z]>0,[Ansatz],IIf([Jahr]=Year(Now()) And [VE]>0,0,0))), Abfrage_für_Import_Haush"
    "altsdaten_in_Tabelle.[Gesamt_HH-Mittel], [Bezeichung] & \":  \" & [Maßnahme], Ab"
    "frage_für_Import_Haushaltsdaten_in_Tabelle.Aufträge, Abfrage_für_Import_Haushalt"
    "sdaten_in_Tabelle.sollgesamt, Date()\015\012HAVING (((IIf([Jahr]=Year(Now()) And"
    " [Ansatz]>1,1,IIf([Jahr]=Year(Now())-1 And [HHR]>1,1,IIf([Jahr]=Year(Now()) And "
    "[VE]>1,1,0))))=1) AND ((Haushaltsdaten.[ID aus Maßnahmen]) Is Not Null))\015\012"
    "ORDER BY IIf([Jahr]=Year(Now()) And [Ansatz]>1,1,IIf([Jahr]=Year(Now())-1 And [H"
    "HR]>1,1,IIf([Jahr]=Year(Now()) And [VE]>1,1,0))), Buchungsstellen.Buchungsstelle"
    ";\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbBoolean "UseTransaction" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Haushaltsdaten.Herkunft"
        dbInteger "ColumnWidth" ="2115"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="zufVfg"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Ansatz"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.HHR"
        dbInteger "ColumnWidth" ="1755"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.VE"
        dbInteger "ColumnWidth" ="1605"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="zufVfgohneVE"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnWidth" ="1485"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Massnahme_"
        dbInteger "ColumnWidth" ="8175"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abfrage_für_Import_Haushaltsdaten_in_Tabelle.sollgesamt"
        dbInteger "ColumnWidth" ="1995"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archivierungsdatum"
        dbText "Format" ="Short Date"
        dbInteger "ColumnWidth" ="2055"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="archivieren"
        dbLong "AggregateType" ="-1"
    End
End
