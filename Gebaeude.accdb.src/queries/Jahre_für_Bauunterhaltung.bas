Operation =1
Option =0
Where ="(((Kalenderjahre.Jahr)>2005) AND ((tbl_100_20_Gebäudeteile.Mietrelevant)=True))"
Begin InputTables
    Name ="Kalenderjahre"
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Expression ="Kalenderjahre.Jahr"
End
Begin OrderBy
    Expression ="Kalenderjahre.Jahr"
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
        dbText "Name" ="M_Objekte.ID"
        dbInteger "ColumnWidth" ="2100"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Kalenderjahre.Jahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Mietrelevant"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =988
    Bottom =846
    Left =-1
    Top =-1
    Right =956
    Bottom =509
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =472
        Top =122
        Right =649
        Bottom =246
        Top =0
        Name ="Kalenderjahre"
        Name =""
    End
    Begin
        Left =104
        Top =18
        Right =402
        Bottom =468
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
