Operation =1
Option =0
Where ="(((tbl_100_20_Gebäudeteile.Bilanz_relevant)=True) AND ((tbl_100_20_Gebäudeteile."
    "ID_GebT_Zug_GebT) Is Null))"
Begin InputTables
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Alias ="Obj"
    Expression ="[NAme] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Lieg"
        "enschaften].[Bezeichnung] & \" -> \" & [tbl_100_20_Gebäudeteile].[Gebäudeteil]"
End
Begin Joins
    LeftTable ="M_Strassenverzeichnis"
    RightTable ="tbl_100_10_Liegenschaften"
    Expression ="M_Strassenverzeichnis.Kennummer = tbl_100_10_Liegenschaften.Kennummer_Straße"
    Flag =3
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
End
Begin OrderBy
    Expression ="[NAme] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Lieg"
        "enschaften].[Bezeichnung] & \" -> \" & [tbl_100_20_Gebäudeteile].[Gebäudeteil]"
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
        dbText "Name" ="Obj "
        dbInteger "ColumnWidth" ="4905"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Obj"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="11715"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
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
    Bottom =531
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =657
        Top =66
        Right =933
        Bottom =532
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =274
        Top =82
        Right =565
        Bottom =296
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =661
        Top =346
        Right =880
        Bottom =468
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
