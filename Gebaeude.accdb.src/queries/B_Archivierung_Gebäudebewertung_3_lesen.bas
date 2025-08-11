Operation =1
Option =0
Where ="(((Bewertung_Archiv_3.Datei)=F_Variable(\"dt_Fix_Datum\")))"
Begin InputTables
    Name ="Bewertung_Archiv_3"
End
Begin OutputColumns
    Expression ="Bewertung_Archiv_3.ID_Gebäudeteil"
    Expression ="Bewertung_Archiv_3.Maßnahme"
    Expression ="Bewertung_Archiv_3.[voraussichtliche Kosten gesamt]"
    Expression ="Bewertung_Archiv_3.Datei"
    Expression ="Bewertung_Archiv_3.Erläuterung"
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
        dbText "Name" ="Bewertung_Archiv_3.Maßnahme"
        dbInteger "ColumnWidth" ="7410"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_3.Erläuterung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_3.Datei"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_3.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_3.[voraussichtliche Kosten gesamt]"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1208
    Bottom =854
    Left =-1
    Top =-1
    Right =1184
    Bottom =366
    Left =0
    Top =6
    ColumnsShown =539
    Begin
        Left =246
        Top =93
        Right =750
        Bottom =282
        Top =0
        Name ="Bewertung_Archiv_3"
        Name =""
    End
End
