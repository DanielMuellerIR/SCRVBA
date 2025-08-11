Operation =1
Option =0
Begin InputTables
    Name ="B_Sanierungsstau_Werterhöhung"
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Expression ="B_Sanierungsstau_Werterhöhung.Bauteil"
    Expression ="B_Sanierungsstau_Werterhöhung.Mehrwert"
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="B_Sanierungsstau_Werterhöhung"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäud"
        "eteil"
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
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Mehrwert"
        dbInteger "ColumnWidth" ="6480"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Bauteil"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =24
    Top =86
    Right =1142
    Bottom =833
    Left =-1
    Top =-1
    Right =1093
    Bottom =568
    Left =0
    Top =6
    ColumnsShown =539
    Begin
        Left =435
        Top =51
        Right =899
        Bottom =227
        Top =0
        Name ="B_Sanierungsstau_Werterhöhung"
        Name =""
    End
    Begin
        Left =112
        Top =0
        Right =377
        Bottom =561
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
