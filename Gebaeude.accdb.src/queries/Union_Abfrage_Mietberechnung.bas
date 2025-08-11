Operation =1
Option =0
Where ="(((tbl_100_20_Gebäudeteile.ID_Gebäudeteil) Is Not Null))"
Begin InputTables
    Name ="Union_Abfrage_Mietberechnung_1"
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Expression ="Union_Abfrage_Mietberechnung_1.Planjahr"
    Expression ="Union_Abfrage_Mietberechnung_1.Betrieb"
    Expression ="Union_Abfrage_Mietberechnung_1.BereichNr"
    Expression ="Union_Abfrage_Mietberechnung_1.BereichName"
    Expression ="Union_Abfrage_Mietberechnung_1.Objekt"
    Expression ="Union_Abfrage_Mietberechnung_1.ID_Gebäudeteil"
    Expression ="Union_Abfrage_Mietberechnung_1.Kostenart"
    Expression ="Union_Abfrage_Mietberechnung_1.Betrag"
    Expression ="Union_Abfrage_Mietberechnung_1.sort"
    Alias ="Bruttogrundfläche"
    Expression ="tbl_100_20_Gebäudeteile.BGF"
End
Begin Joins
    LeftTable ="Union_Abfrage_Mietberechnung_1"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="Union_Abfrage_Mietberechnung_1.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäu"
        "deteil"
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
        dbText "Name" ="Union_Abfrage_Mietberechnung_1.Planjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_1.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_1.Kostenart"
        dbInteger "ColumnWidth" ="4110"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_1.sort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_1.BereichName"
        dbInteger "ColumnWidth" ="3435"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_1.Betrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_1.Objekt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_1.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_1.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bruttogrundfläche "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bruttogrundfläche"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1650
    Bottom =854
    Left =-1
    Top =-1
    Right =1626
    Bottom =380
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =111
        Top =33
        Right =380
        Bottom =215
        Top =0
        Name ="Union_Abfrage_Mietberechnung_1"
        Name =""
    End
    Begin
        Left =529
        Top =94
        Right =830
        Bottom =320
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
