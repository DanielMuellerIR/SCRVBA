Operation =1
Option =0
Begin InputTables
    Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Name ="A_Buchungen"
End
Begin OutputColumns
    Expression ="A_Buchungen.Betrag"
    Expression ="A_Buchungen.Verwendungszweck"
    Expression ="A_Buchungen.angelegt"
    Expression ="A_Buchungen.Fälligkeit"
    Expression ="A_Buchungen.von_"
    Expression ="A_Buchungen.bis_"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
End
Begin Joins
    LeftTable ="A_Buchungen"
    RightTable ="A_Buchungen_Aufteilung_auf_Kostenstellen"
    Expression ="A_Buchungen.ID = A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]"
    Flag =1
End
Begin OrderBy
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbMemo "OrderBy" ="[___qry_Buchungszuordnung_auf_Kostenstellen].[angelegt], [Lookup_ID aus Kostenst"
    "ellen].[KS]"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenstellen]"
        dbInteger "DisplayControl" ="111"
        dbText "RowSourceType" ="Table/Query"
        dbInteger "BoundColumn" ="1"
        dbInteger "ColumnCount" ="2"
        dbText "ColumnWidths" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.bis_"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2970"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="A_Buchungen.Fälligkeit"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1890"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="A_Buchungen.von_"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1890"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="A_Buchungen.Verwendungszweck"
        dbInteger "ColumnWidth" ="5970"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.Betrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.angelegt"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2520"
        dbBoolean "ColumnHidden" ="0"
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
    Right =1239
    Bottom =479
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =591
        Top =60
        Right =1019
        Bottom =217
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
        Name =""
    End
    Begin
        Left =80
        Top =63
        Right =441
        Bottom =532
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
End
