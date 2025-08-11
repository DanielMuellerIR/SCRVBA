Operation =1
Option =0
Begin InputTables
    Name ="Mittelabfluss_1_Zeitablauf"
End
Begin OutputColumns
    Expression ="Mittelabfluss_1_Zeitablauf.Archivierungsdatum"
    Alias ="Summe von Summe von Ansatz"
    Expression ="Sum(Mittelabfluss_1_Zeitablauf.[Summe von Ansatz])"
    Alias ="Summe von Summe von HHR"
    Expression ="Sum(Mittelabfluss_1_Zeitablauf.[Summe von HHR])"
    Alias ="Summe von Summe von VE"
    Expression ="Sum(Mittelabfluss_1_Zeitablauf.[Summe von VE])"
    Alias ="Summe von Summe von zufVfg"
    Expression ="Sum(Mittelabfluss_1_Zeitablauf.[Summe von zufVfg])"
End
Begin Groups
    Expression ="Mittelabfluss_1_Zeitablauf.Archivierungsdatum"
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
        dbText "Name" ="Summe von Summe von Ansatz"
        dbInteger "ColumnWidth" ="3180"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von Summe von HHR"
        dbInteger "ColumnWidth" ="2955"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von Summe von VE"
        dbInteger "ColumnWidth" ="2805"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von Summe von zufVfg"
        dbInteger "ColumnWidth" ="3150"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausdr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Mittelabfluss_1_Zeitablauf.Archivierungsdatum"
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
    Bottom =222
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =432
        Bottom =199
        Top =0
        Name ="Mittelabfluss_1_Zeitablauf"
        Name =""
    End
End
