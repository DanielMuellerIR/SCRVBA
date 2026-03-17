dbMemo "SQL" ="SELECT tbl_20_10_Aufträge.*, Mid([tbl_20_10_Aufträge].[Auftragsnr],4,4) AS Jahr,"
    " [Vergabeart] & \"(\" & [Vergabe_Grundlage] & \")\" AS Verg_art, Right([tbl_20_1"
    "0_Aufträge].[Auftragsnr],4) AS AufNr, [tbl_10_10_User].[Anrede] & \" \" & [tbl_1"
    "0_10_User].[Username] AS SB, qry_20_10_DH_Auftr_Liste.beauftr_Firma\015\012FROM "
    "((tbl_20_10_Aufträge LEFT JOIN tbl_20_20_Vergabe_Art ON tbl_20_10_Aufträge.ID_Ve"
    "rgabe_Art = tbl_20_20_Vergabe_Art.ID_Vergabe_Art) LEFT JOIN tbl_10_10_User ON tb"
    "l_20_10_Aufträge.ID_User = tbl_10_10_User.ID_User) INNER JOIN qry_20_10_DH_Auftr"
    "_Liste ON tbl_20_10_Aufträge.ID_Auftrag = qry_20_10_DH_Auftr_Liste.ID_Auftrag\015"
    "\012WHERE (((Right([tbl_20_10_Aufträge].[Auftragsnr],4)) Like \"*\" & [Formulare"
    "]![frm_10_10_Startformular]![TF_Filter_AuftrNr] & \"*\"))\015\012ORDER BY Right("
    "[tbl_20_10_Aufträge].[Auftragsnr],4);\015\012"
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
dbSingle "ECLScaleFactor" ="1"
Begin
    Begin
        dbText "Name" ="Verg_art"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SB"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Jahr"
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.ID_User2"
        dbInteger "ColumnOrder" ="7"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.ID_Auftrag"
        dbInteger "ColumnOrder" ="1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Auftragsnr"
        dbInteger "ColumnOrder" ="3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Schätzkosten"
        dbInteger "ColumnOrder" ="9"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.angelegt_am"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Leistungsort"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.ID_User"
        dbInteger "ColumnOrder" ="6"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.ID_Vergabe_Art"
        dbInteger "ColumnOrder" ="8"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Produktbezeichnung"
        dbInteger "ColumnOrder" ="10"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Teilnehmer"
        dbInteger "ColumnOrder" ="11"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Bemerkungen"
        dbInteger "ColumnOrder" ="12"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.beauftragte_Firma"
        dbInteger "ColumnOrder" ="14"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Auftragssumme"
        dbInteger "ColumnOrder" ="15"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.SR_Summe"
        dbInteger "ColumnOrder" ="16"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.SR_bearbeitet_am"
        dbInteger "ColumnOrder" ="17"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Best_Nr_Infoma"
        dbInteger "ColumnOrder" ="18"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="AufNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.SK_brutto"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.SR_brutto"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.SR_MWST_Satz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.ID_Fa"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.SR_brutto_Alt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_20_10_DH_Auftr_Liste.beauftragte_Firma"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.ID_Obj"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.AS_brutto"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.SK_MWST_Satz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.SK_brutto_Alt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Auftrags_Dat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.AS_MWST_Satz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Auftragssumme_Alt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.AS_brutto_alt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_20_10_Aufträge.Mel_Nr_Infoma"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SK_brutto_alt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SR_brutto_alt"
        dbLong "AggregateType" ="-1"
    End
End
