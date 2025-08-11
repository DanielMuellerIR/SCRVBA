Operation =5
Option =0
Where ="(((A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen])=[formulare]![Buc"
    "hungsanordnung]![ID]))"
Begin InputTables
    Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
End
Begin OutputColumns
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Buchungen]"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.[ID aus Kostenträger]"
    Expression ="A_Buchungen_Aufteilung_auf_Kostenstellen.Betrag"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbMemo "OrderBy" ="Anteilige_Aufteilung_Rechnung_nach_Quadtratmetern.Kostenstelle"
dbBoolean "UseTransaction" ="0"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Summe von Berechnungsfläche"
        dbInteger "ColumnWidth" ="3180"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Anteil"
        dbInteger "ColumnWidth" ="2190"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
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
    Bottom =388
    Left =0
    Top =0
    ColumnsShown =771
    Begin
        Left =38
        Top =6
        Right =401
        Bottom =113
        Top =0
        Name ="A_Buchungen_Aufteilung_auf_Kostenstellen"
        Name =""
    End
End
