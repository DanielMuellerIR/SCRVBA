dbMemo "SQL" ="SELECT tbl_100_20_Gebäudeteile.ID_Gebäudeteil, tbl_100_20_Gebäudeteile.Gebäudete"
    "il\015\012FROM tbl_100_20_Gebäudeteile\015\012WHERE (((tbl_100_20_Gebäudeteile.I"
    "D_Gebäude)=[Formulare]![Filter für Anlagen]![KF_Liegenschaften]))\015\012ORDER B"
    "Y tbl_100_20_Gebäudeteile.Gebäudeteil;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
End
