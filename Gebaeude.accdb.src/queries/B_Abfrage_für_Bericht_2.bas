Operation =1
Option =2
Where ="(((Maßnahmen.Bilanz_relevant)=True))"
Begin InputTables
    Name ="Maßnahmen"
    Name ="geplante Finanzierung"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_10_Liegenschaften"
End
Begin OutputColumns
    Expression ="tbl_100_10_Liegenschaften.Bezeichnung"
    Expression ="tbl_100_20_Gebäudeteile.Gebäudeteil"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Expression ="Maßnahmen.Maßnahme"
    Expression ="Maßnahmen.[voraussichtliche Kosten gesamt]"
    Alias ="ID_Massn"
    Expression ="Maßnahmen.ID"
    Alias ="MinvonKalenderjahr"
    Expression ="Min([geplante Finanzierung].Kalenderjahr)"
End
Begin Joins
    LeftTable ="Maßnahmen"
    RightTable ="geplante Finanzierung"
    Expression ="Maßnahmen.ID = [geplante Finanzierung].ID_Massnahme"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Maßnahmen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil"
    Flag =1
End
Begin OrderBy
    Expression ="Min([geplante Finanzierung].Kalenderjahr)"
    Flag =0
End
Begin Groups
    Expression ="tbl_100_10_Liegenschaften.Bezeichnung"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.Gebäudeteil"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="Maßnahmen.Maßnahme"
    GroupLevel =0
    Expression ="Maßnahmen.[voraussichtliche Kosten gesamt]"
    GroupLevel =0
    Expression ="Maßnahmen.ID"
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
dbBoolean "TotalsRow" ="-1"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Maßnahmen.Maßnahme"
        dbInteger "ColumnWidth" ="7410"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.[voraussichtliche Kosten gesamt]"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="3915"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Massn "
        dbInteger "ColumnWidth" ="2115"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MinvonKalenderjahr"
        dbInteger "ColumnWidth" ="3255"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Massn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1890
    Bottom =1004
    Left =-1
    Top =-1
    Right =1866
    Bottom =607
    Left =0
    Top =6
    ColumnsShown =543
    Begin
        Left =848
        Top =237
        Right =1144
        Bottom =454
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =1226
        Top =198
        Right =1512
        Bottom =392
        Top =0
        Name ="geplante Finanzierung"
        Name =""
    End
    Begin
        Left =475
        Top =288
        Right =767
        Bottom =512
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =52
        Top =304
        Right =331
        Bottom =544
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
End
