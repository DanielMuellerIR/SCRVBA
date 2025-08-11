Operation =1
Option =0
Where ="(((tbl_100_20_Gebäudeteile.Gebaeudekennung) Is Null) AND ((tbl_100_20_Gebäudetei"
    "le.ID_GebT_Zug_GebT) Is Null))"
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
    Name ="tbl_070_10_Flure"
    Name ="tbl_050_10_Gemarkungen"
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Alias ="Objekt"
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung]"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Expression ="tbl_050_10_Gemarkungen.Gemarkung"
    Expression ="tbl_070_10_Flure.Flur"
    Alias ="Flurstücke"
    Expression ="fc_Flurstuecke([tbl_100_10_Liegenschaften].[ID_Gebäude])"
    Alias ="Fehler"
    Expression ="\"12 : zum Gebäudeteil fehlt die Gebäudekennung\""
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="tbl_050_10_Gemarkungen"
    RightTable ="tbl_100_10_Liegenschaften"
    Expression ="tbl_050_10_Gemarkungen.ID_Gemarkung = tbl_100_10_Liegenschaften.ID_Gemarkung"
    Flag =3
    LeftTable ="tbl_070_10_Flure"
    RightTable ="tbl_100_10_Liegenschaften"
    Expression ="tbl_070_10_Flure.ID_Flur = tbl_100_10_Liegenschaften.ID_Flur"
    Flag =3
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =2
End
Begin OrderBy
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung]"
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
        dbText "Name" ="Fehler"
        dbInteger "ColumnWidth" ="8250"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Flurstücke "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="7620"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Flurstücke"
        dbInteger "ColumnWidth" ="2715"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_070_10_Flure.Flur"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_050_10_Gemarkungen.Gemarkung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebaeudekennung"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-12
    Top =-52
    Right =3213
    Bottom =1798
    Left =-1
    Top =-1
    Right =3172
    Bottom =714
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =57
        Top =76
        Right =310
        Bottom =433
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =1087
        Top =107
        Right =1312
        Bottom =222
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =949
        Top =453
        Right =1145
        Bottom =563
        Top =0
        Name ="tbl_070_10_Flure"
        Name =""
    End
    Begin
        Left =1017
        Top =280
        Right =1243
        Bottom =407
        Top =0
        Name ="tbl_050_10_Gemarkungen"
        Name =""
    End
    Begin
        Left =378
        Top =60
        Right =800
        Bottom =490
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
