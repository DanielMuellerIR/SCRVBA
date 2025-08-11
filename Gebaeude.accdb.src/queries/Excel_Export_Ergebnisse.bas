Operation =1
Option =0
Begin InputTables
    Name ="B_Ergebnisse_Tabelle"
End
Begin OutputColumns
    Expression ="B_Ergebnisse_Tabelle.Bezeichnung"
    Expression ="B_Ergebnisse_Tabelle.Straße"
    Expression ="B_Ergebnisse_Tabelle.Gebäudeteil"
    Alias ="Herstellkosten_NHK"
    Expression ="B_Ergebnisse_Tabelle.Herstellungskosten"
    Alias ="Sanierung"
    Expression ="B_Ergebnisse_Tabelle.Sanierungsstau"
    Alias ="Abschreibung"
    Expression ="CCur(Nz([kumulierte Abschreibung]))"
    Alias ="Gebäude"
    Expression ="B_Ergebnisse_Tabelle.[Wert ermittelt]"
    Alias ="Grundstück"
    Expression ="B_Ergebnisse_Tabelle.Grundstückswert"
    Alias ="Erl"
    Expression ="IIf(IsNull([Bewertung abgeschlossen]),\"-\",\"X\")"
End
Begin OrderBy
    Expression ="B_Ergebnisse_Tabelle.Straße"
    Flag =0
    Expression ="B_Ergebnisse_Tabelle.Bezeichnung"
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
Begin
    Begin
        dbText "Name" ="B_Ergebnisse_Tabelle.Bezeichnung"
        dbInteger "ColumnWidth" ="3135"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_Tabelle.Gebäudeteil"
        dbInteger "ColumnWidth" ="2970"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erl"
        dbInteger "ColumnWidth" ="660"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Yes/No"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_Tabelle.Straße"
        dbInteger "ColumnWidth" ="2805"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Grundstück "
        dbInteger "ColumnWidth" ="1995"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gebäude "
        dbInteger "ColumnWidth" ="1770"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschreibung "
        dbInteger "ColumnWidth" ="2775"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschreibung"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3330"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Gebäude"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Grundstück"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Herstellkosten_NHK "
        dbInteger "ColumnWidth" ="2220"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Herstellkosten_NHK"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sanierung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SAnierung "
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1890
    Bottom =1004
    Left =-1
    Top =-1
    Right =1866
    Bottom =408
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =153
        Top =38
        Right =778
        Bottom =367
        Top =0
        Name ="B_Ergebnisse_Tabelle"
        Name =""
    End
End
