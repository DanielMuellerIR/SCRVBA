dbMemo "SQL" ="SELECT DISTINCTROW IIf(\012        [Kalenderjahr] IS NULL,\012        \"N.N.\",\012"
    "        CStr ([Kalenderjahr])\012    ) AS Kal_Jahr, tbl_100_10_Liegenschaften.ID"
    "_Gebäude, [M_Strassenverzeichnis].[Name] & \" \" & [tbl_100_10_Liegenschaften].["
    "Haus_Nr] & \": \" & [Bezeichnung] AS Liegenschaft, tbl_100_20_Gebäudeteile.Gebäu"
    "deteil AS Haus, tbl_100_20_Gebäudeteile.ID_Gebäudeteil, m.ID AS ID_Massn, Sachbe"
    "arbeiter.Name, m.Maßnahme, [Geplante Finanzierung].ID AS ID_Finanz, IIf(\012    "
    "    IsNull([Betrag]),\012        IIf(\012            IsNull(m.[voraussichtliche "
    "Kosten gesamt]),\012            0,\012            m.[voraussichtliche Kosten ges"
    "amt]\012        ),\012        [Betrag]\012    ) AS Gepl_Finanz, IIf([Kalenderjah"
    "r] IS NULL, False, [Erledigt]) AS Erl, Finanzquellen.Finanzquelle, Finanzherkunf"
    "t.Finanzherkunft, m.[erledigt im Jahr], [Geplante Finanzierung].tats_Kosten_Info"
    "ma, IIf(\012        [Geplante Finanzierung].tats_Kosten_Infoma IS NULL,\012     "
    "   Iif(\012            [Geplante Finanzierung].Betrag IS NULL,\012            Nz"
    " (m.[voraussichtliche Kosten gesamt], 0),\012            [Geplante Finanzierung]"
    ".Betrag\012        ),\012        [Geplante Finanzierung].tats_Kosten_Infoma\012 "
    "   ) AS TatsOderGeplant\015\012FROM ((tbl_100_10_Liegenschaften LEFT JOIN Sachbe"
    "arbeiter ON tbl_100_10_Liegenschaften.ID_SB = Sachbearbeiter.ID) RIGHT JOIN (tbl"
    "_100_20_Gebäudeteile RIGHT JOIN (Maßnahmen AS m LEFT JOIN (Finanzquellen RIGHT J"
    "OIN (Finanzherkunft RIGHT JOIN [Geplante Finanzierung] ON Finanzherkunft.ID_Fin_"
    "Her = [Geplante Finanzierung].ID_Fin_Her) ON Finanzquellen.ID_Fin_Qu = [Geplante"
    " Finanzierung].ID_Fin_Qu) ON m.ID = [Geplante Finanzierung].ID_Massnahme) ON tbl"
    "_100_20_Gebäudeteile.ID_Gebäudeteil = m.ID_Gebäudeteil) ON tbl_100_10_Liegenscha"
    "ften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude) LEFT JOIN M_Strassenverzei"
    "chnis ON tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kenn"
    "ummer\015\012WHERE (\012        (\012            ([Geplante Finanzierung].Sammel"
    "buchungsstelle) = False\012            OR ([Geplante Finanzierung].Sammelbuchung"
    "sstelle) IS NULL\012        )\012    );\015\012"
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
dbMemo "Filter" ="([Bericht Sanierungsstau nach Finanzpl_Part_01].[TatsOderGeplant] Is Null)"
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
    Begin
        dbText "Name" ="m.Maßnahme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="m.[erledigt im Jahr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TatsOderGeplant"
        dbLong "AggregateType" ="-1"
    End
End
