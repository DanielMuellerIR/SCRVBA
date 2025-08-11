dbMemo "SQL" ="SELECT  * from qry_030_10_10_Rep_Teilm_Finanz_Summen\015\012UNION SELECT * from "
    "qry_030_10_15_Rep_Finanzgen_Unst_TM_Kosten\015\012UNION SELECT * from qry_030_10"
    "_20_Rep_Teilm_TM_Kostensummen\015\012UNION SELECT * from qry_030_10_25_Rep_Fehl_"
    "TM;\015\012"
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
        dbText "Name" ="qry_030_10_10_Rep_Teilm_Finanz_Summen.Maßnahmen.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_030_10_10_Rep_Teilm_Finanz_Summen.Obj_Massn"
        dbInteger "ColumnWidth" ="9540"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_030_10_10_Rep_Teilm_Finanz_Summen.Finanz_Jahressumme"
        dbInteger "ColumnWidth" ="2400"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="qry_030_10_10_Rep_Teilm_Finanz_Summen.IDTM"
        dbLong "AggregateType" ="-1"
    End
End
