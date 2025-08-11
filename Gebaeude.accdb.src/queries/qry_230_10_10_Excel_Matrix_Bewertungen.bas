Operation =1
Option =2
Where ="(((fc_ID_WE_Vor_DS([B_Sanierungsstau_Werterhöhung].[ID_Werterh])=[B_Sanierungsst"
    "au_Werterhöhung_Vor_DS].[id_Werterh] Or (fc_ID_WE_Vor_DS([B_Sanierungsstau_Werte"
    "rhöhung].[ID_Werterh])=0 And [B_Sanierungsstau_Werterhöhung_Vor_DS].[DS_Typ]=1))"
    "=True) AND ((tbl_100_20_Gebäudeteile.ID_Gebäudeteil) Between F_Variable(\"lng_ID"
    "_Geb_Teil_Min\") And F_Variable(\"lng_ID_Geb_Teil_Max\")))"
Begin InputTables
    Name ="B_Sanierungsstau_Werterhöhung"
    Name ="B_Sanierungsstau_Werterhöhung"
    Alias ="B_Sanierungsstau_Werterhöhung_Vor_DS"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Expression ="B_Sanierungsstau_Werterhöhung.ID_Werterh"
    Alias ="Objekt"
    Expression ="[NAme] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    Expression ="B_Sanierungsstau_Werterhöhung.Bauteil"
    Expression ="B_Sanierungsstau_Werterhöhung.DS_Typ"
    Expression ="B_Sanierungsstau_Werterhöhung.Aktivierungs_Datum"
    Expression ="B_Sanierungsstau_Werterhöhung.Herstellkosten"
    Expression ="B_Sanierungsstau_Werterhöhung.Mehrwert"
    Expression ="B_Sanierungsstau_Werterhöhung_Vor_DS.Aktivierungs_Datum"
    Alias ="ID_WE_Vor_DS"
    Expression ="fc_ID_WE_Vor_DS([B_Sanierungsstau_Werterhöhung].[ID_Werterh])=[B_Sanierungsstau_"
        "Werterhöhung_Vor_DS].[id_Werterh] Or (fc_ID_WE_Vor_DS([B_Sanierungsstau_Werterhö"
        "hung].[ID_Werterh])=0 And [B_Sanierungsstau_Werterhöhung_Vor_DS].[DS_Typ]=1)"
    Expression ="B_Sanierungsstau_Werterhöhung_Vor_DS.ID_Werterh"
End
Begin Joins
    LeftTable ="M_Strassenverzeichnis"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="M_Strassenverzeichnis.Kennummer = tbl_100_20_Gebäudeteile.Kennummer_Straße"
    Flag =3
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="B_Sanierungsstau_Werterhöhung_Vor_DS"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung_Vor_DS.ID"
        "_Gebäudeteil"
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
    Expression ="[NAme] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    Flag =0
    Expression ="B_Sanierungsstau_Werterhöhung.Aktivierungs_Datum"
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
dbText "Description" ="zu Evaluierungszwecken am 05.09.2018 erstellt, W. Budde"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Aktivierungs_Datum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2554"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Herstellkosten"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2914"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.ID_Werterh"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4611"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung_Vor_DS.Aktivierungs_Datum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3686"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung_Vor_DS.ID_Werterh"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4671"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Mehrwert"
        dbInteger "ColumnWidth" ="3351"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_WE_Vor_DS"
        dbInteger "ColumnWidth" ="2897"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.DS_Typ"
        dbInteger "ColumnWidth" ="2451"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Bauteil"
        dbInteger "ColumnWidth" ="3600"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="5374"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-12
    Top =-52
    Right =3776
    Bottom =1798
    Left =-1
    Top =-1
    Right =3735
    Bottom =824
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =1875
        Top =27
        Right =2299
        Bottom =665
        Top =0
        Name ="B_Sanierungsstau_Werterhöhung"
        Name =""
    End
    Begin
        Left =2374
        Top =128
        Right =2875
        Bottom =777
        Top =0
        Name ="B_Sanierungsstau_Werterhöhung_Vor_DS"
        Name =""
    End
    Begin
        Left =765
        Top =81
        Right =1157
        Bottom =611
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =108
        Top =112
        Right =653
        Bottom =795
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =1277
        Top =232
        Right =1605
        Bottom =449
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
