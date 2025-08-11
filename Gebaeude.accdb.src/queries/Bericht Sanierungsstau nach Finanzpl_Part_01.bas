dbMemo "SQL" ="SELECT DISTINCTROW IIf(\012        [Kalenderjahr] IS NULL,\012        \"N.N.\",\012"
    "        CStr ([Kalenderjahr])\012    ) AS Kal_Jahr, tbl_100_10_Liegenschaften.ID"
    "_Gebäude, [M_Strassenverzeichnis].[Name] & \" \" & [tbl_100_10_Liegenschaften].["
    "Haus_Nr] & \": \" & [Bezeichnung] AS Liegenschaft, tbl_100_20_Gebäudeteile.Gebäu"
    "deteil AS Haus, tbl_100_20_Gebäudeteile.ID_Gebäudeteil, Maßnahmen.ID AS ID_Massn"
    ", Sachbearbeiter.Name, Maßnahmen.Maßnahme, [Geplante Finanzierung].ID AS ID_Fina"
    "nz, IIf(\012        IsNull([Betrag]),\012        IIf(\012            IsNull([vor"
    "aussichtliche Kosten gesamt]),\012            0,\012            [voraussichtlich"
    "e Kosten gesamt]\012        ),\012        [Betrag]\012    ) AS Gepl_Finanz, IIf("
    "[Kalenderjahr] IS NULL, False, [Erledigt]) AS Erl, Finanzquellen.Finanzquelle, F"
    "inanzherkunft.Finanzherkunft, Maßnahmen.[erledigt im Jahr], [Geplante Finanzieru"
    "ng].tats_Kosten_Infoma\015\012FROM ((tbl_100_10_Liegenschaften LEFT JOIN Sachbea"
    "rbeiter ON tbl_100_10_Liegenschaften.ID_SB = Sachbearbeiter.ID) RIGHT JOIN (tbl_"
    "100_20_Gebäudeteile RIGHT JOIN (Maßnahmen LEFT JOIN (Finanzquellen RIGHT JOIN (F"
    "inanzherkunft RIGHT JOIN [Geplante Finanzierung] ON Finanzherkunft.ID_Fin_Her = "
    "[Geplante Finanzierung].ID_Fin_Her) ON Finanzquellen.ID_Fin_Qu = [Geplante Finan"
    "zierung].ID_Fin_Qu) ON Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme) ON t"
    "bl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil) ON tbl_100_10_"
    "Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude) LEFT JOIN M_Stra"
    "ssenverzeichnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzei"
    "chnis.Kennummer\015\012WHERE (\012        (\012            ([Geplante Finanzieru"
    "ng].Sammelbuchungsstelle) = False\012            OR ([Geplante Finanzierung].Sam"
    "melbuchungsstelle) IS NULL\012        )\012    );\015\012"
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
        dbText "Name" ="Maßnahmen.Maßnahme"
        dbInteger "ColumnWidth" ="4185"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="8"
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
        dbInteger "ColumnWidth" ="4485"
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
        dbText "Name" ="ID_Finanz "
        dbInteger "ColumnWidth" ="1500"
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
        dbText "Name" ="Finanzherkunft.Finanzherkunft"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erl "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Geplante Finanzierung].tats_Kosten_Infoma"
        dbLong "AggregateType" ="-1"
    End
End
