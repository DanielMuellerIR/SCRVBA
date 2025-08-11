Operation =1
Option =0
Begin InputTables
    Name ="A_Buchungen"
    Name ="A_Buchungen_Aufteilung_auf_Fälligkeiten"
End
Begin OutputColumns
    Expression ="A_Buchungen.ID"
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen]"
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.sofort"
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.[andere Fälligkeit]"
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.Fälligkeitsdatum"
    Expression ="A_Buchungen_Aufteilung_auf_Fälligkeiten.Betrag"
End
Begin Joins
    LeftTable ="A_Buchungen"
    RightTable ="A_Buchungen_Aufteilung_auf_Fälligkeiten"
    Expression ="A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen]"
    Flag =2
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
dbMemo "Filter" ="([Abfrage für Buchungsanordnung_U3].[ID aus Buchungen]=17462)"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Fälligkeiten.[andere Fälligkeit]"
        dbInteger "ColumnWidth" ="1770"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Fälligkeiten.[ID aus Buchungen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Fälligkeiten.sofort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Fälligkeiten.Fälligkeitsdatum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Fälligkeiten.Betrag"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="5888"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1430
    Bottom =861
    Left =-1
    Top =-1
    Right =1406
    Bottom =520
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =94
        Top =39
        Right =466
        Bottom =228
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
    Begin
        Left =624
        Top =39
        Right =979
        Bottom =238
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Fälligkeiten"
        Name =""
    End
End
