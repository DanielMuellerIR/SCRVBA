Operation =1
Option =0
Where ="(((\"01.01.\" & [Jahr])>\"01.01.2005\" And (\"01.01.\" & [Jahr])<\"31.12.2009\")"
    ")"
Begin InputTables
    Name ="Kalenderjahre"
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Expression ="tbl_100_20_Gebäudeteile.Mietbeginn"
    Expression ="tbl_100_20_Gebäudeteile.Mietende"
    Alias ="Anfang"
    Expression ="\"01.01.\" & [Jahr]"
    Alias ="Ende"
    Expression ="\"31.12.\" & [Jahr]"
    Alias ="Anteile"
    Expression ="Faktor([Anfang],[Ende],IIf(IsNull([Mietbeginn]),[Anfang],[Mietbeginn]),IIf(IsNul"
        "l([Mietende]),[Ende],[Mietende]))"
    Expression ="Kalenderjahre.Jahr"
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
        dbText "Name" ="Anteile"
        dbInteger "ColumnWidth" ="1890"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Anfang"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1140"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Ende"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1140"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Mietbeginn"
        dbInteger "ColumnWidth" ="1500"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Mietende"
        dbInteger "ColumnWidth" ="1335"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Kalenderjahre.Jahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäude"
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
    Bottom =429
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =429
        Top =29
        Right =666
        Bottom =131
        Top =0
        Name ="Kalenderjahre"
        Name =""
    End
    Begin
        Left =94
        Top =27
        Right =402
        Bottom =423
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
