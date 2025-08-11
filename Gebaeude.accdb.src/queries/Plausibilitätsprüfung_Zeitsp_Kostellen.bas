Operation =1
Option =0
Begin InputTables
    Name ="M_Kostenstellen"
    Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
End
Begin OutputColumns
    Expression ="M_Kostenstellen.Kennummer"
    Expression ="M_Kostenstellen.Kostenstelle"
    Alias ="Buch_Zeitr_Start"
    Expression ="Min(tbl_100_40_Zuordn_Gebteile_Koststellen.Datum_von)"
    Alias ="Buch_Zeitr_Ende"
    Expression ="Max(tbl_100_40_Zuordn_Gebteile_Koststellen.Datum_bis)"
End
Begin Joins
    LeftTable ="M_Kostenstellen"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst"
    Flag =1
End
Begin Groups
    Expression ="M_Kostenstellen.Kennummer"
    GroupLevel =0
    Expression ="M_Kostenstellen.Kostenstelle"
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
        dbText "Name" ="Buch_Zeitr_STart"
        dbInteger "ColumnWidth" ="2511"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Buch_Zeitr_Ende"
        dbInteger "ColumnWidth" ="2511"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Kennummer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Kostenstellen.Kostenstelle"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =2904
    Bottom =1786
    Left =-1
    Top =-1
    Right =2873
    Bottom =951
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =633
        Top =463
        Right =960
        Bottom =720
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =1205
        Top =403
        Right =1663
        Bottom =682
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
End
