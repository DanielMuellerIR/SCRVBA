Operation =1
Option =0
Begin InputTables
    Name ="tbl_010_20_20_Arbeitsplatzkosten"
    Name ="tbl_010_20_10_Entgeltgruppen"
End
Begin OutputColumns
    Expression ="tbl_010_20_20_Arbeitsplatzkosten.*"
    Alias ="Verw_Gemeink"
    Expression ="CCur([Personalkosten]*[Verw_Gemeink_Proz])"
    Alias ="Arb_Platz_Kosten"
    Expression ="[Personalkosten]+[Sachkostenpauschale]+[Verw_Gemeink]"
    Alias ="Arb_Stunden_Kosten"
    Expression ="CCur([Arb_Platz_Kosten]/[Anz_ArbStunden_JAhr])"
End
Begin Joins
    LeftTable ="tbl_010_20_10_Entgeltgruppen"
    RightTable ="tbl_010_20_20_Arbeitsplatzkosten"
    Expression ="tbl_010_20_10_Entgeltgruppen.ID_EG_Gr = tbl_010_20_20_Arbeitsplatzkosten.ID_EG_G"
        "r"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_010_20_20_Arbeitsplatzkosten.Tarif_bis"
    Flag =0
    Expression ="tbl_010_20_10_Entgeltgruppen.Sort"
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
dbText "DatasheetFontName" ="Calibri"
dbInteger "DatasheetFontHeight" ="11"
dbInteger "DatasheetFontWeight" ="700"
dbBoolean "DatasheetFontItalic" ="0"
dbBoolean "DatasheetFontUnderline" ="0"
dbByte "TabularCharSet" ="0"
dbByte "TabularFamily" ="34"
dbLong "DatasheetForeColor" ="0"
dbLong "DatasheetForeColor12" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="tbl_010_20_20_Arbeitsplatzkosten.ID_ArbPl_Kosten"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="0"
        dbBoolean "ColumnHidden" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="tbl_010_20_20_Arbeitsplatzkosten.Verw_Gemeink_Proz"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="tbl_010_20_20_Arbeitsplatzkosten.Tarif_seit"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="tbl_010_20_20_Arbeitsplatzkosten.Tarif_bis"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="tbl_010_20_20_Arbeitsplatzkosten.ID_EG_Gr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="tbl_010_20_20_Arbeitsplatzkosten.Personalkosten"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="tbl_010_20_20_Arbeitsplatzkosten.Anz_ArbStunden_JAhr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2503"
        dbInteger "ColumnOrder" ="10"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Verw_Gemeink"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="Arb_Platz_Kosten"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="Arb_Stunden_Kosten"
        dbInteger "ColumnWidth" ="3026"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_010_20_20_Arbeitsplatzkosten.Sachkostenpauschale"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-12
    Top =-52
    Right =3233
    Bottom =1946
    Left =-1
    Top =-1
    Right =3192
    Bottom =799
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =794
        Top =70
        Right =1229
        Bottom =470
        Top =0
        Name ="tbl_010_20_20_Arbeitsplatzkosten"
        Name =""
    End
    Begin
        Left =327
        Top =138
        Right =579
        Bottom =390
        Top =0
        Name ="tbl_010_20_10_Entgeltgruppen"
        Name =""
    End
End
