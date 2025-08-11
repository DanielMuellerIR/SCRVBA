Operation =1
Option =0
Where ="((([Archiv_Mietberechnungen].[Text]) Like [formulare]![Filter für Nebenkostenabr"
    "echnung]![Datei]))"
Having ="((([Archiv_Mietberechnungen].[Planjahr]) Like [formulare]![Filter für Nebenkoste"
    "nabrechnung]![JahrZahlung]))"
Begin InputTables
    Name ="Archiv_Mietberechnungen"
End
Begin OutputColumns
    Alias ="Ausdr1"
    Expression ="Archiv_Mietberechnungen.Planjahr"
    Alias ="Ausdr2"
    Expression ="Archiv_Mietberechnungen.ID"
    Alias ="Vorauszahlung"
    Expression ="Sum(Archiv_Mietberechnungen.Betrag)"
    Alias ="Ausdr3"
    Expression ="Archiv_Mietberechnungen.datum"
End
Begin Groups
    Expression ="Archiv_Mietberechnungen.Planjahr"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.ID"
    GroupLevel =0
    Expression ="Archiv_Mietberechnungen.datum"
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
        dbText "Name" ="Vorauszahlung"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1393
    Bottom =984
    Left =-1
    Top =-1
    Right =1361
    Bottom =211
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =497
        Bottom =203
        Top =0
        Name ="Archiv_Mietberechnungen"
        Name =""
    End
End
