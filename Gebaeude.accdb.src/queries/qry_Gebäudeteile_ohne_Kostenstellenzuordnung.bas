Operation =1
Option =0
Where ="(((tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst) Is Null) AND ((tbl_100_20"
    "_Gebäudeteile.Mietrelevant)=True))"
Begin InputTables
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Alias ="Obj"
    Expression ="[M_Strassenverzeichnis].[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \""
        ": \" & [tbl_100_10_Liegenschaften].[Bezeichnung] & \" --> \" & [tbl_100_20_Gebäu"
        "deteile].[Gebäudeteil]"
    Expression ="tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst"
    Expression ="tbl_100_40_Zuordn_Gebteile_Koststellen.Datum_von"
    Expression ="tbl_100_40_Zuordn_Gebteile_Koststellen.Datum_bis"
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen."
        "ID_Gebäudeteil"
    Flag =2
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =2
End
Begin OrderBy
    Expression ="[M_Strassenverzeichnis].[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \""
        ": \" & [tbl_100_10_Liegenschaften].[Bezeichnung] & \" --> \" & [tbl_100_20_Gebäu"
        "deteile].[Gebäudeteil]"
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
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Obj "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Obj"
        dbInteger "ColumnWidth" ="11715"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_40_Zuordn_Gebteile_Koststellen.Datum_bis"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_40_Zuordn_Gebteile_Koststellen.Datum_von"
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
    Bottom =563
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =549
        Top =188
        Right =811
        Bottom =507
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =956
        Top =150
        Right =1325
        Bottom =348
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
    Begin
        Left =139
        Top =165
        Right =438
        Bottom =369
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =950
        Top =362
        Right =1331
        Bottom =494
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
