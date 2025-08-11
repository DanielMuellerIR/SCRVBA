Operation =3
Name ="MonatsAO_temp_Buchungssatz"
Option =0
Where ="(((A_Buchungen.ID)=[formulare]![Monatsanordnung]![alteID]))"
Begin InputTables
    Name ="A_Buchungen"
End
Begin OutputColumns
    Name ="alteID"
    Expression ="A_Buchungen.ID"
    Name ="ID Sachbearbeiter"
    Expression ="A_Buchungen.[ID Sachbearbeiter]"
    Name ="ID Empfänger"
    Expression ="A_Buchungen.[ID Empfänger]"
    Name ="ID Fälligkeiten"
    Expression ="A_Buchungen.[ID Fälligkeiten]"
    Name ="Haushaltsjahr"
    Expression ="A_Buchungen.Haushaltsjahr"
    Name ="Ausgabe"
    Expression ="A_Buchungen.Ausgabe"
    Name ="Ausgabe_ja_nein"
    Expression ="A_Buchungen.Ausgabe_ja_nein"
    Name ="Skonto"
    Expression ="A_Buchungen.Skonto"
    Name ="Verwendungszweck"
    Expression ="A_Buchungen.Verwendungszweck"
    Name ="Fälligkeit"
    Expression ="A_Buchungen.Fälligkeit"
    Name ="Auftragsnummer"
    Expression ="A_Buchungen.Auftragsnummer"
    Name ="Zahlung"
    Expression ="A_Buchungen.Zahlung"
    Name ="ID Nebenkostenart"
    Expression ="A_Buchungen.[ID Nebenkostenart]"
    Name ="von_"
    Expression ="A_Buchungen.von_"
    Name ="bis_"
    Expression ="A_Buchungen.bis_"
    Name ="Anlage"
    Expression ="A_Buchungen.Anlage"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbBoolean "UseTransaction" ="0"
dbByte "Orientation" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="A_Buchungen.Verwendungszweck"
        dbInteger "ColumnWidth" ="4665"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Auftragsnummer"
        dbInteger "ColumnWidth" ="1725"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Zahlung"
        dbInteger "ColumnWidth" ="1530"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.ID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1462
    Bottom =861
    Left =-1
    Top =-1
    Right =1438
    Bottom =275
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =38
        Top =6
        Right =429
        Bottom =253
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
End
