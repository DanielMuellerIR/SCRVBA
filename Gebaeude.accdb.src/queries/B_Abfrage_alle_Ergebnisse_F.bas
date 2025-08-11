Operation =1
Option =0
Begin InputTables
    Name ="Maßnahmen"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_10_Liegenschaften"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Alias ="Summe von voraussichtliche Kosten gesamt"
    Expression ="Sum(Maßnahmen.[voraussichtliche Kosten gesamt])"
End
Begin Joins
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="Maßnahmen"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = Maßnahmen.ID_Gebäude"
    Flag =2
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =2
End
Begin Groups
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
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
        dbText "Name" ="Summe von voraussichtliche Kosten gesamt"
        dbInteger "ColumnWidth" ="4335"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1583
    Bottom =1004
    Left =-1
    Top =-1
    Right =1559
    Bottom =539
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =573
        Top =259
        Right =891
        Bottom =460
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =573
        Top =79
        Right =895
        Bottom =244
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =34
        Top =95
        Right =453
        Bottom =375
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
End
