Operation =1
Option =0
Begin InputTables
    Name ="Aufträge"
End
Begin OutputColumns
    Expression ="Aufträge.ID_Hauptauftr"
    Alias ="SummevonWert Auftrag"
    Expression ="Sum(Aufträge.[Wert Auftrag])"
End
Begin Groups
    Expression ="Aufträge.ID_Hauptauftr"
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
        dbText "Name" ="Aufträge.ID_Hauptauftr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SummevonWert Auftrag"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1428
    Bottom =996
    Left =-1
    Top =-1
    Right =1396
    Bottom =510
    Left =0
    Top =0
    ColumnsShown =541
    Begin
        Left =136
        Top =35
        Right =527
        Bottom =292
        Top =0
        Name ="Aufträge"
        Name =""
    End
End
