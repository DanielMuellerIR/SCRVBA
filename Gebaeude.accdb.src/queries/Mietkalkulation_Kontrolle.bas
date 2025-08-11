Operation =1
Option =0
Begin InputTables
    Name ="Union_Abfrage_Mietberechnung_ohne_Filter"
End
Begin OutputColumns
    Expression ="Union_Abfrage_Mietberechnung_ohne_Filter.Planjahr"
    Expression ="Union_Abfrage_Mietberechnung_ohne_Filter.Kostenart"
    Alias ="Art"
    Expression ="IIf([sort]=\"A\",\"Abschreibung\",IIf([sort]=\"B\",\"Miete\",IIf([sort]=\"C\",\""
        "Nebenkosten\",\"Sonderleistungen\")))"
    Alias ="Betrag"
    Expression ="Sum(Int([Betrag_]))"
End
Begin OrderBy
    Expression ="IIf([sort]=\"A\",\"Abschreibung\",IIf([sort]=\"B\",\"Miete\",IIf([sort]=\"C\",\""
        "Nebenkosten\",\"Sonderleistungen\")))"
    Flag =0
End
Begin Groups
    Expression ="Union_Abfrage_Mietberechnung_ohne_Filter.Planjahr"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_ohne_Filter.Kostenart"
    GroupLevel =0
    Expression ="IIf([sort]=\"A\",\"Abschreibung\",IIf([sort]=\"B\",\"Miete\",IIf([sort]=\"C\",\""
        "Nebenkosten\",\"Sonderleistungen\")))"
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
        dbText "Name" ="Art"
        dbInteger "ColumnWidth" ="1650"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Betrag"
        dbInteger "ColumnWidth" ="1485"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_ohne_Filter.Planjahr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =39
    Top =88
    Right =1864
    Bottom =852
    Left =-1
    Top =-1
    Right =1793
    Bottom =287
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =433
        Bottom =209
        Top =0
        Name ="Union_Abfrage_Mietberechnung_ohne_Filter"
        Name =""
    End
End
