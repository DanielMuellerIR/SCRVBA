Operation =1
Option =0
Begin InputTables
    Name ="Fiktive Flächen berechnen"
End
Begin OutputColumns
    Alias ="Summe von Bruttogrundfläche"
    Expression ="Sum([Fiktive Flächen berechnen].Berechnungsfläche)"
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
        dbText "Name" ="Summe von Bruttogrundfläche"
        dbInteger "ColumnWidth" ="5070"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Fixed"
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
    Bottom =327
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =394
        Top =48
        Right =644
        Bottom =282
        Top =0
        Name ="Fiktive Flächen berechnen"
        Name =""
    End
End
