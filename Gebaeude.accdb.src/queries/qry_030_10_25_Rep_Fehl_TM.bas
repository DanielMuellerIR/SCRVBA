Operation =1
Option =0
Where ="(((Maßnahmen.[nicht mehr erforderlich weil]) Is Null) AND ((IIf([Umsetzungsjahr]"
    "=2017,[Voraussichtliche Kosten],0))=0) AND (([Geplante Finanzierung].Kalenderjah"
    "r)=F_VAriable(\"lng_Kalk_Jahr\")))"
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="Maßnahmen"
    Name ="Teile der Maßnahmen"
    Name ="Geplante Finanzierung"
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
    Flag =3
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Maßnahmen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil"
    Flag =3
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =3
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
    Begin
        dbText "Name" ="ID_SB "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_SB"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =488
    Right =1862
    Bottom =976
    Left =-1
    Top =-1
    Right =1830
    Bottom =224
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =1148
        Top =359
        Right =1409
        Bottom =592
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =764
        Top =345
        Right =1057
        Bottom =542
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =338
        Top =145
        Right =573
        Bottom =450
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =765
        Top =128
        Right =1056
        Bottom =313
        Top =0
        Name ="Teile der Maßnahmen"
        Name =""
    End
    Begin
        Left =32
        Top =98
        Right =258
        Bottom =319
        Top =0
        Name ="Geplante Finanzierung"
        Name =""
    End
End
