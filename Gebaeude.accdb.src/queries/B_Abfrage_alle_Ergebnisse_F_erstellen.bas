Operation =2
Name ="B_Ergebnisse_F"
Option =0
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="Maßnahmen"
    Name ="tbl_100_20_Gebäudeteile"
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
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Summe von voraussichtliche Kosten gesamt"
        dbInteger "ColumnWidth" ="4335"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.Kennummer"
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
    Bottom =570
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =23
        Top =56
        Right =281
        Bottom =298
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =424
        Top =268
        Right =695
        Bottom =517
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =424
        Top =40
        Right =644
        Bottom =254
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
