Operation =1
Option =0
Begin InputTables
    Name ="Fiktive Flächen berechnen"
End
Begin OutputColumns
    Alias ="Summe von Bruttogrundfläche"
    Expression ="Sum([Fiktive Flächen berechnen].Berechnungsfläche)"
    Expression ="[Fiktive Flächen berechnen].ID"
End
Begin Groups
    Expression ="[Fiktive Flächen berechnen].ID"
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
        dbText "Name" ="Summe von Bruttogrundfläche"
        dbInteger "ColumnWidth" ="3060"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Fixed"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Fiktive Flächen berechnen].ID"
        dbInteger "ColumnWidth" ="465"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1419
    Bottom =992
    Left =-1
    Top =-1
    Right =1395
    Bottom =275
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =288
        Bottom =188
        Top =0
        Name ="Fiktive Flächen berechnen"
        Name =""
    End
End
