dbMemo "SQL" ="SELECT * from B_Plausibilitätsprüfung_Part_01\015\012UNION SELECT * from B_Plaus"
    "ibilitätsprüfung_Part_02\015\012UNION SELECT * from B_Plausibilitätsprüfung_Part"
    "_03\015\012UNION SELECT * from B_Plausibilitätsprüfung_Part_04\015\012UNION SELE"
    "CT * from B_Plausibilitätsprüfung_Part_05\015\012UNION SELECT * from B_Plausibil"
    "itätsprüfung_Part_06\015\012UNION SELECT * from B_Plausibilitätsprüfung_Part_07\015"
    "\012UNION SELECT * from B_Plausibilitätsprüfung_Part_08\015\012UNION SELECT * fr"
    "om B_Plausibilitätsprüfung_Part_09\015\012UNION SELECT * from B_Plausibilitätspr"
    "üfung_Part_10\015\012UNION SELECT * from B_Plausibilitätsprüfung_Part_11\015\012"
    "UNION SELECT * from B_Plausibilitätsprüfung_Part_12;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbMemo "OrderBy" ="[B_Plausibilitätsprüfung].[Fehler], [B_Plausibilitätsprüfung].[Objekt]"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="B_Plausibilitätsprüfung_Part_01.Objekt"
        dbInteger "ColumnWidth" ="6735"
        dbInteger "ColumnOrder" ="2"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Plausibilitätsprüfung_Part_01.tbl_050_10_Gemarkungen.Gemarkung"
        dbInteger "ColumnOrder" ="3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Plausibilitätsprüfung_Part_01.tbl_070_10_Flure.Flur"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Plausibilitätsprüfung_Part_01.Flurstücke"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Plausibilitätsprüfung_Part_01.Fehler"
        dbInteger "ColumnWidth" ="6390"
        dbInteger "ColumnOrder" ="1"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
