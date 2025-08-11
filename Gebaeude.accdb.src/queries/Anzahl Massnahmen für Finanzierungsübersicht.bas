dbMemo "SQL" ="SELECT Buchungsstellen.Buchungsstelle, Haushaltsdaten.[ID aus Maßnahmen]\015\012"
    "FROM ([Daten aus MPS] LEFT JOIN Buchungsstellen ON [Daten aus MPS].HHSt = Buchun"
    "gsstellen.Buchungsstelle) LEFT JOIN Haushaltsdaten ON Buchungsstellen.ID = Haush"
    "altsdaten.[ID aus Buchungsstelle]\015\012WHERE ((([HHAnsatz]+[HHRest aus Vorjahr"
    "]+[Mittel Übertrag]+[AOSoll HHAns]+[AOSoll HHRest]+[Unerledigte Aufträge]+[Verfü"
    "gbar])>0))\015\012GROUP BY Buchungsstellen.Buchungsstelle, Haushaltsdaten.[ID au"
    "s Maßnahmen], [Daten aus MPS].HHSt\015\012ORDER BY [Daten aus MPS].HHSt;\015\012"
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
        dbText "Name" ="Buchungsstellen.Buchungsstelle"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Anzahl"
        dbInteger "ColumnWidth" ="810"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Anzahl von ID aus Maßnahmen"
        dbInteger "ColumnWidth" ="3105"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Daten aus MPS].Bezeichnung"
        dbInteger "ColumnWidth" ="3825"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Daten aus MPS].HHSt"
        dbInteger "ColumnWidth" ="1155"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.[ID aus Maßnahmen]"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
