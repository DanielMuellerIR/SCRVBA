Operation =1
Option =0
Begin InputTables
    Name ="tbl_200_10_05_Indexe"
End
Begin OutputColumns
    Expression ="tbl_200_10_05_Indexe.*"
End
Begin OrderBy
    Expression ="tbl_200_10_05_Indexe.Bezugsjahr"
    Flag =0
    Expression ="tbl_200_10_05_Indexe.Jahr"
    Flag =0
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
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="tbl_200_10_05_Indexe.Bezugsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_05_Indexe.Jahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_05_Indexe.Index_Buero_Gebaeude"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_05_Indexe.Index_Gewerbl_Betriebsgebaeude"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_05_Indexe.Index"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1323
    Bottom =984
    Left =-1
    Top =-1
    Right =1291
    Bottom =493
    Left =0
    Top =0
    ColumnsShown =537
    Begin
        Left =48
        Top =12
        Right =421
        Bottom =199
        Top =0
        Name ="tbl_200_10_05_Indexe"
        Name =""
    End
End
