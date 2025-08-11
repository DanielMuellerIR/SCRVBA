Operation =1
Option =0
Having ="(((Sum(qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul.Finanz_Jahressumme))<>0))"
Begin InputTables
    Name ="qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul"
    Name ="Maßnahmen"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Alias ="Objekt"
    Expression ="[M_Strassenverzeichnis].[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \""
        ": \" & [Bezeichnung] & \" -> \" & [Gebäudeteil]"
    Expression ="Maßnahmen.Maßnahme"
    Expression ="qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul.ID"
    Alias ="Unstimmig"
    Expression ="Sum(qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul.Finanz_Jahressumme)"
End
Begin Joins
    LeftTable ="qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul"
    RightTable ="Maßnahmen"
    Expression ="qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul.ID = Maßnahmen.ID"
    Flag =1
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Maßnahmen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
End
Begin Groups
    Expression ="[M_Strassenverzeichnis].[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \""
        ": \" & [Bezeichnung] & \" -> \" & [Gebäudeteil]"
    GroupLevel =0
    Expression ="Maßnahmen.Maßnahme"
    GroupLevel =0
    Expression ="qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul.ID"
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
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.Maßnahme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="5505"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Unstimmig "
        dbInteger "ColumnWidth" ="3105"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Unstimmig"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1874
    Bottom =988
    Left =-1
    Top =-1
    Right =1850
    Bottom =510
    Left =0
    Top =0
    ColumnsShown =541
    Begin
        Left =115
        Top =37
        Right =444
        Bottom =168
        Top =0
        Name ="qry_030_10_30_Rep_Teilm_Finanz_TM_Kosten_kumul"
        Name =""
    End
    Begin
        Left =511
        Top =36
        Right =773
        Bottom =216
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =852
        Top =84
        Right =1233
        Bottom =306
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =1307
        Top =100
        Right =1664
        Bottom =248
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =1312
        Top =259
        Right =1666
        Bottom =370
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
