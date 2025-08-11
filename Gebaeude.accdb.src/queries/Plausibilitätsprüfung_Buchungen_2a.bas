Operation =1
Option =0
Where ="(((A_Buchungen.Haushaltsjahr)=Year(Now())))"
Begin InputTables
    Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Name ="A_Buchungen"
    Name ="A_Empfänger"
End
Begin OutputColumns
    Alias ="Einzelbetrag"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
    Expression ="A_Buchungen.angelegt"
    Alias ="Emfpänger"
    Expression ="[Anrede] & \", \" & [Name, Vorname]"
    Expression ="A_Buchungen.Verwendungszweck"
    Alias ="Anordnungsbetrag"
    Expression ="A_Buchungen.Betrag"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
    Expression ="A_Buchungen.Haushaltsjahr"
End
Begin Joins
    LeftTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    RightTable ="A_Buchungen"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen] = A_Buchungen.ID"
    Flag =2
    LeftTable ="A_Buchungen"
    RightTable ="A_Empfänger"
    Expression ="A_Buchungen.[ID Empfänger] = A_Empfänger.ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="A_Buchungen.angelegt"
        dbInteger "ColumnOrder" ="1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Verwendungszweck"
        dbInteger "ColumnOrder" ="3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Emfpänger"
        dbInteger "ColumnWidth" ="3255"
        dbInteger "ColumnOrder" ="2"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Anordnungsbetrag"
        dbInteger "ColumnWidth" ="1905"
        dbInteger "ColumnOrder" ="4"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Einzelbetrag"
        dbInteger "ColumnWidth" ="1350"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
        dbInteger "ColumnWidth" ="2070"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1393
    Bottom =984
    Left =-1
    Top =-1
    Right =1361
    Bottom =384
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =35
        Top =72
        Right =298
        Bottom =179
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
        Name =""
    End
    Begin
        Left =438
        Top =67
        Right =626
        Bottom =339
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =806
        Top =80
        Right =1139
        Bottom =262
        Top =0
        Name ="A_Empfänger"
        Name =""
    End
End
