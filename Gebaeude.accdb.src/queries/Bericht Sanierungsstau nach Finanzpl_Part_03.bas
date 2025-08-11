dbMemo "SQL" ="SELECT \"N.N.\" AS Kalenderjahr, tbl_100_10_Liegenschaften.ID_Gebäude, [M_Strass"
    "enverzeichnis_1].[Name] & \" \" & [tbl_100_10_Liegenschaften].[Haus_Nr] & \": \""
    " & [Bezeichnung] AS Liegenschaft, tbl_100_20_Gebäudeteile.Gebäudeteil AS Haus, t"
    "bl_100_20_Gebäudeteile.ID_Gebäudeteil, Maßnahmen.ID AS ID_Massn, Sachbearbeiter."
    "Name, [Maßnahme] & Chr (13) & Chr (10) & \"Vorauss. Kosten: \" & Format([vorauss"
    "ichtliche Kosten gesamt], \"#,##0 €\") & \"; Summe tats./gepl.: \" & Format([Sum"
    "me von Betrag], \"#,##0 €\") & \"; frei s. letzte Spalte\" AS MN, Max([geplante "
    "Finanzierung].ID) AS ID_Finanz, [voraussichtliche Kosten gesamt] - [Summe von Be"
    "trag] AS Fehlbetra, False AS Erl, \"noch nicht festgel.\" AS Finanzquelle, \"noc"
    "h nicht festgel.\" AS Finanzherkunft, Maßnahmen.[erledigt im Jahr], [voraussicht"
    "liche Kosten gesamt] - [Summe von Betrag] AS Summevontats_Kosten_Infoma\015\012F"
    "ROM (Sachbearbeiter RIGHT JOIN (tbl_100_10_Liegenschaften LEFT JOIN M_Strassenve"
    "rzeichnis AS M_Strassenverzeichnis_1 ON tbl_100_10_Liegenschaften.Kennummer_Stra"
    "ße = M_Strassenverzeichnis_1.Kennummer) ON Sachbearbeiter.ID = tbl_100_10_Liegen"
    "schaften.ID_SB) INNER JOIN ((tbl_100_20_Gebäudeteile LEFT JOIN M_Strassenverzeic"
    "hnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennumm"
    "er) INNER JOIN ((Maßnahmen LEFT JOIN Bereitgestellt ON Maßnahmen.ID = Bereitgest"
    "ellt.[ID_Massnahme]) LEFT JOIN [geplante Finanzierung] ON Maßnahmen.ID = [geplan"
    "te Finanzierung].[ID_Massnahme]) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maß"
    "nahmen.ID_Gebäudeteil) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebä"
    "udeteile.ID_Gebäude\015\012GROUP BY \"N.N.\", tbl_100_10_Liegenschaften.ID_Gebäu"
    "de, [M_Strassenverzeichnis_1].[Name] & \" \" & [tbl_100_10_Liegenschaften].[Haus"
    "_Nr] & \": \" & [Bezeichnung], tbl_100_20_Gebäudeteile.Gebäudeteil, tbl_100_20_G"
    "ebäudeteile.ID_Gebäudeteil, Maßnahmen.ID, Sachbearbeiter.Name, [Maßnahme] & Chr "
    "(13) & Chr (10) & \"Vorauss. Kosten: \" & Format([voraussichtliche Kosten gesamt"
    "], \"#,##0 €\") & \"; Summe tats./gepl.: \" & Format([Summe von Betrag], \"#,##0"
    " €\") & \"; frei s. letzte Spalte\", [voraussichtliche Kosten gesamt] - [Summe v"
    "on Betrag], False, \"noch nicht festgel.\", \"noch nicht festgel.\", Maßnahmen.["
    "erledigt im Jahr], [voraussichtliche Kosten gesamt] - [Summe von Betrag], [gepla"
    "nte Finanzierung].Sammelbuchungsstelle\015\012HAVING (\012        (\012         "
    "   (\012                [voraussichtliche Kosten gesamt] - [Summe von Betrag]\012"
    "            ) > 0\012        )\012        AND (\012            ([geplante Finanz"
    "ierung].Sammelbuchungsstelle) = False\012        )\012    )\015\012ORDER BY Maßn"
    "ahmen.ID;\015\012"
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
dbMemo "Filter" ="([Bericht Sanierungsstau nach Finanzpl_Part_03].[ID_Massn]=2127)"
dbInteger "RowHeight" ="788"
Begin
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.ID_Gebäude"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1905"
        dbInteger "ColumnOrder" ="2"
        dbBoolean "ColumnHidden" ="0"
    End
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
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1905"
        dbInteger "ColumnOrder" ="3"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ID_Massn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sachbearbeiter.Name"
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
        dbText "Name" ="Fehlbetra"
        dbInteger "ColumnWidth" ="2100"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
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
        dbText "Name" ="Maßnahmen.[erledigt im Jahr]"
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
        dbText "Name" ="[geplante Finanzierung].tats_Kosten_Infoma"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Kalenderjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.tbl_100_10_Liegenschaften.ID_Gebäud"
            "e"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Liegenschaft"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Haus"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.tbl_100_20_Gebäudeteile.ID_Gebäudet"
            "eil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.ID_Massn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Sachbearbeiter.Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.MN"
        dbInteger "ColumnWidth" ="5925"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Finanzherkunft"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.ID_Finanz"
        dbInteger "ColumnWidth" ="1185"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Fehlbetra"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bericht Sanierungsstau nach Finanzpl_Part_03.Erl"
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
