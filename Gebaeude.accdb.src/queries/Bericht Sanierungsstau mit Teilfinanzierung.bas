dbMemo "SQL" ="SELECT Maßnahmen.ID, [Bezeichung] & \",  \" & [Straße Hausnummer] AS Gebäude, Sa"
    "chbearbeiter.Name, Maßnahmen.Maßnahme, Maßnahmen.[voraussichtliche Kosten gesamt"
    "], [Ansatz]+[HHR]+[VE] AS Summe_finanzier, Haushaltsdaten.[ID aus Maßnahmen]\015"
    "\012FROM Sachbearbeiter RIGHT JOIN (Gebäudeliste RIGHT JOIN (Haushaltsdaten RIGH"
    "T JOIN Maßnahmen ON Haushaltsdaten.[ID aus Maßnahmen] = Maßnahmen.ID) ON Gebäude"
    "liste.ID = Maßnahmen.[ID aus Gebäudeliste]) ON Sachbearbeiter.ID = Gebäudeliste."
    "[ID aus Sachbearbeiter]\015\012WHERE (((Haushaltsdaten.[ID aus Maßnahmen]) Is Nu"
    "ll))\015\012ORDER BY [Bezeichung] & \",  \" & [Straße Hausnummer];\015\012\015\012"
    "\015\012\015\012UNION SELECT [Abfrage teilfinanziert 1].ID, [Abfrage teilfinanzi"
    "ert 1].Gebäude, [Abfrage teilfinanziert 1].Name, [Abfrage teilfinanziert 1].Maßn"
    "ahme, [Abfrage teilfinanziert 1].[voraussichtliche Kosten gesamt], Sum([Abfrage "
    "teilfinanziert 1].zufVfg) AS Summe_finanziert, [Abfrage teilfinanziert 1].[ID au"
    "s Maßnahmen]\015\012FROM [Abfrage teilfinanziert 1]\015\012GROUP BY [Abfrage tei"
    "lfinanziert 1].ID, [Abfrage teilfinanziert 1].Gebäude, [Abfrage teilfinanziert 1"
    "].Name, [Abfrage teilfinanziert 1].Maßnahme, [Abfrage teilfinanziert 1].[vorauss"
    "ichtliche Kosten gesamt], [Abfrage teilfinanziert 1].[ID aus Maßnahmen]\015\012H"
    "AVING (((Sum([Abfrage teilfinanziert 1].zufVfg))<[voraussichtliche Kosten gesamt"
    "]));\015\012"
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
        dbText "Name" ="Gebäude"
        dbInteger "ColumnWidth" ="5865"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.ID"
        dbInteger "ColumnWidth" ="465"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe_finanzier"
        dbInteger "ColumnWidth" ="2280"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.[ID aus Maßnahmen]"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.[voraussichtliche Kosten gesamt]"
        dbInteger "ColumnWidth" ="3135"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.Maßnahme"
        dbInteger "ColumnWidth" ="8160"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
