dbMemo "SQL" ="SELECT ID_Massnahme, Sum([geplante Finanzierung].Betrag) AS SummeGeplant\015\012"
    "FROM [geplante Finanzierung]\015\012GROUP BY ID_Massnahme;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="-1"
dbMemo "Filter" ="([Bereitgestellt].[ID_Massnahme]=2161)"
Begin
    Begin
        dbText "Name" ="Summe von Betrag"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="2850"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ID_Massnahme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[geplante Finanzierung].ID_Massnahme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SummeGeplant"
        dbLong "AggregateType" ="-1"
    End
End
