Operation =1
Option =0
Having ="(((M_Nebenkostenabrechnung_2.Haushaltsjahr) Like [formulare]![Filter für Nebenko"
    "stenabrechnung]![JahrZahlung]))"
Begin InputTables
    Name ="M_Nebenkostenabrechnung_2"
End
Begin OutputColumns
    Expression ="M_Nebenkostenabrechnung_2.ID"
    Expression ="M_Nebenkostenabrechnung_2.Haushaltsjahr"
    Alias ="Summe von Zahlungen"
    Expression ="Sum(M_Nebenkostenabrechnung_2.Zahlungen)"
End
Begin OrderBy
    Expression ="M_Nebenkostenabrechnung_2.ID"
    Flag =0
End
Begin Groups
    Expression ="M_Nebenkostenabrechnung_2.ID"
    GroupLevel =0
    Expression ="M_Nebenkostenabrechnung_2.Haushaltsjahr"
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
Begin
    Begin
        dbText "Name" ="Summe von Zahlungen"
        dbInteger "ColumnWidth" ="2355"
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
    Bottom =265
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =386
        Bottom =173
        Top =0
        Name ="M_Nebenkostenabrechnung_2"
        Name =""
    End
End
