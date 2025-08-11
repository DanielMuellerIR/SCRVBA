Operation =1
Option =0
Begin InputTables
    Name ="Archiv monatlicher Mittelabfluss"
End
Begin OutputColumns
    Expression ="[Archiv monatlicher Mittelabfluss].Buchungsstelle"
    Expression ="[Archiv monatlicher Mittelabfluss].Archivierungsdatum"
    Alias ="Summe von Ansatz"
    Expression ="Sum([Archiv monatlicher Mittelabfluss].Ansatz)"
    Alias ="Summe von HHR"
    Expression ="Sum([Archiv monatlicher Mittelabfluss].HHR)"
    Alias ="Summe von VE"
    Expression ="Sum([Archiv monatlicher Mittelabfluss].VE)"
    Alias ="Summe von zufVfg"
    Expression ="Sum([Archiv monatlicher Mittelabfluss].zufVfg)"
    Expression ="[Archiv monatlicher Mittelabfluss].Aufträge"
    Expression ="[Archiv monatlicher Mittelabfluss].sollgesamt"
End
Begin OrderBy
    Expression ="[Archiv monatlicher Mittelabfluss].Buchungsstelle"
    Flag =0
    Expression ="[Archiv monatlicher Mittelabfluss].Archivierungsdatum"
    Flag =0
End
Begin Groups
    Expression ="[Archiv monatlicher Mittelabfluss].Buchungsstelle"
    GroupLevel =0
    Expression ="[Archiv monatlicher Mittelabfluss].Archivierungsdatum"
    GroupLevel =0
    Expression ="[Archiv monatlicher Mittelabfluss].Aufträge"
    GroupLevel =0
    Expression ="[Archiv monatlicher Mittelabfluss].sollgesamt"
    GroupLevel =0
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
        dbText "Name" ="[Archiv monatlicher Mittelabfluss].Buchungsstelle"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von Ansatz"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von HHR"
        dbInteger "ColumnWidth" ="1755"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von zufVfg"
        dbInteger "ColumnWidth" ="1950"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von VE"
        dbInteger "ColumnWidth" ="1605"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Archiv monatlicher Mittelabfluss].Archivierungsdatum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Archiv monatlicher Mittelabfluss].Aufträge"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Archiv monatlicher Mittelabfluss].sollgesamt"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1650
    Bottom =942
    Left =-1
    Top =-1
    Right =1626
    Bottom =374
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =391
        Bottom =323
        Top =0
        Name ="Archiv monatlicher Mittelabfluss"
        Name =""
    End
End
