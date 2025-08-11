Operation =1
Option =8
Where ="((([Teile der Maßnahmen].Umsetzungsjahr)=F_VAriable(\"lng_Kalk_Jahr\")) AND (([G"
    "eplante Finanzierung].Kalenderjahr)=F_VAriable(\"lng_Kalk_Jahr\")) AND (([Teile "
    "der Maßnahmen].ID_SB) Between F_VAriable(\"lng_ID_SB_Min\") And F_VAriable(\"lng"
    "_ID_SB_Max\")))"
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="Sachbearbeiter"
    Name ="Maßnahmen"
    Name ="Teile der Maßnahmen"
    Name ="Geplante Finanzierung"
End
Begin OutputColumns
    Expression ="Maßnahmen.ID"
    Expression ="[Teile der Maßnahmen].ID"
    Alias ="Obj_Massn"
    Expression ="[Bezeichnung] & \": \" & [Gebäudeteil] & \" -> \" & [Maßnahme]"
    Alias ="TM_Jahressumme"
    Expression ="[voraussichtliche Kosten]*(-1)"
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
    LeftTable ="Sachbearbeiter"
    RightTable ="Teile der Maßnahmen"
    Expression ="Sachbearbeiter.ID = [Teile der Maßnahmen].ID_SB"
    Flag =3
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
        dbInteger "ColumnWidth" ="4605"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TM_Jahressumme"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="2085"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Maßnahmen.ID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3435"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].ID"
        dbInteger "ColumnWidth" ="3030"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1325
    Bottom =1004
    Left =-1
    Top =-1
    Right =1301
    Bottom =530
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =28
        Top =87
        Right =289
        Bottom =345
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =351
        Top =69
        Right =522
        Bottom =244
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =1249
        Top =34
        Right =1475
        Bottom =219
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
    Begin
        Left =587
        Top =20
        Right =822
        Bottom =325
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =894
        Top =3
        Right =1185
        Bottom =342
        Top =0
        Name ="Teile der Maßnahmen"
        Name =""
    End
    Begin
        Left =898
        Top =364
        Right =1189
        Bottom =540
        Top =0
        Name ="Geplante Finanzierung"
        Name =""
    End
End
