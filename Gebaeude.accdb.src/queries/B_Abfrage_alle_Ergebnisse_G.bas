Operation =1
Option =0
Begin InputTables
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Expression ="tbl_100_20_Gebäudeteile.[Fassade (11%)]"
    Expression ="tbl_100_20_Gebäudeteile.[Fenster (14%)]"
    Expression ="tbl_100_20_Gebäudeteile.[Dächer (15%)]"
    Expression ="tbl_100_20_Gebäudeteile.[Sanitär (13%)]"
    Expression ="tbl_100_20_Gebäudeteile.[Innenwände Sanitärbereich (6%)]"
    Expression ="tbl_100_20_Gebäudeteile.[Bodenbeläge (8 %)]"
    Expression ="tbl_100_20_Gebäudeteile.[Innentüren (11%)]"
    Expression ="tbl_100_20_Gebäudeteile.[Heizung (15%)]"
    Expression ="tbl_100_20_Gebäudeteile.[Elektroinstallation (7%)]"
End
Begin Groups
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.[Fassade (11%)]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.[Fenster (14%)]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.[Dächer (15%)]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.[Sanitär (13%)]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.[Innenwände Sanitärbereich (6%)]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.[Bodenbeläge (8 %)]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.[Innentüren (11%)]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.[Heizung (15%)]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.[Elektroinstallation (7%)]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbBoolean "UseTransaction" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="B_Gebäudebestand.Kennummer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Fassade (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Fassade (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Fenster (14%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Fenster (14%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Dächer (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Dächer (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Sanitär (13%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Sanitär (13%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Innenwände Sanitärbereich (6%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Innenwände Sanitärbereich (6%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Bodenbeläge (8 %)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Bodenbeläge (8 %)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Innentüren (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Innentüren (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Heizung (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Heizung (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[Elektroinstallation (7%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Elektroinstallation (7%)]"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1565
    Bottom =1004
    Left =-1
    Top =-1
    Right =1541
    Bottom =467
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =516
        Bottom =405
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
