Operation =1
Option =0
Begin InputTables
    Name ="M_Kostenstellen"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
End
Begin OutputColumns
    Expression ="M_Kostenstellen.Kennummer"
End
Begin Joins
    LeftTable ="M_Kostenstellen"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="M_Kostenstellen.Kennummer = tbl_100_40_Zuordn_Gebteile_Koststellen.Kenn_Kostst"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="tbl_100_40_Zuordn_Gebteile_Koststellen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_100_40_Zuordn_Gebteile_Koststellen."
        "ID_Gebäudeteil"
    Flag =3
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
        dbText "Name" ="M_Kostenstellen.Kennummer"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-13
    Top =-58
    Right =3151
    Bottom =1749
    Left =-1
    Top =-1
    Right =3105
    Bottom =543
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =1975
        Top =105
        Right =2347
        Bottom =389
        Top =0
        Name ="M_Kostenstellen"
        Name =""
    End
    Begin
        Left =104
        Top =72
        Right =1043
        Bottom =496
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =1194
        Top =38
        Right =1504
        Bottom =385
        Top =0
        Name ="tbl_100_40_Zuordn_Gebteile_Koststellen"
        Name =""
    End
End
