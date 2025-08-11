Operation =1
Option =0
Begin InputTables
    Name ="MonatsAO_temp_Buchungssatz_BuSt"
    Name ="Buchungsstellen _Doppik"
End
Begin OutputColumns
    Expression ="[Buchungsstellen _Doppik].Buchungsstelle"
    Expression ="[Buchungsstellen _Doppik].Kennummer"
End
Begin Joins
    LeftTable ="MonatsAO_temp_Buchungssatz_BuSt"
    RightTable ="Buchungsstellen _Doppik"
    Expression ="MonatsAO_temp_Buchungssatz_BuSt.[ID aus Buchungsstellen] = [Buchungsstellen _Dop"
        "pik].Kennummer"
    Flag =2
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
        dbText "Name" ="[Buchungsstellen _Doppik].Buchungsstelle"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1393
    Bottom =984
    Left =-1
    Top =-1
    Right =1361
    Bottom =178
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =344
        Bottom =105
        Top =0
        Name ="MonatsAO_temp_Buchungssatz_BuSt"
        Name =""
    End
    Begin
        Left =446
        Top =6
        Right =878
        Bottom =105
        Top =0
        Name ="Buchungsstellen _Doppik"
        Name =""
    End
End
