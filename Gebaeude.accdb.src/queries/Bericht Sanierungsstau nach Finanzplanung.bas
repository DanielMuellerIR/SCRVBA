dbMemo "SQL" ="SELECT [Bericht Sanierungsstau nach Finanzpl_Union].ID_Massn, [Bericht Sanierung"
    "sstau nach Finanzpl_Union].Kal_Jahr, Max(\012        [Bericht Sanierungsstau nac"
    "h Finanzpl_Union].ID_Gebäude\012    ) AS ID_Gebäude, Max(\012        [Bericht Sa"
    "nierungsstau nach Finanzpl_Union].LIegenschaft\012    ) AS LIegenschaft, Max([Be"
    "richt Sanierungsstau nach Finanzpl_Union].Haus) AS Haus, Max(\012        [Berich"
    "t Sanierungsstau nach Finanzpl_Union].ID_Gebäudeteil\012    ) AS ID_Gebäudeteil,"
    " Max([Bericht Sanierungsstau nach Finanzpl_Union].Name) AS Name, Max(\012       "
    " [Bericht Sanierungsstau nach Finanzpl_Union].Maßnahme\012    ) AS Maßnahme, [Be"
    "richt Sanierungsstau nach Finanzpl_Union].ID_Finanz, [Bericht Sanierungsstau nac"
    "h Finanzpl_Union].Gepl_Finanz AS Gepl_Finanz, [Bericht Sanierungsstau nach Finan"
    "zpl_Union].Erl AS Erledigt, Min(\012        [Bericht Sanierungsstau nach Finanzp"
    "l_Union].Finanzquelle\012    ) AS Finanzquelle, [Bericht Sanierungsstau nach Fin"
    "anzpl_Union].Finanzherkunft\015\012FROM [Bericht Sanierungsstau nach Finanzpl_Un"
    "ion]\015\012WHERE (\012        (\012            (\012                [Bericht Sa"
    "nierungsstau nach Finanzpl_Union].[erledigt im Jahr]\012            ) IS NULL\012"
    "        )\012    )\015\012GROUP BY [Bericht Sanierungsstau nach Finanzpl_Union]."
    "ID_Massn, [Bericht Sanierungsstau nach Finanzpl_Union].Kal_Jahr, [Bericht Sanier"
    "ungsstau nach Finanzpl_Union].ID_Finanz, [Bericht Sanierungsstau nach Finanzpl_U"
    "nion].Gepl_Finanz, [Bericht Sanierungsstau nach Finanzpl_Union].Erl, [Bericht Sa"
    "nierungsstau nach Finanzpl_Union].Finanzherkunft;\015\012"
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
dbBoolean "UseTransaction" ="-1"
dbMemo "Filter" ="([Bericht Sanierungsstau nach Finanzplanung].[ID_Massn]=2166)"
Begin
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzpl_Union].Kal_Jahr"
        dbInteger "ColumnWidth" ="2610"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzpl_Union].ID_Massn"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="ID_Gebäude "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Gebäude"
        dbInteger "ColumnWidth" ="2655"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="LIegenschaft "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="LIegenschaft"
        dbInteger "ColumnWidth" ="3225"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="Haus "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Gebäudeteil "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Name "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahme "
        dbInteger "ColumnWidth" ="9735"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gepl_Finanz "
        dbInteger "ColumnWidth" ="2385"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanzquelle"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2955"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Finanzquelle "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haus"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3060"
        dbInteger "ColumnOrder" ="4"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahme"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4635"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Gepl_Finanz"
        dbInteger "ColumnWidth" ="2115"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzpl_Union].Finanzherkunft"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erledigt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erledigt"
        dbLong "AggregateType" ="-1"
    End
End
