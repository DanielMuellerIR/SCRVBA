Operation =1
Option =0
Where ="(((tbl_200_30_20_Bew_Bilanz_Werterhoehungen.DS_Typ)=3))"
Begin InputTables
    Name ="tbl_200_30_20_Bew_Bilanz_Werterhoehungen"
End
Begin OutputColumns
    Expression ="tbl_200_30_20_Bew_Bilanz_Werterhoehungen.ID_Bew_Bil"
    Expression ="tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Restwert_nach_Werterh"
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
        dbText "Name" ="tbl_200_30_20_Bew_Bilanz_Werterhoehungen.ID_Bew_Bil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Restwert_nach_Werterh"
        dbInteger "ColumnWidth" ="2460"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1375
    Bottom =992
    Left =-1
    Top =-1
    Right =1351
    Bottom =498
    Left =0
    Top =0
    ColumnsShown =537
    Begin
        Left =108
        Top =36
        Right =501
        Bottom =389
        Top =0
        Name ="tbl_200_30_20_Bew_Bilanz_Werterhoehungen"
        Name =""
    End
End
