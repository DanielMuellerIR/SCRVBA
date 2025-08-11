Operation =1
Option =0
Begin InputTables
    Name ="tbl_200_10_05_Indexe"
End
Begin OutputColumns
    Expression ="tbl_200_10_05_Indexe.Jahr"
    Expression ="tbl_200_10_05_Indexe.[Anteil Bodenrichtwert]"
    Alias ="MaxvonBezugsjahr"
    Expression ="Max(tbl_200_10_05_Indexe.Bezugsjahr)"
End
Begin Groups
    Expression ="tbl_200_10_05_Indexe.Jahr"
    GroupLevel =0
    Expression ="tbl_200_10_05_Indexe.[Anteil Bodenrichtwert]"
    GroupLevel =0
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
        dbText "Name" ="MaxvonBezugsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_05_Indexe.Jahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_05_Indexe.[Anteil Bodenrichtwert]"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1278
    Bottom =992
    Left =-1
    Top =-1
    Right =1254
    Bottom =498
    Left =0
    Top =0
    ColumnsShown =541
    Begin
        Left =48
        Top =12
        Right =453
        Bottom =193
        Top =0
        Name ="tbl_200_10_05_Indexe"
        Name =""
    End
End
