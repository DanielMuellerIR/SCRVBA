Operation =1
Option =0
Where ="(((Bewertung_Archiv_4.Datei)=F_Variable(\"dt_Fix_Datum\")))"
Begin InputTables
    Name ="Bewertung_Archiv_4"
End
Begin OutputColumns
    Expression ="Bewertung_Archiv_4.ID_Gebäudeteil"
    Expression ="Bewertung_Archiv_4.Bauteil"
    Expression ="Bewertung_Archiv_4.Mehrwert"
    Expression ="Bewertung_Archiv_4.Datei"
    Expression ="Bewertung_Archiv_4.Erläuterung"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbBoolean "UseTransaction" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Bewertung_Archiv_4.Erläuterung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_4.Datei"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_4.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_4.Bauteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_4.Mehrwert"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1650
    Bottom =854
    Left =-1
    Top =-1
    Right =1361
    Bottom =334
    Left =0
    Top =6
    ColumnsShown =539
    Begin
        Left =93
        Top =55
        Right =509
        Bottom =310
        Top =0
        Name ="Bewertung_Archiv_4"
        Name =""
    End
End
