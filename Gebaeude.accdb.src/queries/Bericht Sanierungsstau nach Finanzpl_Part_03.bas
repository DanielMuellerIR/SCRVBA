dbMemo "SQL" ="SELECT \"N.N.\" AS Kalenderjahr, lieg.[ID_Gebäude], str1.[Name] & \" \" & lieg.["
    "Haus_Nr] & \": \" & lieg.[Bezeichnung] AS Liegenschaft, geb.[Gebäudeteil] AS Hau"
    "s, geb.[ID_Gebäudeteil], m.ID AS ID_Massn, sb.Name, m.[Maßnahme] & \" (freie Mit"
    "tel)\" & Chr (13) & Chr (10) & \"Vorauss. Kosten: \" & Format(m.[voraussichtlich"
    "e Kosten gesamt], \"#,##0 €\") & \"; Summe tats./gepl.: \" & Format(bereit.[Summ"
    "e von Betrag], \"#,##0 €\") AS MN, Max(gepl.ID) AS ID_Finanz, m.[voraussichtlich"
    "e Kosten gesamt] - sgp.SummeGeplant AS Gepl_Finanz, False AS Erl, \"noch nicht f"
    "estgel.\" AS Finanzquelle, \"noch nicht festgel.\" AS Finanzherkunft, m.[erledig"
    "t im Jahr], m.[voraussichtliche Kosten gesamt] - bereit.[Summe von Betrag] AS Su"
    "mmevontats_Kosten_Infoma, m.[voraussichtliche Kosten gesamt] - bereit.[Summe von"
    " Betrag] AS TatsOderGeplant\015\012FROM ((((((Maßnahmen AS m INNER JOIN tbl_100_"
    "20_Gebäudeteile AS geb ON m.[ID_Gebäudeteil] = geb.[ID_Gebäudeteil]) LEFT JOIN t"
    "bl_100_10_Liegenschaften AS lieg ON geb.[ID_Gebäude] = lieg.[ID_Gebäude]) LEFT J"
    "OIN Sachbearbeiter AS sb ON lieg.ID_SB = sb.ID) LEFT JOIN M_Strassenverzeichnis "
    "AS str1 ON geb.Kennummer_Straße = str1.Kennummer) LEFT JOIN [Geplante Finanzieru"
    "ng] AS gepl ON m.ID = gepl.ID_Massnahme) LEFT JOIN Bereitgestellt AS bereit ON m"
    ".ID = bereit.ID_Massnahme) LEFT JOIN SummeGeplanteFinanzierung AS sgp ON m.ID = "
    "sgp.ID_Massnahme\015\012GROUP BY \"N.N.\", lieg.[ID_Gebäude], str1.[Name] & \" \""
    " & lieg.[Haus_Nr] & \": \" & lieg.[Bezeichnung], geb.Gebäudeteil, geb.[ID_Gebäud"
    "eteil], m.ID, sb.Name, m.[Maßnahme] & \" (freie Mittel)\" & Chr (13) & Chr (10) "
    "& \"Vorauss. Kosten: \" & Format(m.[voraussichtliche Kosten gesamt], \"#,##0 €\""
    ") & \"; Summe tats./gepl.: \" & Format(bereit.[Summe von Betrag], \"#,##0 €\"), "
    "m.[voraussichtliche Kosten gesamt] - sgp.SummeGeplant, False, \"noch nicht festg"
    "el.\", \"noch nicht festgel.\", m.[erledigt im Jahr], m.[voraussichtliche Kosten"
    " gesamt] - bereit.[Summe von Betrag], gepl.Sammelbuchungsstelle\015\012HAVING (\012"
    "        m.[voraussichtliche Kosten gesamt] - bereit.[Summe von Betrag]\012    ) "
    "> 0\012    AND (gepl.Sammelbuchungsstelle = False)\015\012ORDER BY m.ID;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="-1"
dbInteger "RowHeight" ="788"
dbMemo "OrderBy" ="[Bericht Sanierungsstau nach Finanzpl_Part_03].[ID_Massn]"
dbMemo "Filter" ="([Bericht Sanierungsstau nach Finanzpl_Part_03].[ID_Massn]=2161)"
Begin
    Begin
        dbText "Name" ="LIegenschaft"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4635"
        dbInteger "ColumnOrder" ="4"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Haus"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1493"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ID_Massn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MN"
        dbInteger "ColumnWidth" ="7830"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Kalenderjahr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="Finanzquelle "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanzquelle"
        dbInteger "ColumnWidth" ="2685"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Finanz"
        dbInteger "ColumnWidth" ="1417"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanzherkunft"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summevontats_Kosten_Infoma"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="lieg.[ID_Gebäude]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="geb.[ID_Gebäudeteil]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sb.Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="m.[erledigt im Jahr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gepl_Finanz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TatsOderGeplant"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Fehlbetra"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Liegenschaft"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.ID_Finanz"
        dbInteger "ColumnWidth" ="1185"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.tbl_100_10_Liegenschaften.ID_Gebäud"
            "e"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Finanzherkunft"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Kalenderjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sachbearbeiter.Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.MN"
        dbInteger "ColumnWidth" ="5925"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[geplante Finanzierung].tats_Kosten_Infoma"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.[erledigt im Jahr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Sachbearbeiter.Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbInteger "ColumnWidth" ="1905"
        dbInteger "ColumnOrder" ="3"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.ID_Massn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.tbl_100_20_Gebäudeteile.ID_Gebäudet"
            "eil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Erl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Haus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Fehlbetra"
        dbInteger "ColumnWidth" ="2100"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.ID_Gebäude"
        dbInteger "ColumnWidth" ="1905"
        dbInteger "ColumnOrder" ="2"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="m.[voraussichtliche Kosten gesamt]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Finanzquelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Maßnahmen.[erledigt im Jahr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Summevontats_Kosten_Infoma"
        dbLong "AggregateType" ="-1"
    End
End
