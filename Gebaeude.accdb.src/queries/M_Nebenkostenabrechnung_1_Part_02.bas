Operation =1
Option =0
Having ="(((Archiv_Mietberechnungen.Betrieb) Like [formulare]![Filter für Nebenkostenabre"
    "chnung]![Betrieb]) AND ((Archiv_Mietberechnungen.BereichName) Like [formulare]!["
    "Filter für Nebenkostenabrechnung]![Bereich]) AND ((Archiv_Mietberechnungen.ID_Ge"
    "bäudeteil) Is Null))"
Begin InputTables
    Name ="Archiv_Mietberechnungen"
End
Begin OutputColumns
    Alias ="Planjahr"
    Expression ="[Formulare]![Filter für Nebenkostenabrechnung]![JahrZahlung]"
    Expression ="Archiv_Mietberechnungen.Betrieb"
    Expression ="Archiv_Mietberechnungen.BereichNr"
    Expression ="Archiv_Mietberechnungen.BereichName"
    Expression ="Archiv_Mietberechnungen.Bezeichnung"
    Expression ="Archiv_Mietberechnungen.ID_Gebäudeteil"
    Alias ="Kostenart_"
    Expression ="\".\""
    Alias ="Abschläge"
    Expression ="0"
    Expression ="Archiv_Mietberechnungen.Betrag"
End
Begin Groups
    Expression ="[Formulare]![Filter für Nebenkostenabrechnung]![JahrZahlung]"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.Betrieb"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.BereichNr"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.BereichName"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.Bezeichnung"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="\".\""
    GroupLevel =0
    Expression ="0"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.Betrag"
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
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Planjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Kostenart_"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3240"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.BereichName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2070"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.Betrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschläge"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =423
    Right =1642
    Bottom =846
    Left =-1
    Top =-1
    Right =1610
    Bottom =175
    Left =0
    Top =0
    ColumnsShown =541
    Begin
        Left =215
        Top =16
        Right =577
        Bottom =329
        Top =0
        Name ="Archiv_Mietberechnungen"
        Name =""
    End
End
