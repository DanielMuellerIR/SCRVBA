dbMemo "SQL" ="SELECT [Übernahme Daten Finanzauskunft 1].Buchungsstelle, Sum([Übernahme Daten F"
    "inanzauskunft 1].[Ansatz]+[HHR]) AS [Mittel lt 60], [HHST Liste - Ansatz Soll Ve"
    "rf 2].[Gesamt HH-Mittel], [Sollbuchung]+[Sollerfassung] AS bezahlt, [HHST Liste "
    "- Ansatz Soll Verf 2].Aufträge AS [offene Aufträge]\015\012FROM [Übernahme Daten"
    " Finanzauskunft 1] LEFT JOIN [HHST Liste - Ansatz Soll Verf 2] ON [Übernahme Dat"
    "en Finanzauskunft 1].Buchungsstelle = [HHST Liste - Ansatz Soll Verf 2].Buchungs"
    "stelle\015\012GROUP BY [Übernahme Daten Finanzauskunft 1].ID, [Übernahme Daten F"
    "inanzauskunft 1].Buchungsstelle, [HHST Liste - Ansatz Soll Verf 2].[Gesamt HH-Mi"
    "ttel], [Sollbuchung]+[Sollerfassung], [HHST Liste - Ansatz Soll Verf 2].Aufträge"
    "\015\012ORDER BY [Übernahme Daten Finanzauskunft 1].Buchungsstelle;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="[HHST Liste - Ansatz Soll Verf 2].[Gesamt HH-Mittel]"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="bezahlt"
        dbInteger "ColumnWidth" ="1320"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="offene Aufträge"
        dbInteger "ColumnWidth" ="1620"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Mittel lt 60"
        dbInteger "ColumnWidth" ="1485"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
End
