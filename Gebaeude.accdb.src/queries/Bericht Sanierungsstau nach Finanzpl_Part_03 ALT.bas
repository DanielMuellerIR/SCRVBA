dbMemo "SQL" ="SELECT \"N.N.\" AS Kalenderjahr, tbl_100_10_Liegenschaften.ID_Gebäude, [M_Strass"
    "enverzeichnis_1].[Name] & \" \" & [tbl_100_10_Liegenschaften].[Haus_Nr] & \": \""
    " & [Bezeichnung] AS Liegenschaft, tbl_100_20_Gebäudeteile.Gebäudeteil AS Haus, t"
    "bl_100_20_Gebäudeteile.ID_Gebäudeteil, Maßnahmen.ID AS ID_Massn, Sachbearbeiter."
    "Name, [Maßnahme] & Chr (13) & Chr (10) & \"(vorauss. Kosten: \" & Format([voraus"
    "sichtliche Kosten gesamt], \"#,##0 €\") & \")\" AS MN, Max([geplante Finanzierun"
    "g].ID) AS ID_Finanz, [voraussichtliche Kosten gesamt] - [Summe von Betrag] AS Fe"
    "hlbetra, False AS Erl, \"noch nicht festgel.\" AS Finanzquelle, \"noch nicht fes"
    "tgel.\" AS Finanzherkunft, Maßnahmen.[erledigt im Jahr], Sum([geplante Finanzier"
    "ung].tats_Kosten_Infoma) AS Summevontats_Kosten_Infoma\015\012FROM (Sachbearbeit"
    "er RIGHT JOIN (tbl_100_10_Liegenschaften LEFT JOIN M_Strassenverzeichnis AS M_St"
    "rassenverzeichnis_1 ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenve"
    "rzeichnis_1.Kennummer) ON Sachbearbeiter.ID = tbl_100_10_Liegenschaften.ID_SB) I"
    "NNER JOIN ((tbl_100_20_Gebäudeteile LEFT JOIN M_Strassenverzeichnis ON tbl_100_2"
    "0_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer) INNER JOIN (("
    "Maßnahmen LEFT JOIN Bereitgestellt ON Maßnahmen.ID = Bereitgestellt.[ID_Massnahm"
    "e]) LEFT JOIN [geplante Finanzierung] ON Maßnahmen.ID = [geplante Finanzierung]."
    "[ID_Massnahme]) ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäude"
    "teil) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäu"
    "de\015\012WHERE (\012        (\012            ([geplante Finanzierung].Sammelbuc"
    "hungsstelle) = False\012        )\012    )\015\012GROUP BY \"N.N.\", tbl_100_10_"
    "Liegenschaften.ID_Gebäude, [M_Strassenverzeichnis_1].[Name] & \" \" & [tbl_100_1"
    "0_Liegenschaften].[HAus_Nr] & \": \" & [Bezeichnung], tbl_100_20_Gebäudeteile.Ge"
    "bäudeteil, tbl_100_20_Gebäudeteile.ID_Gebäudeteil, Maßnahmen.ID, Sachbearbeiter."
    "Name, [Maßnahme] & Chr (13) & Chr (10) & \"(vorauss. Kosten: \" & Format([voraus"
    "sichtliche Kosten gesamt], \"#,##0 €\") & \")\", [voraussichtliche Kosten gesamt"
    "] - [Summe von Betrag], False, \"noch nicht festgel.\", \"noch nicht zugeordnet\""
    ", Maßnahmen.[erledigt im Jahr]\015\012HAVING (\012        (\012            (\012"
    "                [voraussichtliche Kosten gesamt] - [Summe von Betrag]\012       "
    "     ) > 0\012        )\012        AND Maßnahme.KF_ID_Massn\012    )\015\012ORDE"
    "R BY Maßnahmen.ID;\015\012"
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
dbMemo "Filter" ="([Bericht Sanierungsstau nach Finanzpl_Part_03].[Liegenschaft]=\"WALDENBURGER ST"
    "R. 130: Neue Gesamtschule Ickern\")"
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
End
