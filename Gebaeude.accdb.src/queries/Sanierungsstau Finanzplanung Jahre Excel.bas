Operation =1
Option =0
Begin InputTables
    Name ="Bericht Sanierungsstau nach Finanzplanung"
End
Begin OutputColumns
    Alias ="Kalenderjahr"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].ID_Massn"
    Alias ="Objekt"
    Expression ="[Liegenschaft] & \": \" & [Haus]"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
    Alias ="Name des SBs"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Name"
    Alias ="Geplante Finanzierung"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Gepl_Finanz"
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Finanzquelle"
End
Begin OrderBy
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Kal_Jahr"
    Flag =0
    Expression ="[Liegenschaft] & \": \" & [Haus]"
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
dbBoolean "TotalsRow" ="0"
dbText "DatasheetFontName" ="Calibri"
dbInteger "DatasheetFontHeight" ="11"
dbInteger "DatasheetFontWeight" ="400"
dbBoolean "DatasheetFontItalic" ="0"
dbBoolean "DatasheetFontUnderline" ="0"
dbByte "TabularCharSet" ="0"
dbByte "TabularFamily" ="34"
dbLong "DatasheetForeColor" ="0"
dbLong "DatasheetForeColor12" ="0"
Begin
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Maßnahme"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="5640"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Finanzquelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].ID_Massn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="KAlenderjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Geplante Finanzierung"
        dbLong "AggregateType" ="-1"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="NAme des SBs"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="7305"
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
    Bottom =852
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =153
        Top =9
        Right =866
        Bottom =352
        Top =0
        Name ="Bericht Sanierungsstau nach Finanzplanung"
        Name =""
    End
End
