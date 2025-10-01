dbMemo "SQL" ="SELECT a.ID, a.ID_Massnahme AS ID_Massn, a.Bezeichnung AS Anlage, a.AnlagenNr, a"
    ".BeendetB20, L.Bezeichnung AS Liegenschaft, s.Name, g.Haus_Nr, g.Gebäudeteil, m."
    "Maßnahme, L.ID_Gebäude, g.ID_Gebäudeteil, s.Name & \" \" & g.Haus_Nr & \" \" & g"
    ".Gebäudeteil AS Haus, IIf(\012        IsNull(a.BeendetB20),\012        \"Offen\""
    ",\012        \"Erledigt \" & CStr (Year(a.BeendetB20))\012    ) AS Kal_Jahr\015\012"
    "FROM (((Maßnahmen AS m LEFT JOIN tbl_100_20_Gebäudeteile AS g ON m.[ID_Gebäudete"
    "il] = g.[ID_Gebäudeteil]) LEFT JOIN tbl_100_10_Liegenschaften AS L ON g.[ID_Gebä"
    "ude] = L.[ID_Gebäude]) LEFT JOIN M_Strassenverzeichnis AS s ON g.Kennummer_Straß"
    "e = s.Kennummer) INNER JOIN Anlagen AS a ON m.ID = a.ID_Massnahme\015\012WHERE ("
    "\012        (\012            (L.ID_Gebäude) BETWEEN F_Variable (\"lng_ID_Geb_Min"
    "\") AND F_Variable  (\"lng_ID_Geb_Max\")\012        )\012        AND (\012      "
    "      (g.ID_Gebäudeteil) BETWEEN F_Variable (\"lng_ID_Geb_Teil_Min\") AND F_Vari"
    "able  (\"lng_ID_Geb_Teil_Max\")\012        )\012    );\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="a.AnlagenNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="m.Maßnahme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="a.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="a.BeendetB20"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="m.[Maßnahme]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="7253"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="g.Haus_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="L.[ID_Gebäude]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="g.[ID_Gebäudeteil]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="s.Name"
        dbInteger "ColumnWidth" ="2820"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="g.Gebäudeteil"
        dbInteger "ColumnWidth" ="4650"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Kal_Jahr"
        dbInteger "ColumnWidth" ="2873"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Anlage"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Liegenschaft"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="L.ID_Gebäude"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="g.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
End
