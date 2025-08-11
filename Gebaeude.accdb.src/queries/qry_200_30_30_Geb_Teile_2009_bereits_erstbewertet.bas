Operation =1
Option =0
Where ="(((tbl_200_05_10_Bewertungsläufe.Urspr_2009)=True))"
Begin InputTables
    Name ="tbl_200_05_10_Bewertungsläufe"
    Name ="tbl_200_10_10_Bewertungsbilanzen"
End
Begin OutputColumns
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil"
End
Begin Joins
    LeftTable ="tbl_200_05_10_Bewertungsläufe"
    RightTable ="tbl_200_10_10_Bewertungsbilanzen"
    Expression ="tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Be"
        "wert"
    Flag =1
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
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =16
    Top =29
    Right =1465
    Bottom =973
    Left =-1
    Top =-1
    Right =1417
    Bottom =498
    Left =0
    Top =0
    ColumnsShown =537
    Begin
        Left =452
        Top =38
        Right =759
        Bottom =208
        Top =0
        Name ="tbl_200_05_10_Bewertungsläufe"
        Name =""
    End
    Begin
        Left =55
        Top =22
        Right =390
        Bottom =238
        Top =0
        Name ="tbl_200_10_10_Bewertungsbilanzen"
        Name =""
    End
End
