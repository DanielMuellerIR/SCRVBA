dbMemo "SQL" ="Select  * from [Bericht Sanierungsstau nach Finanzpl_Part_01]\015\012UNION Selec"
    "t  * from [Bericht Sanierungsstau nach Finanzpl_Part_02]\015\012UNION Select  * "
    "from [Bericht Sanierungsstau nach Finanzpl_Part_03];\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbMemo "Filter" ="([Bericht Sanierungsstau nach Finanzpl_Union].[ID_Massn]=1463)"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_01.tbl_100_10_Liegenschaften.ID_Gebäud"
            "e"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2055"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_01.LIegenschaft"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2400"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_01.Haus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_01.tbl_100_20_Gebäudeteile.ID_Gebäudet"
            "eil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_01.ID_Massn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_01.Sachbearbeiter.Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_01.Maßnahmen.Maßnahme"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4500"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_01.Gepl_Finanz"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="4230"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_01.Finanzquellen.Finanzquelle"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2520"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_01.Kal_Jahr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2085"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_01.ID_Finanz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_01.Finanzherkunft.Finanzherkunft"
        dbInteger "ColumnWidth" ="2145"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_01.Maßnahmen.[erledigt im Jahr]"
        dbLong "AggregateType" ="-1"
    End
End
