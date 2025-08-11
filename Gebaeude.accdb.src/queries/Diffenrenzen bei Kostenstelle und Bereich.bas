Operation =1
Option =0
Where ="(((tbl_100_10_Liegenschaften.Bezeichnung)=\"Objekt : Name\" & \" \" & [tbl_100_2"
    "0_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Liegenschaften].[Bezeichnung] &"
    " \" --> \" & [tbl_100_20_Gebäudeteile].[Gebäudeteil]) AND ((Right(Left([Kostenst"
    "elle],4),2))<>[BereichNr]))"
Begin InputTables
    Name ="M_Kostenstellen"
    Name ="M_Bereiche"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Expression ="tbl_100_10_Liegenschaften.Bezeichnung"
    Expression ="M_Bereiche.BereichNr"
    Expression ="M_Kostenstellen.Kostenstelle"
    Alias ="Bereich Kostenstelle"
    Expression ="Right(Left([Kostenstelle],4),2)"
End
Begin Joins
    LeftTable ="M_Bereiche"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]"
    Flag =3
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="M_Kostenstellen"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst"
    Flag =3
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen."
        "ID_Gebäudeteil"
    Flag =2
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =3
End
Begin OrderBy
    Expression ="tbl_100_10_Liegenschaften.Bezeichnung"
    Flag =0
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
        dbText "Name" ="M_Kostenstellen.Kostenstelle"
        dbInteger "ColumnWidth" ="1305"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bereich Kostenstelle"
        dbInteger "ColumnWidth" ="2100"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Objekte.Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Bereiche.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bezeichnung"
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
    Bottom =731
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =806
        Top =84
        Right =1139
        Bottom =208
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =402
        Top =479
        Right =588
        Bottom =590
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =91
        Top =70
        Right =313
        Bottom =249
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =395
        Top =53
        Right =729
        Bottom =210
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
    Begin
        Left =400
        Top =222
        Right =727
        Bottom =341
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =398
        Top =351
        Right =608
        Bottom =468
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
