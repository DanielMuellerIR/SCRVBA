Operation =1
Option =2
Begin InputTables
    Name ="Archiv monatlicher Mittelabfluss"
End
Begin OutputColumns
    Expression ="[Archiv monatlicher Mittelabfluss].Buchungsstelle"
    Expression ="[Archiv monatlicher Mittelabfluss].Archivierungsdatum"
    Expression ="[Archiv monatlicher Mittelabfluss].Aufträge"
    Expression ="[Archiv monatlicher Mittelabfluss].sollgesamt"
End
Begin OrderBy
    Expression ="[Archiv monatlicher Mittelabfluss].Buchungsstelle"
    Flag =0
    Expression ="[Archiv monatlicher Mittelabfluss].Archivierungsdatum"
    Flag =0
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
        dbText "Name" ="[Archiv monatlicher Mittelabfluss].Buchungsstelle"
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
    State =0
    Left =16
    Top =38
    Right =1409
    Bottom =982
    Left =-1
    Top =-1
    Right =1361
    Bottom =217
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =410
        Bottom =230
        Top =0
        Name ="Archiv monatlicher Mittelabfluss"
        Name =""
    End
End
