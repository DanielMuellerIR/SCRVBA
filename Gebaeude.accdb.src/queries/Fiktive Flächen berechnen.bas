Operation =1
Option =0
Where ="(((tbl_100_20_Gebäudeteile.Mietrelevant)=True))"
Begin InputTables
    Name ="Kalkulationsjahr"
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Expression ="tbl_100_20_Gebäudeteile.Mietbeginn"
    Expression ="tbl_100_20_Gebäudeteile.Mietende"
    Expression ="Kalkulationsjahr.Anfang"
    Expression ="Kalkulationsjahr.Ende"
    Alias ="Anteile"
    Expression ="Faktor([Anfang],[Ende],IIf(IsNull([Mietbeginn]),[Anfang],[Mietbeginn]),IIf(IsNul"
        "l([Mietende]),[Ende],[Mietende]))"
    Expression ="tbl_100_20_Gebäudeteile.Sportfläche"
    Expression ="tbl_100_20_Gebäudeteile.BGF"
    Alias ="Berechnungsfläche"
    Expression ="IIf([angemietetes_Gebäude]=Yes,0,IIf([Sportfläche]=Yes,[BGF]/100*2,[BGF])*[Antei"
        "le])"
    Expression ="tbl_100_20_Gebäudeteile.angemietetes_Gebäude"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="-1"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Anteile"
        dbInteger "ColumnWidth" ="1890"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="6"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Berechnungsfläche"
        dbInteger "ColumnWidth" ="2190"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Fixed"
        dbInteger "ColumnOrder" ="10"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="Kalkulationsjahr.Anfang"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Kalkulationsjahr.Ende"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbInteger "ColumnWidth" ="3180"
        dbInteger "ColumnOrder" ="1"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Mietbeginn"
        dbInteger "ColumnWidth" ="1215"
        dbInteger "ColumnOrder" ="2"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Mietende"
        dbInteger "ColumnWidth" ="1110"
        dbInteger "ColumnOrder" ="3"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Sportfläche"
        dbInteger "ColumnOrder" ="7"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.BGF"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.angemietetes_Gebäude"
        dbInteger "ColumnOrder" ="8"
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
    Bottom =372
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =682
        Top =18
        Right =924
        Bottom =173
        Top =0
        Name ="Kalkulationsjahr"
        Name =""
    End
    Begin
        Left =354
        Top =16
        Right =620
        Bottom =362
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
