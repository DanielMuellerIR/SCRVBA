Operation =1
Option =0
Where ="(((Mid([Auftragsnr],4,4))=Year(Date())))"
Begin InputTables
    Name ="tbl_20_10_Aufträge"
End
Begin OutputColumns
    Alias ="Hoechste_Nummer"
    Expression ="Max(Val(Right([Auftragsnr],4)))"
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
        dbText "Name" ="Hoechste_Nummer "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hoechste_Nummer"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="5565"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1492
    Bottom =853
    Left =-1
    Top =-1
    Right =1468
    Bottom =252
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =368
        Bottom =260
        Top =0
        Name ="tbl_20_10_Aufträge"
        Name =""
    End
End
