dbMemo "SQL" ="SELECT IIf(IsDate([BeendetB20]), False, True) AS Offen, Anlagen.*\015\012FROM An"
    "lagen\015\012WHERE (\012        (\012            (Anlagen.ID_Massnahme) = F_Vari"
    "able (\"lng_ID_Massn\")\012        )\012    )\015\012ORDER BY IIf(IsDate([Beende"
    "tB20]), False, True), Anlagen.BeendetB20 DESC , Angelegt DESC;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
End
