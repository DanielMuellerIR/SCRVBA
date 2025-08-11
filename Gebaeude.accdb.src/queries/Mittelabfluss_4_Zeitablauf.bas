Operation =1
Option =0
Begin InputTables
    Name ="Mittelabfluss_3_Zeitablauf"
End
Begin OutputColumns
    Expression ="Mittelabfluss_3_Zeitablauf.Archivierungsdatum"
    Alias ="Summe von Aufträge"
    Expression ="Sum(Mittelabfluss_3_Zeitablauf.Aufträge)"
    Alias ="Summe von sollgesamt"
    Expression ="Sum(Mittelabfluss_3_Zeitablauf.sollgesamt)"
End
Begin Groups
    Expression ="Mittelabfluss_3_Zeitablauf.Archivierungsdatum"
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
Begin
    Begin
        dbText "Name" ="Summe von Aufträge"
        dbInteger "ColumnWidth" ="2160"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von sollgesamt"
        dbInteger "ColumnWidth" ="2370"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Mittelabfluss_3_Zeitablauf.Archivierungsdatum"
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
    Bottom =110
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="Mittelabfluss_3_Zeitablauf"
        Name =""
    End
End
