dbMemo "SQL" ="SELECT geb.ID_Gebäude AS id_geb, geb.ID_Gebäudeteil AS id_gt, m.ID AS ID_Massnah"
    "me, m.[voraussichtliche Kosten gesamt], bereit.[Summe von Betrag] AS SummeGeplUn"
    "dTats, [voraussichtliche Kosten gesamt] - bereit.[Summe von Betrag] AS Differenz"
    ", m.[erledigt im Jahr], IIf(\012        m.[nicht mehr erforderlich weil] IS NOT "
    "NULL,\012        \"3: nicht mehr erforderlich\",\012        IIf(\012            "
    "m.[erledigt im Jahr] IS NULL,\012            \"2: nicht erledigt\",\012         "
    "   \"1: Erledigt\"\012        )\012    ) AS Erledigt_Status\015\012FROM (tbl_100"
    "_20_Gebäudeteile AS geb INNER JOIN Maßnahmen AS m ON geb.[ID_Gebäudeteil] = m.[I"
    "D_Gebäudeteil]) LEFT JOIN Bereitgestellt AS bereit ON m.ID = bereit.ID_Massnahme"
    "\015\012WHERE (\012        (\012            (\012                [m].[voraussich"
    "tliche Kosten gesamt] - [bereit].[Summe von Betrag]\012            ) > 0\012    "
    "    )\012    )\015\012ORDER BY geb.ID_Gebäude, m.ID;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "RecordsetType" ="0"
dbMemo "Filter" ="([SummeGeplUndTats_JeGeb].[id_geb]=233)"
dbMemo "OrderBy" ="[SummeGeplUndTats_JeGeb].[ID_Massnahme]"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="Differenz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Massnahme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SummeGeplUndTats"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="id_geb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="m.[voraussichtliche Kosten gesamt]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="m.[erledigt im Jahr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="id_gt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erledigt_Status"
        dbLong "AggregateType" ="-1"
    End
End
