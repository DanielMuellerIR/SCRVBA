Operation =1
Option =0
Where ="((([Bericht Sanierungsstau nach Finanzplanung].ID_Gebäude) Between F_Variable(\""
    "lng_ID_Geb_Min\") And F_Variable(\"lng_ID_Geb_Max\")) AND ((Maßnahmen.ID_Gebäude"
    "teil) Between F_Variable(\"lng_ID_Geb_Teil_Min\") And F_Variable(\"lng_ID_Geb_Te"
    "il_Max\")) AND ((Maßnahmen.[erledigt im Jahr]) Is Null) AND (([Bericht Sanierung"
    "sstau nach Finanzplanung].Erledigt)=False))"
Begin InputTables
    Name ="Bericht Sanierungsstau nach Finanzplanung"
    Name ="Maßnahmen"
    Name ="Maßnahmen Prioritäten zeitlich"
End
Begin OutputColumns
    Alias ="Priosort"
    Expression ="fc_PrioSort([Priotext])"
    Alias ="Priotext"
    Expression ="IIf([Maßnahmen Prioritäten zeitlich].[Priorität_zeitl] Is Null,\"zeitl. Prioroit"
        "ät noch nicht festgel.\",[Maßnahmen Prioritäten zeitlich].[Priorität_zeitl])"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr"
    Alias ="X_Rang"
    Expression ="IIf([Maßnahmen].[Priorität_zeitl] Is Null,99,[Maßnahmen Prioritäten zeitlich].[R"
        "ang])"
    Alias ="Prio"
    Expression ="IIf([Maßnahmen].[Priorität_zeitl] Is Null,\"Zeitl. Prior. nicht festgel.\",[Maßn"
        "ahmen Prioritäten zeitlich].[Priorität_zeitl])"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].ID_Massn"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Name"
    Alias ="Objekt"
    Expression ="[Liegenschaft] & \": \" & [Haus] & IIf([Rangfolge]=0,\"\",\" - Rang \" & [Rangfo"
        "lge])"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Gepl_Finanz"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Finanzquelle"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Finanzherkunft"
End
Begin Joins
    LeftTable ="Bericht Sanierungsstau nach Finanzplanung"
    RightTable ="Maßnahmen"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].ID_Massn = Maßnahmen.ID"
    Flag =2
    LeftTable ="Maßnahmen"
    RightTable ="Maßnahmen Prioritäten zeitlich"
    Expression ="Maßnahmen.Priorität_zeitl = [Maßnahmen Prioritäten zeitlich].ID"
    Flag =2
End
Begin OrderBy
    Expression ="IIf([Maßnahmen].[Priorität_zeitl] Is Null,99,[Maßnahmen Prioritäten zeitlich].[R"
        "ang])"
    Flag =0
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Name"
    Flag =0
    Expression ="[Liegenschaft] & \": \" & [Haus] & IIf([Rangfolge]=0,\"\",\" - Rang \" & [Rangfo"
        "lge])"
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
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="8865"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Prio"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2475"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="X_Rang"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Priotext "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Priotext"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3330"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].ID_Massn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Gepl_Finanz"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="10710"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Finanzquelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Priosort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Finanzherkunft"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-13
    Top =-58
    Right =3767
    Bottom =1749
    Left =-1
    Top =-1
    Right =3721
    Bottom =722
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =74
        Top =99
        Right =382
        Bottom =572
        Top =0
        Name ="Bericht Sanierungsstau nach Finanzplanung"
        Name =""
    End
    Begin
        Left =456
        Top =99
        Right =691
        Bottom =544
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =772
        Top =243
        Right =1147
        Bottom =368
        Top =0
        Name ="Maßnahmen Prioritäten zeitlich"
        Name =""
    End
End
