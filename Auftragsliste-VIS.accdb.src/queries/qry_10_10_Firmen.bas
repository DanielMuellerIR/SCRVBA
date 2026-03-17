Operation =1
Option =0
Where ="(((tbl_10_40_Firmen.Name) Like ('*' & [Formulare]![frm_30_10_Firmen]![TF_Filter_"
    "Firma] & '*')) AND ((tbl_10_40_Firmen.Straße) Like ('*' & [Formulare]![frm_30_10"
    "_Firmen]![TF_Filter_Strasse] & '*')))"
Begin InputTables
    Name ="tbl_10_40_Firmen"
End
Begin OutputColumns
    Expression ="tbl_10_40_Firmen.ID_Fa"
    Expression ="tbl_10_40_Firmen.Name"
    Expression ="tbl_10_40_Firmen.Ort"
    Expression ="tbl_10_40_Firmen.Straße"
End
Begin OrderBy
    Expression ="tbl_10_40_Firmen.Name"
    Flag =0
    Expression ="tbl_10_40_Firmen.Ort"
    Flag =0
    Expression ="tbl_10_40_Firmen.Straße"
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
dbSingle "ECLScaleFactor" ="1"
Begin
    Begin
        dbText "Name" ="tbl_10_40_Firmen.ID_Fa"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_10_40_Firmen.Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_10_40_Firmen.Straße"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_10_40_Firmen.Ort"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1882
    Bottom =861
    Left =-1
    Top =-1
    Right =1858
    Bottom =459
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =127
        Top =132
        Right =440
        Bottom =379
        Top =0
        Name ="tbl_10_40_Firmen"
        Name =""
    End
End
