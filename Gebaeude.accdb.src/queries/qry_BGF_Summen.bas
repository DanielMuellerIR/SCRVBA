Operation =1
Option =0
Where ="(((tbl_100_20_Gebäudeteile.Mietrelevant)=True))"
Begin InputTables
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Alias ="KN_Bereich"
    Expression ="tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]"
    Alias ="Sportfläche"
    Expression ="tbl_100_20_Gebäudeteile.Sportfläche"
    Alias ="Sum_BGF_Sp_Fl"
    Expression ="Sum(IIf([Sportfläche]=True,[BGF],0))"
    Alias ="Sum_BGF_Gb_LS"
    Expression ="Sum(IIf([Sportfläche]=False,[BGF],0))"
End
Begin Groups
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.Sportfläche"
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
dbMemo "Filter" ="([Lookup_ID__Gebäude].[LS]=\"WALDENBURGER STR. 130: Janusz-Korczak-Gesamtschule\""
    ")"
Begin
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäude"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sportfläche "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sportfläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="KN_Bereich "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="KN_Bereich"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sum_BGF_Sp_Fl"
        dbInteger "ColumnWidth" ="1695"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sum_BGF_Gb_LS"
        dbInteger "ColumnWidth" ="1755"
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
    Right =1412
    Bottom =992
    Left =-1
    Top =-1
    Right =1388
    Bottom =479
    Left =0
    Top =0
    ColumnsShown =541
    Begin
        Left =300
        Top =26
        Right =642
        Bottom =435
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
