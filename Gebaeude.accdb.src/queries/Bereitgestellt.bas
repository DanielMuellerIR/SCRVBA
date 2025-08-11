dbMemo "SQL" ="SELECT ID_Massnahme, Sum(\012        IIf(\012            Nz (tats_Kosten_Infoma,"
    " 0) > 0,\012            Nz (tats_Kosten_Infoma, 0),\012            Betrag\012   "
    "     )\012    ) AS [Summe von Betrag]\015\012FROM [geplante Finanzierung]\015\012"
    "GROUP BY ID_Massnahme;\015\012"
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
End
