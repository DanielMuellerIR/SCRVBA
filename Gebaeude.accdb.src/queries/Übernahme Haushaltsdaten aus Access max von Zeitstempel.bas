Operation =1
Option =0
Begin InputTables
    Name ="Hhstb60_doppik"
End
Begin OutputColumns
    Alias ="Max von Zeitstempel"
    Expression ="Max(Hhstb60_doppik.Zeitstempel)"
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
        dbText "Name" ="Max von Zeitstempel"
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
    Bottom =261
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =291
        Bottom =256
        Top =0
        Name ="Hhstb60_doppik"
        Name =""
    End
End
