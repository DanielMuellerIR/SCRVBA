Operation =1
Option =0
Where ="(((tbl_100_20_Gebäudeteile.Zust_B60)=False))"
Begin InputTables
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_200_10_10_Bewertungsbilanzen"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
    Name ="tbl_200_05_10_Bewertungsläufe"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Alias ="Obj"
    Expression ="[NAme] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Lieg"
        "enschaften].[Bezeichnung] & \" -> \" & [tbl_100_20_Gebäudeteile].[Gebäudeteil]"
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="tbl_200_10_10_Bewertungsbilanzen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_200_10_10_Bewertungsbilanzen.ID_Geb"
        "äudeteil"
    Flag =2
    LeftTable ="M_Strassenverzeichnis"
    RightTable ="tbl_100_10_Liegenschaften"
    Expression ="M_Strassenverzeichnis.Kennummer = tbl_100_10_Liegenschaften.Kennummer_Straße"
    Flag =3
    LeftTable ="tbl_200_05_10_Bewertungsläufe"
    RightTable ="tbl_200_10_10_Bewertungsbilanzen"
    Expression ="tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Be"
        "wert"
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
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1873
    Bottom =992
    Left =-1
    Top =-1
    Right =1849
    Bottom =453
    Left =220
    Top =0
    ColumnsShown =539
    Begin
        Left =622
        Top =70
        Right =898
        Bottom =437
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =1007
        Top =22
        Right =1375
        Bottom =339
        Top =0
        Name ="tbl_200_10_10_Bewertungsbilanzen"
        Name =""
    End
    Begin
        Left =47
        Top =86
        Right =338
        Bottom =300
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =377
        Top =211
        Right =596
        Bottom =333
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =1486
        Top =38
        Right =1776
        Bottom =185
        Top =0
        Name ="tbl_200_05_10_Bewertungsläufe"
        Name =""
    End
End
