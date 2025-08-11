Operation =1
Option =0
Where ="(((Maßnahmen.[erledigt im Jahr]) Is Null) AND (([Bericht Sanierungsstau nach Fin"
    "anzplanung].ID_Gebäude) Between F_Variable(\"lng_ID_Geb_Min\") And F_Variable(\""
    "lng_ID_Geb_Max\") And ([Bericht Sanierungsstau nach Finanzplanung].ID_Gebäude) B"
    "etween F_Variable(\"lng_ID_Geb_Min\") And F_Variable(\"lng_ID_Geb_Max\")) AND (("
    "Maßnahmen.ID_Gebäudeteil) Between F_Variable(\"lng_ID_Geb_Teil_Min\") And F_Vari"
    "able(\"lng_ID_Geb_Teil_Max\")) AND (([Bericht Sanierungsstau nach Finanzplanung]"
    ".Erledigt)=False))"
Begin InputTables
    Name ="Sachbearbeiter"
    Name ="Bericht Sanierungsstau nach Finanzplanung"
    Name ="Maßnahmen"
End
Begin OutputColumns
    Alias ="Finanz_Sort"
    Expression ="IIf([Bericht Sanierungsstau nach Finanzplanung].[ID_MAssn] Is Null Or [Bericht S"
        "anierungsstau nach Finanzplanung].[Finanzquelle] Is Null,\"Z\",\"A\")"
    Alias ="FinHerk_Sort"
    Expression ="fc_FinHerk_Sort([ID_Massn],[Finanzherkunft])"
    Alias ="Finanz"
    Expression ="IIf([Bericht Sanierungsstau nach Finanzplanung].[ID_Massn] Is Null Or [Finanzque"
        "lle] Is Null,\"Finanzierung noch nicht festgelegt\",[Finanzquelle])"
    Alias ="FinHerk"
    Expression ="IIf([Bericht Sanierungsstau nach Finanzplanung].[ID_Massn] Is Null Or [Finanzher"
        "kunft] Is Null,\"Finanzierung noch nicht festgelegt\",[Finanzherkunft])"
    Alias ="Objekt"
    Expression ="[Liegenschaft] & \": \" & [Haus] & IIf([Rangfolge]=0,\"\",\" - Rang \" & [Rangfo"
        "lge])"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
    Alias ="ID_MAssn"
    Expression ="Maßnahmen.ID"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Name"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Gepl_Finanz"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Finanzquelle"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Finanzherkunft"
    Expression ="Maßnahmen.[voraussichtliche Kosten gesamt]"
End
Begin Joins
    LeftTable ="Bericht Sanierungsstau nach Finanzplanung"
    RightTable ="Maßnahmen"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].ID_MAssn = Maßnahmen.ID"
    Flag =2
    LeftTable ="Sachbearbeiter"
    RightTable ="Maßnahmen"
    Expression ="Sachbearbeiter.ID = Maßnahmen.ID_SB"
    Flag =3
End
Begin OrderBy
    Expression ="IIf([Bericht Sanierungsstau nach Finanzplanung].[ID_MAssn] Is Null Or [Bericht S"
        "anierungsstau nach Finanzplanung].[Finanzquelle] Is Null,\"Z\",\"A\")"
    Flag =0
    Expression ="fc_FinHerk_Sort([ID_Massn],[Finanzherkunft])"
    Flag =0
    Expression ="IIf([Bericht Sanierungsstau nach Finanzplanung].[ID_Massn] Is Null Or [Finanzher"
        "kunft] Is Null,\"Finanzierung noch nicht festgelegt\",[Finanzherkunft])"
    Flag =0
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
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
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="9825"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Finanz "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanz"
        dbInteger "ColumnWidth" ="4005"
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
        dbInteger "ColumnWidth" ="2355"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Maßnahmen.[voraussichtliche Kosten gesamt]"
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
        dbText "Name" ="ID_MAssn "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_MAssn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Finanzherkunft"
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
        dbText "Name" ="FinHerk"
        dbInteger "ColumnWidth" ="4995"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FinHerk_Sort"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3870"
        dbBoolean "ColumnHidden" ="0"
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
    Bottom =636
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =804
        Top =278
        Right =1068
        Bottom =448
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
    Begin
        Left =53
        Top =55
        Right =378
        Bottom =594
        Top =0
        Name ="Bericht Sanierungsstau nach Finanzplanung"
        Name =""
    End
    Begin
        Left =483
        Top =53
        Right =725
        Bottom =369
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
End
