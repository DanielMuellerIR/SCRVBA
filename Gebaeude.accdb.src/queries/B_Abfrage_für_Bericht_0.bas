Operation =1
Option =0
Begin InputTables
    Name ="NHK-Typen"
    Name ="NKH-Ausstattungen"
    Name ="NHK-Werte"
End
Begin OutputColumns
    Expression ="[NHK-Typen].Kennummer"
    Expression ="[NHK-Typen].[Typ-Nr]"
    Expression ="[NHK-Typen].Typ"
    Expression ="[NKH-Ausstattungen].[ID aus NHK-Typen]"
    Expression ="[NKH-Ausstattungen].Ausstattung"
    Expression ="[NHK-Werte].Kennummer"
    Expression ="[NHK-Werte].[von 25]"
    Expression ="[NHK-Werte].[bis 25]"
    Expression ="[NHK-Werte].[von 25 - 45]"
    Expression ="[NHK-Werte].[bis 25 - 45]"
    Expression ="[NHK-Werte].[von 46 - 59]"
    Expression ="[NHK-Werte].[bis 46 - 59]"
    Expression ="[NHK-Werte].[von 60 - 69]"
    Expression ="[NHK-Werte].[bis 60 - 69]"
    Expression ="[NHK-Werte].[von 70 - 84]"
    Expression ="[NHK-Werte].[bis 70 - 84]"
    Expression ="[NHK-Werte].[von 85 - 99]"
    Expression ="[NHK-Werte].[bis 85 - 99]"
    Expression ="[NHK-Werte].[von 2000]"
    Expression ="[NHK-Werte].[bis 2000]"
    Expression ="[NHK-Typen].Baunebenkosten"
End
Begin Joins
    LeftTable ="NKH-Ausstattungen"
    RightTable ="NHK-Werte"
    Expression ="[NKH-Ausstattungen].Kennummer = [NHK-Werte].[ID aus NHK-Ausstattun]"
    Flag =2
    LeftTable ="NHK-Typen"
    RightTable ="NKH-Ausstattungen"
    Expression ="[NHK-Typen].Kennummer = [NKH-Ausstattungen].[ID aus NHK-Typen]"
    Flag =2
End
Begin Groups
    Expression ="[NHK-Typen].Kennummer"
    GroupLevel =0
    Expression ="[NHK-Typen].[Typ-Nr]"
    GroupLevel =0
    Expression ="[NHK-Typen].Typ"
    GroupLevel =0
    Expression ="[NKH-Ausstattungen].[ID aus NHK-Typen]"
    GroupLevel =0
    Expression ="[NKH-Ausstattungen].Ausstattung"
    GroupLevel =0
    Expression ="[NHK-Werte].Kennummer"
    GroupLevel =0
    Expression ="[NHK-Werte].[von 25]"
    GroupLevel =0
    Expression ="[NHK-Werte].[bis 25]"
    GroupLevel =0
    Expression ="[NHK-Werte].[von 25 - 45]"
    GroupLevel =0
    Expression ="[NHK-Werte].[bis 25 - 45]"
    GroupLevel =0
    Expression ="[NHK-Werte].[von 46 - 59]"
    GroupLevel =0
    Expression ="[NHK-Werte].[bis 46 - 59]"
    GroupLevel =0
    Expression ="[NHK-Werte].[von 60 - 69]"
    GroupLevel =0
    Expression ="[NHK-Werte].[bis 60 - 69]"
    GroupLevel =0
    Expression ="[NHK-Werte].[von 70 - 84]"
    GroupLevel =0
    Expression ="[NHK-Werte].[bis 70 - 84]"
    GroupLevel =0
    Expression ="[NHK-Werte].[von 85 - 99]"
    GroupLevel =0
    Expression ="[NHK-Werte].[bis 85 - 99]"
    GroupLevel =0
    Expression ="[NHK-Werte].[von 2000]"
    GroupLevel =0
    Expression ="[NHK-Werte].[bis 2000]"
    GroupLevel =0
    Expression ="[NHK-Typen].Baunebenkosten"
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
        dbText "Name" ="[NHK-Typen].Typ"
        dbInteger "ColumnOrder" ="5"
        dbInteger "ColumnWidth" ="10800"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Typen].Kennummer"
        dbInteger "ColumnWidth" ="2430"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Typen].Baunebenkosten"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].[bis 2000]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].[bis 25]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Typen].[Typ-Nr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NKH-Ausstattungen].[ID aus NHK-Typen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NKH-Ausstattungen].Ausstattung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].Kennummer"
        dbInteger "ColumnWidth" ="3015"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].[von 25]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].[von 25 - 45]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].[bis 25 - 45]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].[von 46 - 59]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].[bis 46 - 59]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].[von 60 - 69]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].[bis 60 - 69]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].[von 70 - 84]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].[bis 70 - 84]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].[von 85 - 99]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].[bis 85 - 99]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[NHK-Werte].[von 2000]"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1871
    Bottom =992
    Left =-1
    Top =-1
    Right =1847
    Bottom =535
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =100
        Top =90
        Right =315
        Bottom =255
        Top =0
        Name ="NHK-Typen"
        Name =""
    End
    Begin
        Left =380
        Top =74
        Right =616
        Bottom =205
        Top =0
        Name ="NKH-Ausstattungen"
        Name =""
    End
    Begin
        Left =679
        Top =58
        Right =957
        Bottom =433
        Top =0
        Name ="NHK-Werte"
        Name =""
    End
End
