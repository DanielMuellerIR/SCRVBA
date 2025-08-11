Operation =1
Option =0
Where ="(((Haushaltsdaten.Jahr)=F_Variable(\"lng_Kalk_Jahr\")) AND ((Maßnahmen.[nicht me"
    "hr erforderlich weil]) Is Null))"
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="Maßnahmen"
    Name ="M_Strassenverzeichnis"
    Name ="Finanzquellen"
    Name ="Haushaltsdaten"
    Name ="Buchungsstellen"
    Name ="qry_rpt_300_10_05_Gepl_Erled_Finanzierung"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Alias ="Objekt"
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    Expression ="Maßnahmen.Maßnahme"
    Expression ="Buchungsstellen.Buchungsstelle"
    Expression ="Finanzquellen.Finanzquelle"
    Alias ="HHR_pl_Ansatz"
    Expression ="CCur(Nz([HHR]))+CCur(Nz([Ansatz]))"
    Expression ="Haushaltsdaten.bez_Rechnung"
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="Maßnahmen"
    RightTable ="Haushaltsdaten"
    Expression ="Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =1
    LeftTable ="Buchungsstellen"
    RightTable ="Haushaltsdaten"
    Expression ="Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]"
    Flag =3
    LeftTable ="Haushaltsdaten"
    RightTable ="Finanzquellen"
    Expression ="Haushaltsdaten.ID_Fin_Qu = Finanzquellen.ID_Fin_Qu"
    Flag =2
    LeftTable ="Maßnahmen"
    RightTable ="qry_rpt_300_10_05_Gepl_Erled_Finanzierung"
    Expression ="Maßnahmen.ID = qry_rpt_300_10_05_Gepl_Erled_Finanzierung.ID_Massnahme"
    Flag =1
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Maßnahmen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
End
Begin OrderBy
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    Flag =0
End
Begin Groups
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    GroupLevel =0
    Expression ="Maßnahmen.Maßnahme"
    GroupLevel =0
    Expression ="Buchungsstellen.Buchungsstelle"
    GroupLevel =0
    Expression ="Finanzquellen.Finanzquelle"
    GroupLevel =0
    Expression ="CCur(Nz([HHR]))+CCur(Nz([Ansatz]))"
    GroupLevel =0
    Expression ="Haushaltsdaten.bez_Rechnung"
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
        dbText "Name" ="Maßnahmen.Maßnahme"
        dbInteger "ColumnWidth" ="6240"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="5520"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Buchungsstellen.Buchungsstelle"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2685"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Finanzquellen.Finanzquelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="HHR_pl_Ansatz "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="HHR_pl_Ansatz"
        dbInteger "ColumnWidth" ="2775"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.bez_Rechnung"
        dbInteger "ColumnWidth" ="2280"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1309
    Bottom =1004
    Left =-1
    Top =-1
    Right =1285
    Bottom =668
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =8
        Top =131
        Right =289
        Bottom =495
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =365
        Top =115
        Right =614
        Bottom =400
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =694
        Top =67
        Right =924
        Bottom =389
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =697
        Top =402
        Right =899
        Bottom =511
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =1335
        Top =235
        Right =1497
        Bottom =339
        Top =0
        Name ="Finanzquellen"
        Name =""
    End
    Begin
        Left =1009
        Top =11
        Right =1244
        Bottom =246
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =1326
        Top =26
        Right =1755
        Bottom =202
        Top =0
        Name ="Buchungsstellen"
        Name =""
    End
    Begin
        Left =1000
        Top =359
        Right =1325
        Bottom =518
        Top =0
        Name ="qry_rpt_300_10_05_Gepl_Erled_Finanzierung"
        Name =""
    End
End
