Operation =1
Option =2
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="M_Strassenverzeichnis"
    Name ="tbl_070_10_Flure"
    Name ="tbl_100_05_QV_Liegensch_Flurstuecke"
    Name ="tbl_050_10_Gemarkungen"
End
Begin OutputColumns
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude"
    Expression ="tbl_100_10_Liegenschaften.Bezeichnung"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Expression ="tbl_100_20_Gebäudeteile.Gebäudeteil"
    Alias ="Lage des Gebäudes"
    Expression ="[Name] & [tbl_100_20_Gebäudeteile].[Haus_Nr]"
    Expression ="tbl_050_10_Gemarkungen.Gemarkung"
    Expression ="tbl_070_10_Flure.Flur"
    Alias ="Flurstücke"
    Expression ="fc_Flurstuecke([tbl_100_10_Liegenschaften].[ID_Gebäude])"
    Expression ="tbl_100_10_Liegenschaften.Fläche"
    Expression ="tbl_100_10_Liegenschaften.Bodenrichtwert"
    Expression ="tbl_100_10_Liegenschaften.[voll berechnen]"
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
    RightTable ="tbl_100_05_QV_Liegensch_Flurstuecke"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_05_QV_Liegensch_Flurstuecke.ID_Ge"
        "bäude"
    Flag =2
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =3
End
Begin OrderBy
    Expression ="tbl_100_10_Liegenschaften.Bezeichnung"
    Flag =0
    Expression ="tbl_100_20_Gebäudeteile.Gebäudeteil"
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
        dbText "Name" ="tbl_100_10_Liegenschaften.ID_Gebäude"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1560"
        dbInteger "ColumnOrder" ="1"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebäudeteil"
        dbInteger "ColumnWidth" ="4125"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="Lage des Gebäudes"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2970"
        dbInteger "ColumnOrder" ="5"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Flurstücke"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2595"
        dbInteger "ColumnOrder" ="10"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Flurstücke "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Fläche"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="6"
        dbInteger "ColumnWidth" ="1260"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Bodenrichtwert"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2085"
        dbInteger "ColumnOrder" ="7"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Bezeichnung"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.[voll berechnen]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1815"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="tbl_070_10_Flure.Flur"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="780"
        dbInteger "ColumnOrder" ="9"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_050_10_Gemarkungen.Gemarkung"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1575"
        dbInteger "ColumnOrder" ="8"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1650
    Bottom =854
    Left =-1
    Top =-1
    Right =1626
    Bottom =515
    Left =0
    Top =6
    ColumnsShown =539
    Begin
        Left =373
        Top =88
        Right =657
        Bottom =325
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =27
        Top =70
        Right =250
        Bottom =440
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =378
        Top =332
        Right =611
        Bottom =445
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =746
        Top =346
        Right =948
        Bottom =482
        Top =0
        Name ="tbl_070_10_Flure"
        Name =""
    End
    Begin
        Left =739
        Top =71
        Right =1044
        Bottom =190
        Top =0
        Name ="tbl_100_05_QV_Liegensch_Flurstuecke"
        Name =""
    End
    Begin
        Left =743
        Top =202
        Right =955
        Bottom =336
        Top =0
        Name ="tbl_050_10_Gemarkungen"
        Name =""
    End
End
