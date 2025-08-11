Operation =1
Option =0
Where ="(((Archiv_Mietberechnungen.sort)=\"c\") AND ((Archiv_Mietberechnungen.Text) Like"
    " [formulare]![Filter für Nebenkostenabrechnung]![Datei]))"
Having ="(((Archiv_Mietberechnungen.Planjahr) Like [formulare]![Filter für Nebenkostenabr"
    "echnung]![JahrZahlung]) AND ((Archiv_Mietberechnungen.Betrieb) Like [formulare]!"
    "[Filter für Nebenkostenabrechnung]![Betrieb]) AND ((Archiv_Mietberechnungen.Bere"
    "ichName) Like [formulare]![Filter für Nebenkostenabrechnung]![Bereich]) AND ((Ar"
    "chiv_Mietberechnungen.ID_Gebäudeteil) Like [formulare]![Filter für Nebenkostenab"
    "rechnung]![Objekt]))"
Begin InputTables
    Name ="Archiv_Mietberechnungen"
End
Begin OutputColumns
    Expression ="Archiv_Mietberechnungen.Planjahr"
    Expression ="Archiv_Mietberechnungen.Betrieb"
    Expression ="Archiv_Mietberechnungen.BereichNr"
    Expression ="Archiv_Mietberechnungen.BereichName"
    Expression ="Archiv_Mietberechnungen.Bezeichnung"
    Expression ="Archiv_Mietberechnungen.ID_Gebäudeteil"
    Expression ="Archiv_Mietberechnungen.Kostenart"
    Alias ="Abschläge"
    Expression ="Sum(Archiv_Mietberechnungen.Betrag)"
    Expression ="Archiv_Mietberechnungen.Betrag"
End
Begin Groups
    Expression ="Archiv_Mietberechnungen.Planjahr"
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
    Expression ="Archiv_Mietberechnungen.Kostenart"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.Betrag"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "RecordsetType" ="0"
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.Planjahr"
        dbLong "AggregateType" ="-1"
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
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.Bezeichnung"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4635"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.Kostenart"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschläge"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1815"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Archiv_Mietberechnungen.Betrag"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =67
    Top =478
    Right =1453
    Bottom =1284
    Left =-1
    Top =-1
    Right =1354
    Bottom =186
    Left =0
    Top =0
    ColumnsShown =541
    Begin
        Left =48
        Top =12
        Right =347
        Bottom =190
        Top =0
        Name ="Archiv_Mietberechnungen"
        Name =""
    End
End
