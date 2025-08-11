Operation =1
Option =0
Begin InputTables
    Name ="Mittelabfluss_2_Zeitablauf"
    Name ="Mittelabfluss_4_Zeitablauf"
End
Begin OutputColumns
    Expression ="Mittelabfluss_2_Zeitablauf.Archivierungsdatum"
    Alias ="Ansätze"
    Expression ="Mittelabfluss_2_Zeitablauf.[Summe von Summe von Ansatz]"
    Alias ="HHR"
    Expression ="Mittelabfluss_2_Zeitablauf.[Summe von Summe von HHR]"
    Alias ="VE"
    Expression ="Mittelabfluss_2_Zeitablauf.[Summe von Summe von VE]"
    Alias ="bezahlt"
    Expression ="Mittelabfluss_4_Zeitablauf.[Summe von sollgesamt]"
    Alias ="Aufträge"
    Expression ="Mittelabfluss_4_Zeitablauf.[Summe von Aufträge]"
    Alias ="noch zur Vfg"
    Expression ="[Summe von Summe von zufVfg]-[Summe von sollgesamt]-[Summe von Aufträge]"
    Alias ="in%"
    Expression ="([Summe von Summe von zufVfg]-[Summe von sollgesamt]-[Summe von Aufträge])/([Sum"
        "me von Summe von Ansatz]+[Summe von Summe von HHR]+[Summe von Summe von VE])"
End
Begin Joins
    LeftTable ="Mittelabfluss_2_Zeitablauf"
    RightTable ="Mittelabfluss_4_Zeitablauf"
    Expression ="Mittelabfluss_2_Zeitablauf.Archivierungsdatum = Mittelabfluss_4_Zeitablauf.Archi"
        "vierungsdatum"
    Flag =1
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
        dbText "Name" ="Ansätze"
        dbInteger "ColumnWidth" ="1410"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="HHR"
        dbInteger "ColumnWidth" ="1275"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VE"
        dbInteger "ColumnWidth" ="1275"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aufträge"
        dbInteger "ColumnWidth" ="1275"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="bezahlt"
        dbInteger "ColumnWidth" ="1275"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="noch zur Vfg"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="in%"
        dbInteger "ColumnWidth" ="810"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Percent"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Mittelabfluss_2_Zeitablauf.Archivierungsdatum"
        dbInteger "ColumnWidth" ="2295"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1650
    Bottom =854
    Left =-1
    Top =-1
    Right =1626
    Bottom =438
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =338
        Bottom =173
        Top =0
        Name ="Mittelabfluss_2_Zeitablauf"
        Name =""
    End
    Begin
        Left =619
        Top =54
        Right =972
        Bottom =206
        Top =0
        Name ="Mittelabfluss_4_Zeitablauf"
        Name =""
    End
End
