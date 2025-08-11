Operation =1
Option =0
Where ="(((B_Sanierungsstau_Werterhöhung.DS_Typ)=1))"
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="B_Sanierungsstau_Werterhöhung"
End
Begin OutputColumns
    Expression ="tbl_100_10_Liegenschaften.Bezeichnung"
    Expression ="tbl_100_10_Liegenschaften.Kennummer_Straße"
    Expression ="tbl_100_10_Liegenschaften.Haus_Nr"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude"
    Expression ="tbl_100_20_Gebäudeteile.Gebäudeteil"
    Expression ="B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil"
    Expression ="B_Sanierungsstau_Werterhöhung.Herstellkosten"
    Expression ="tbl_100_20_Gebäudeteile.Neubauwert_ab_2000"
    Expression ="tbl_100_20_Gebäudeteile.Baujahr_real"
    Expression ="B_Sanierungsstau_Werterhöhung.DS_Typ"
    Alias ="HK_fuer_WBW"
    Expression ="IIf(Val(Nz([Neubauwert_ab_2000]))=0,[Herstellkosten],[Neubauwert_ab_2000])"
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="B_Sanierungsstau_Werterhöhung"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäud"
        "eteil"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
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
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Bezeichnung"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="5265"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Herstellkosten"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.DS_Typ"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3225"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Neubauwert_ab_2000"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2310"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebäudeteil"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2700"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Baujahr_real"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.ID_Gebäude"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1410"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Kennummer_Straße"
        dbInteger "ColumnWidth" ="2318"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Haus_Nr"
        dbInteger "ColumnWidth" ="1005"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="HK_fuer_WBW"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2408"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =5341
    Bottom =2834
    Left =-1
    Top =-1
    Right =5298
    Bottom =2116
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =96
        Top =24
        Right =436
        Bottom =994
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =480
        Top =24
        Right =972
        Bottom =2020
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =1378
        Top =22
        Right =1836
        Bottom =834
        Top =0
        Name ="B_Sanierungsstau_Werterhöhung"
        Name =""
    End
End
