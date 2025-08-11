Operation =1
Option =0
Where ="(((Maßnahmen.ID) Between F_Variable(\"lng_id_Massn_min\") And F_Variable(\"lng_i"
    "d_Massn_max\")) AND ((Maßnahmen_Eigenl_Stunden.ID_SB) Between F_Variable(\"lng_I"
    "D_SB_Min\") And F_Variable(\"lng_ID_SB_Max\")) AND ((Maßnahmen_Eigenl_Stunden.Ei"
    "genl_Datum) Between F_Variable(\"dt_Start_Datum\") And F_Variable(\"dt_Ende_Datu"
    "m\") And (Maßnahmen_Eigenl_Stunden.Eigenl_Datum) Between [Tarif_seit] And [Tarif"
    "_bis]))"
Begin InputTables
    Name ="Maßnahmen"
    Name ="Teile der Maßnahmen"
    Name ="Maßnahmen_Eigenl_Stunden"
    Name ="Sachbearbeiter"
    Name ="qry_010_20_20_Arbeitsplatzkosten"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_10_Liegenschaften"
    Name ="Sachbearbeiter"
    Alias ="Sachbearbeiter_1"
    Name ="tbl_010_20_10_Entgeltgruppen"
End
Begin OutputColumns
    Alias ="Massn"
    Expression ="[Bezeichnung] & \" -> \" & [Gebäudeteil] & \": \" & [Maßnahme]"
    Expression ="tbl_010_20_10_Entgeltgruppen.Entgeltgruppe"
    Alias ="Anz_Stunden"
    Expression ="Sum(CDbl([Stunden])*24)"
    Alias ="AE"
    Expression ="Sum(CCur(CDbl([Stunden])*24*[Arb_Stunden_Kosten]))"
End
Begin Joins
    LeftTable ="Maßnahmen"
    RightTable ="Teile der Maßnahmen"
    Expression ="Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]"
    Flag =1
    LeftTable ="qry_010_20_20_Arbeitsplatzkosten"
    RightTable ="Sachbearbeiter"
    Expression ="qry_010_20_20_Arbeitsplatzkosten.ID_EG_Gr = Sachbearbeiter.ID_EG_Gr"
    Flag =1
    LeftTable ="Maßnahmen_Eigenl_Stunden"
    RightTable ="Sachbearbeiter"
    Expression ="Maßnahmen_Eigenl_Stunden.ID_SB = Sachbearbeiter.ID"
    Flag =1
    LeftTable ="Teile der Maßnahmen"
    RightTable ="Sachbearbeiter_1"
    Expression ="[Teile der Maßnahmen].ID_SB = Sachbearbeiter_1.ID"
    Flag =1
    LeftTable ="tbl_010_20_10_Entgeltgruppen"
    RightTable ="Sachbearbeiter"
    Expression ="tbl_010_20_10_Entgeltgruppen.ID_EG_Gr = Sachbearbeiter.ID_EG_Gr"
    Flag =1
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Maßnahmen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
    LeftTable ="Teile der Maßnahmen"
    RightTable ="Maßnahmen_Eigenl_Stunden"
    Expression ="[Teile der Maßnahmen].ID = Maßnahmen_Eigenl_Stunden.ID_Teil_Massn"
    Flag =1
End
Begin OrderBy
    Expression ="[Bezeichnung] & \" -> \" & [Gebäudeteil] & \": \" & [Maßnahme]"
    Flag =0
End
Begin Groups
    Expression ="[Bezeichnung] & \" -> \" & [Gebäudeteil] & \": \" & [Maßnahme]"
    GroupLevel =0
    Expression ="tbl_010_20_10_Entgeltgruppen.Entgeltgruppe"
    GroupLevel =0
    Expression ="qry_010_20_20_Arbeitsplatzkosten.Arb_Stunden_Kosten"
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
dbBoolean "TotalsRow" ="-1"
dbInteger "RowHeight" ="317"
dbText "DatasheetFontName" ="Calibri"
dbInteger "DatasheetFontHeight" ="11"
dbInteger "DatasheetFontWeight" ="700"
dbBoolean "DatasheetFontItalic" ="0"
dbBoolean "DatasheetFontUnderline" ="0"
dbByte "TabularCharSet" ="0"
dbByte "TabularFamily" ="34"
dbLong "DatasheetForeColor" ="0"
dbLong "DatasheetForeColor12" ="0"
dbSingle "ECLScaleFactor" ="2"
Begin
    Begin
        dbText "Name" ="Anz_Stunden"
        dbInteger "ColumnWidth" ="1680"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="1"
    End
    Begin
        dbText "Name" ="AE"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="2237"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="AE "
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Massn"
        dbInteger "ColumnWidth" ="17469"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Massn "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_010_20_10_Entgeltgruppen.Entgeltgruppe"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1680"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =2453
    Bottom =1553
    Left =-1
    Top =-1
    Right =2410
    Bottom =1011
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =1880
        Top =340
        Right =2696
        Bottom =1508
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =2936
        Top =278
        Right =3710
        Bottom =1094
        Top =0
        Name ="Teile der Maßnahmen"
        Name =""
    End
    Begin
        Left =3926
        Top =220
        Right =4606
        Bottom =736
        Top =0
        Name ="Maßnahmen_Eigenl_Stunden"
        Name =""
    End
    Begin
        Left =4816
        Top =340
        Right =5834
        Bottom =1334
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
    Begin
        Left =6066
        Top =754
        Right =6856
        Bottom =1608
        Top =0
        Name ="qry_010_20_20_Arbeitsplatzkosten"
        Name =""
    End
    Begin
        Left =1024
        Top =522
        Right =1662
        Bottom =1746
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =78
        Top =584
        Right =788
        Bottom =1300
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =3920
        Top =842
        Right =4590
        Bottom =1802
        Top =0
        Name ="Sachbearbeiter_1"
        Name =""
    End
    Begin
        Left =6080
        Top =1644
        Right =6826
        Bottom =2024
        Top =0
        Name ="tbl_010_20_10_Entgeltgruppen"
        Name =""
    End
End
