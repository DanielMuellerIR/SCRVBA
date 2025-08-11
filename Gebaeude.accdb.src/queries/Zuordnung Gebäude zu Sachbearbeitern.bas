Operation =1
Option =0
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Expression ="tbl_100_10_Liegenschaften.Bezeichnung"
    Expression ="tbl_100_10_Liegenschaften.ID_SB"
    Alias ="STraße_HN"
    Expression ="[NAme] & \" \" & [Haus_Nr]"
End
Begin Joins
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
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
        dbText "Name" ="STraße_HN "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Bezeichnung"
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.ID_SB"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="STraße_HN"
        dbInteger "ColumnWidth" ="3825"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1890
    Bottom =1004
    Left =-1
    Top =-1
    Right =1866
    Bottom =284
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =442
        Top =36
        Right =762
        Bottom =258
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =902
        Top =54
        Right =1046
        Bottom =198
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
