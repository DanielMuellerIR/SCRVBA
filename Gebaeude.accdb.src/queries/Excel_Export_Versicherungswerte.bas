Operation =1
Option =0
Begin InputTables
    Name ="B_Ergebnisse_Tabelle"
End
Begin OutputColumns
    Expression ="B_Ergebnisse_Tabelle.Bezeichnung"
    Expression ="B_Ergebnisse_Tabelle.Straße"
    Expression ="B_Ergebnisse_Tabelle.Gebäudeteil"
    Alias ="Versicherungs-Wert"
    Expression ="B_Ergebnisse_Tabelle.Versicherungswert"
    Expression ="B_Ergebnisse_Tabelle.BGF"
    Expression ="B_Ergebnisse_Tabelle.BRI"
    Alias ="Baujahr"
    Expression ="B_Ergebnisse_Tabelle.Baujahr_real"
    Expression ="B_Ergebnisse_Tabelle.Typ"
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
        dbText "Name" ="B_Ergebnisse_Tabelle.Straße"
        dbInteger "ColumnWidth" ="2805"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Versicherungs-Wert "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Versicherungs-Wert"
        dbInteger "ColumnWidth" ="2280"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_Tabelle.BGF"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_Tabelle.Typ"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Ergebnisse_Tabelle.BRI"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Baujahr "
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1362
    Bottom =996
    Left =-1
    Top =-1
    Right =1330
    Bottom =357
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =185
        Top =16
        Right =810
        Bottom =345
        Top =0
        Name ="B_Ergebnisse_Tabelle"
        Name =""
    End
End
