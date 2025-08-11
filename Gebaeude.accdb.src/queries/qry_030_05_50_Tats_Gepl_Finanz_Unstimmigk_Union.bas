dbMemo "SQL" ="Select distinctrow * from qry_030_05_20_Tats_Gepl_Finanz_Umstimmigkeiten_01\015\012"
    "UNION select  distinctrow * from qry_030_05_40_Tats_Gepl_Finanz_Umstimmigkeiten_"
    "03\015\012UNION select  distinctrow * from qry_030_05_45_Tats_Gepl_Finanz_Umstim"
    "migkeiten_04;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="qry_030_05_20_Tats_Gepl_Finanz_Umstimmigkeiten_01.Maßnahmen.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_030_05_20_Tats_Gepl_Finanz_Umstimmigkeiten_01.zufVfg"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_030_05_20_Tats_Gepl_Finanz_Umstimmigkeiten_01.qry_030_05_10_Gepl_Finanz_Maßn"
            "_Summen.SummevonBetrag"
        dbLong "AggregateType" ="-1"
    End
End
