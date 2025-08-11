Operation =1
Option =0
Where ="(((Year([Aktivierungs_Datum]))>F_Variable(\"lng_Kalk_Jahr\")) AND ((tbl_100_20_G"
    "ebäudeteile.ID_Gebäudeteil) Between F_Variable(\"lng_ID_Geb_Teil_min\") And F_Va"
    "riable(\"lng_ID_Geb_Teil_max\")) AND ((tbl_100_20_Gebäudeteile.Bilanz_relevant)="
    "True) AND ((tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_seit) Is Null) AND ((B_Sa"
    "nierungsstau_Werterhöhung.DS_Typ)=2))"
Begin InputTables
    Name ="B_Sanierungsstau_Werterhöhung"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Alias ="Bewertungsjahr"
    Expression ="F_Variable(\"lng_Kalk_Jahr\")"
    Alias ="Objekt"
    Expression ="[M_Strassenverzeichnis].[name] & \" \" & [tbl_100_20_Gebäudeteile].[HAus_Nr] & \""
        " : \" & Chr(13) & Chr(10) & [Bezeichnung] & \" -> \" & [Gebäudeteil]"
    Expression ="B_Sanierungsstau_Werterhöhung.Bauteil"
    Expression ="B_Sanierungsstau_Werterhöhung.Aktivierungs_Datum"
    Alias ="Werterhöhung"
    Expression ="B_Sanierungsstau_Werterhöhung.Mehrwert"
    Expression ="B_Sanierungsstau_Werterhöhung.Beruecks_Wiederbesch_Wert"
    Expression ="B_Sanierungsstau_Werterhöhung.Nutz_dauer_Jahre_Verl"
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="B_Sanierungsstau_Werterhöhung"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäud"
        "eteil"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
End
Begin OrderBy
    Expression ="[M_Strassenverzeichnis].[name] & \" \" & [tbl_100_20_Gebäudeteile].[HAus_Nr] & \""
        " : \" & Chr(13) & Chr(10) & [Bezeichnung] & \" -> \" & [Gebäudeteil]"
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
dbInteger "RowHeight" ="600"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="5280"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="Bewertungsjahr"
        dbInteger "ColumnWidth" ="1890"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="Werterhöhung "
        dbInteger "ColumnWidth" ="1515"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Werterhöhung"
        dbInteger "ColumnWidth" ="2655"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Bauteil"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Aktivierungs_Datum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Beruecks_Wiederbesch_Wert"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Nutz_dauer_Jahre_Verl"
        dbInteger "ColumnOrder" ="6"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =76
    Top =131
    Right =3746
    Bottom =1786
    Left =-1
    Top =-1
    Right =3639
    Bottom =907
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =810
        Top =78
        Right =1364
        Bottom =472
        Top =0
        Name ="B_Sanierungsstau_Werterhöhung"
        Name =""
    End
    Begin
        Left =373
        Top =68
        Right =664
        Bottom =424
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =45
        Top =85
        Right =270
        Bottom =227
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =837
        Top =510
        Right =1419
        Bottom =735
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
