Operation =1
Option =8
Where ="(((Maßnahmen.[erledigt im Jahr]) Is Null) AND (([Bericht Sanierungsstau nach Fin"
    "anzplanung].ID_Gebäude) Between F_Variable(\"lng_ID_Geb_Min\") And F_Variable(\""
    "lng_ID_Geb_Max\")) AND ((Maßnahmen.ID_Gebäudeteil) Between F_Variable(\"lng_ID_G"
    "eb_Teil_Min\") And F_Variable(\"lng_ID_Geb_Teil_Max\")) AND (([Bericht Sanierung"
    "sstau nach Finanzplanung].Erledigt)=False))"
Begin InputTables
    Name ="Bericht Sanierungsstau nach Finanzplanung"
    Name ="Maßnahmen"
    Name ="Sachbearbeiter"
End
Begin OutputColumns
    Alias ="SB_Name"
    Expression ="IIf([Sachbearbeiter].[Name] Is Null,\"  SB noch nicht festgel.\",[Sachbearbeiter"
        "].[Name])"
    Alias ="Finanz_Sort"
    Expression ="IIf([Bericht Sanierungsstau nach Finanzplanung].[ID_Massn] Is Null Or [Finanzque"
        "lle] Is Null,\"Z\",\"A\")"
    Alias ="Objekt"
    Expression ="[Liegenschaft] & \": \" & [Haus] & IIf([Rangfolge]=0,\"\",\" - Rang \" & [Rangfo"
        "lge])"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
    Alias ="TM_Name"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].[Name] & \" \""
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr"
    Alias ="Finanz"
    Expression ="IIf([Bericht Sanierungsstau nach Finanzplanung].[ID_Massn] Is Null Or [Finanzque"
        "lle] Is Null,\"Finanzierung noch nicht festgelegt\",[Finanzquelle])"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Gepl_Finanz"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Finanzquelle"
    Alias ="ID_Massn"
    Expression ="Maßnahmen.ID"
End
Begin Joins
    LeftTable ="Bericht Sanierungsstau nach Finanzplanung"
    RightTable ="Maßnahmen"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].ID_Massn = Maßnahmen.ID"
    Flag =2
    LeftTable ="Maßnahmen"
    RightTable ="Sachbearbeiter"
    Expression ="Maßnahmen.ID_SB = Sachbearbeiter.ID"
    Flag =2
End
Begin OrderBy
    Expression ="IIf([Sachbearbeiter].[Name] Is Null,\"  SB noch nicht festgel.\",[Sachbearbeiter"
        "].[Name])"
    Flag =0
    Expression ="IIf([Bericht Sanierungsstau nach Finanzplanung].[ID_Massn] Is Null Or [Finanzque"
        "lle] Is Null,\"Z\",\"A\")"
    Flag =0
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
    Flag =0
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
    Flag =0
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].[Name] & \" \""
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
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="7680"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Finanz "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanz"
        dbInteger "ColumnWidth" ="3330"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanz_Sort "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanz_Sort"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1335"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TM_Name"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1365"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TM_Name "
        dbInteger "ColumnWidth" ="5025"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SB_Name "
        dbInteger "ColumnWidth" ="2445"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SB_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Gepl_Finanz"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_MAssn "
        dbInteger "ColumnWidth" ="1860"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Finanzquelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Massn"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =85
    Top =142
    Right =3720
    Bottom =1448
    Left =-1
    Top =-1
    Right =3600
    Bottom =510
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =99
        Top =104
        Right =419
        Bottom =475
        Top =0
        Name ="Bericht Sanierungsstau nach Finanzplanung"
        Name =""
    End
    Begin
        Left =477
        Top =104
        Right =789
        Bottom =397
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =838
        Top =296
        Right =1077
        Bottom =449
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
End
