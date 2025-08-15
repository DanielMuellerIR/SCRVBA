dbMemo "SQL" ="SELECT IIf(\012        [Kalenderjahr] IS NULL,\012        \"N.N.\",\012        C"
    "Str ([Kalenderjahr])\012    ) AS Kal_Jahr, tbl_100_10_Liegenschaften.ID_Gebäude,"
    " [M_Strassenverzeichnis_1].[Name] & \" \" & [tbl_100_10_Liegenschaften].[HAus_Nr"
    "] & \": \" & [Bezeichnung] AS Liegenschaft, tbl_100_20_Gebäudeteile.Gebäudeteil "
    "AS Haus, tbl_100_20_Gebäudeteile.ID_Gebäudeteil, m.ID AS ID_Massn, Sachbearbeite"
    "r.Name, m.Maßnahme, [Geplante Finanzierung].ID AS ID_Finanz, IIf(\012        IsN"
    "ull([Betrag]),\012        IIf(\012            IsNull([voraussichtliche Kosten ge"
    "samt]),\012            0,\012            [voraussichtliche Kosten gesamt]\012   "
    "     ),\012        [Betrag]\012    ) AS Gepl_Finanz, IIf([Kalenderjahr] IS NULL,"
    " False, [Erledigt]) AS Erl, Finanzquellen.Finanzquelle, Finanzherkunft.Finanzher"
    "kunft, m.[erledigt im Jahr], [Geplante Finanzierung].tats_Kosten_Infoma, IIf(\012"
    "        [Geplante Finanzierung].tats_Kosten_Infoma IS NULL,\012        Iif(\012 "
    "           [Geplante Finanzierung].Betrag IS NULL,\012            Nz (m.[vorauss"
    "ichtliche Kosten gesamt], 0),\012            [Geplante Finanzierung].Betrag\012 "
    "       ),\012        [Geplante Finanzierung].tats_Kosten_Infoma\012    ) AS Tats"
    "OderGeplant\015\012FROM ((tbl_100_10_Liegenschaften LEFT JOIN M_Strassenverzeich"
    "nis AS M_Strassenverzeichnis_1 ON tbl_100_10_Liegenschaften.Kennummer_Straße = M"
    "_Strassenverzeichnis_1.Kennummer) LEFT JOIN Sachbearbeiter ON tbl_100_10_Liegens"
    "chaften.ID_SB = Sachbearbeiter.ID) RIGHT JOIN ((tbl_100_20_Gebäudeteile LEFT JOI"
    "N M_Strassenverzeichnis ON tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassen"
    "verzeichnis.Kennummer) RIGHT JOIN (Maßnahmen AS m LEFT JOIN (Finanzquellen RIGHT"
    " JOIN (Finanzherkunft RIGHT JOIN [Geplante Finanzierung] ON Finanzherkunft.ID_Fi"
    "n_Her = [Geplante Finanzierung].ID_Fin_Her) ON Finanzquellen.ID_Fin_Qu = [Geplan"
    "te Finanzierung].ID_Fin_Qu) ON m.ID = [Geplante Finanzierung].ID_Massnahme) ON t"
    "bl_100_20_Gebäudeteile.ID_Gebäudeteil = m.ID_Gebäudeteil) ON tbl_100_10_Liegensc"
    "haften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude\015\012WHERE (\012       "
    " (\012            ([Geplante Finanzierung].Sammelbuchungsstelle) = False\012    "
    "        OR ([Geplante Finanzierung].Sammelbuchungsstelle) IS NULL\012        )\012"
    "        AND (([Geplante Finanzierung].Kalenderjahr) IS NULL)\012    );\015\012"
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
dbMemo "Filter" ="([Bericht Sanierungsstau nach Finanzpl_Part_02].[TatsOderGeplant] Is Null)"
Begin
    Begin
        dbText "Name" ="Haus "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haus"
        dbInteger "ColumnWidth" ="3330"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="Sachbearbeiter.Name"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
        dbInteger "ColumnWidth" ="1725"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Gepl_Finanz "
        dbInteger "ColumnOrder" ="9"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanzquellen.Finanzquelle"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2970"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="KAl_JAhr"
        dbInteger "ColumnWidth" ="2085"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="Gepl_Finanz"
        dbInteger "ColumnWidth" ="2325"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="KAl_JAhr "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.ID_Gebäude"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
        dbInteger "ColumnWidth" ="1845"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ID_Massn "
        dbInteger "ColumnWidth" ="1665"
        dbInteger "ColumnOrder" ="2"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Massn"
        dbInteger "ColumnWidth" ="1065"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="LIegenschaft"
        dbInteger "ColumnWidth" ="4650"
        dbInteger "ColumnOrder" ="4"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="LIegenschaft "
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Finanz"
        dbInteger "ColumnWidth" ="1417"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanzherkunft.Finanzherkunft"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erl "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Geplante Finanzierung].tats_Kosten_Infoma"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TatsOderGeplant"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="m.Maßnahme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="m.[erledigt im Jahr]"
        dbLong "AggregateType" ="-1"
    End
End
