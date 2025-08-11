Operation =1
Option =0
Begin InputTables
    Name ="Hochrechnung_Nebenkosten_1"
End
Begin OutputColumns
    Expression ="Hochrechnung_Nebenkosten_1.Haushaltsjahr"
    Expression ="Hochrechnung_Nebenkosten_1.[ID aus Kostenstellen]"
    Expression ="Hochrechnung_Nebenkosten_1.Nebenkosten_Art"
    Expression ="Hochrechnung_Nebenkosten_1.ID_Nebenkosten"
    Expression ="Hochrechnung_Nebenkosten_1.[Name, Vorname]"
    Expression ="Hochrechnung_Nebenkosten_1.ID_Empf"
    Expression ="Hochrechnung_Nebenkosten_1.Zyklus"
    Expression ="Hochrechnung_Nebenkosten_1.ID_Zyklus"
    Alias ="Anzahl von Betrag"
    Expression ="Count(Hochrechnung_Nebenkosten_1.Betrag)"
    Alias ="Summe von Betrag"
    Expression ="Sum(Hochrechnung_Nebenkosten_1.Betrag)"
    Expression ="Hochrechnung_Nebenkosten_1.Vervielfältiger"
End
Begin Groups
    Expression ="Hochrechnung_Nebenkosten_1.Haushaltsjahr"
    GroupLevel =0
    Expression ="Hochrechnung_Nebenkosten_1.[ID aus Kostenstellen]"
    GroupLevel =0
    Expression ="Hochrechnung_Nebenkosten_1.Nebenkosten_Art"
    GroupLevel =0
    Expression ="Hochrechnung_Nebenkosten_1.ID_Nebenkosten"
    GroupLevel =0
    Expression ="Hochrechnung_Nebenkosten_1.[Name, Vorname]"
    GroupLevel =0
    Expression ="Hochrechnung_Nebenkosten_1.ID_Empf"
    GroupLevel =0
    Expression ="Hochrechnung_Nebenkosten_1.Zyklus"
    GroupLevel =0
    Expression ="Hochrechnung_Nebenkosten_1.ID_Zyklus"
    GroupLevel =0
    Expression ="Hochrechnung_Nebenkosten_1.Vervielfältiger"
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
dbBoolean "TotalsRow" ="-1"
Begin
    Begin
        dbText "Name" ="Anzahl von Betrag"
        dbInteger "ColumnWidth" ="1905"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_1.Zyklus"
        dbInteger "ColumnWidth" ="1800"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_1.Vervielfältiger"
        dbInteger "ColumnWidth" ="1500"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_1.Haushaltsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_1.ID_Zyklus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_1.ID_Empf"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_1.[ID aus Kostenstellen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_1.Nebenkosten_Art"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_1.ID_Nebenkosten"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Hochrechnung_Nebenkosten_1.[Name, Vorname]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SummevonBetrag"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von Betrag"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="Betrag"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1491
    Bottom =992
    Left =-1
    Top =-1
    Right =1467
    Bottom =347
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =454
        Bottom =313
        Top =0
        Name ="Hochrechnung_Nebenkosten_1"
        Name =""
    End
End
