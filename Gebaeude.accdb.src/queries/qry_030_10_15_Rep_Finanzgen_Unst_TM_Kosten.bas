Operation =1
Option =2
Where ="((([Geplante Finanzierung].Kalenderjahr)=F_VAriable(\"lng_Kalk_Jahr\")) AND (([T"
    "eile der Maßnahmen].Umsetzungsjahr) Is Null))"
Begin InputTables
    Name ="Maßnahmen"
    Name ="Geplante Finanzierung"
    Name ="Teile der Maßnahmen"
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Expression ="Maßnahmen.ID"
    Alias ="IDTM"
    Expression ="0"
    Alias ="Obj_Massn"
    Expression ="[Bezeichnung] & \": \" & [Gebäudeteil] & \" -> \" & [Maßnahme]"
    Alias ="Finanz_Jahressumme"
    Expression ="[Geplante Finanzierung].Betrag"
End
Begin Joins
    LeftTable ="Maßnahmen"
    RightTable ="Teile der Maßnahmen"
    Expression ="Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]"
    Flag =2
    LeftTable ="Maßnahmen"
    RightTable ="Geplante Finanzierung"
    Expression ="Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme"
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
    Expression ="[Bezeichnung] & \": \" & [Gebäudeteil] & \" -> \" & [Maßnahme]"
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
dbBoolean "TotalsRow" ="-1"
dbText "DatasheetFontName" ="Calibri"
dbInteger "DatasheetFontHeight" ="11"
dbInteger "DatasheetFontWeight" ="400"
dbBoolean "DatasheetFontItalic" ="0"
dbBoolean "DatasheetFontUnderline" ="0"
dbByte "TabularCharSet" ="0"
dbByte "TabularFamily" ="34"
dbLong "DatasheetForeColor" ="0"
dbLong "DatasheetForeColor12" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Obj_Massn"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="10110"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Finanz_Jahressumme"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="2400"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Maßnahmen.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="IDTM"
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
        Left =439
        Top =82
        Right =706
        Bottom =299
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =65
        Top =35
        Right =356
        Bottom =248
        Top =0
        Name ="Geplante Finanzierung"
        Name =""
    End
    Begin
        Left =811
        Top =64
        Right =1156
        Bottom =262
        Top =0
        Name ="Teile der Maßnahmen"
        Name =""
    End
    Begin
        Left =1222
        Top =296
        Right =1464
        Bottom =461
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =814
        Top =280
        Right =1151
        Bottom =465
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
