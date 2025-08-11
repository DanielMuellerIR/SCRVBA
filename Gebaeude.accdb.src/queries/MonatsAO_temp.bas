Operation =1
Option =0
Where ="(((A_Buchungen.angelegt) Like [formulare]![Monatsanordnung]![angelegt_neu]))"
Begin InputTables
    Name ="A_Buchungen"
End
Begin OutputColumns
    Expression ="A_Buchungen.ID"
    Expression ="A_Buchungen.angelegt"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="A_Buchungen.angelegt"
        dbInteger "ColumnWidth" ="4245"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="A_Buchungen.ID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1882
    Bottom =861
    Left =-1
    Top =-1
    Right =1858
    Bottom =412
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =417
        Bottom =259
        Top =0
        Name ="A_Buchungen"
        Name =""
    End
End
