Operation =1
Option =0
Where ="((([Bericht Sanierungsstau nach Finanzplanung].ID_Gebäude) Between F_Variable(\""
    "lng_ID_Geb_Min\") And F_Variable(\"lng_ID_Geb_Max\")) AND (([Bericht Sanierungss"
    "tau nach Finanzplanung].ID_Gebäudeteil) Between F_Variable(\"lng_ID_Geb_Teil_Min"
    "\") And F_Variable(\"lng_ID_Geb_Teil_Max\")) AND (([Bericht Sanierungsstau nach "
    "Finanzplanung].Erledigt)=False))"
Begin InputTables
    Name ="Bericht Sanierungsstau nach Finanzplanung"
    Name ="Maßnahmen"
    Name ="Maßnahmen Prioritäten"
End
Begin OutputColumns
    Expression ="Maßnahmen.Priorität"
    Expression ="Maßnahmen.Rangfolge"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].ID_Massn"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Name"
    Alias ="Objekt"
    Expression ="[Liegenschaft] & \": \" & [Haus] & IIf([Rangfolge]=0,\"\",\" - Rang \" & [Rangfo"
        "lge])"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Gepl_Finanz"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Finanzquelle"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Finanzherkunft"
    Alias ="Priotext"
    Expression ="[Maßnahmen Prioritäten].Priorität"
End
Begin Joins
    LeftTable ="Bericht Sanierungsstau nach Finanzplanung"
    RightTable ="Maßnahmen"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].ID_Massn = Maßnahmen.ID"
    Flag =2
    LeftTable ="Maßnahmen"
    RightTable ="Maßnahmen Prioritäten"
    Expression ="Maßnahmen.Priorität = [Maßnahmen Prioritäten].ID"
    Flag =2
End
Begin OrderBy
    Expression ="Maßnahmen.Priorität"
    Flag =0
    Expression ="Maßnahmen.Rangfolge"
    Flag =0
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].[Liegenschaft]"
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
Begin
    Begin
        dbText "Name" ="Priotext"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="Maßnahmen.Priorität"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="Maßnahmen.Rangfolge"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Name"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="975"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="8325"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Gepl_Finanz"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].ID_Massn"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr"
        dbInteger "ColumnOrder" ="9"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="8250"
        dbInteger "ColumnOrder" ="5"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Finanzquelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Finanzherkunft"
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
    Right =3592
    Bottom =664
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =44
        Top =43
        Right =588
        Bottom =671
        Top =0
        Name ="Bericht Sanierungsstau nach Finanzplanung"
        Name =""
    End
    Begin
        Left =743
        Top =43
        Right =1218
        Bottom =624
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =1342
        Top =384
        Right =1621
        Bottom =646
        Top =0
        Name ="Maßnahmen Prioritäten"
        Name =""
    End
End
