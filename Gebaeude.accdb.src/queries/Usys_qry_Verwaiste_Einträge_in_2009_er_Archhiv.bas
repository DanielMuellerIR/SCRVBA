Operation =1
Option =0
Having ="(((tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil) Is Null))"
Begin InputTables
    Name ="tbl_200_10_10_Bewertungsbilanzen"
    Name ="Bewertung_Archiv_1_aus_2009_indiziert"
End
Begin OutputColumns
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Kennummer"
    Expression ="Bewertung_Archiv_1_aus_2009_indiziert.Straße"
    Expression ="Bewertung_Archiv_1_aus_2009_indiziert.Bezeichnung"
    Expression ="Bewertung_Archiv_1_aus_2009_indiziert.Gebäudeteil"
End
Begin Joins
    LeftTable ="tbl_200_10_10_Bewertungsbilanzen"
    RightTable ="Bewertung_Archiv_1_aus_2009_indiziert"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Kennummer = Bewertung_Archiv_1_aus_2009_indizie"
        "rt.Kennummer"
    Flag =1
End
Begin Groups
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Kennummer"
    GroupLevel =0
    Expression ="Bewertung_Archiv_1_aus_2009_indiziert.Straße"
    GroupLevel =0
    Expression ="Bewertung_Archiv_1_aus_2009_indiziert.Bezeichnung"
    GroupLevel =0
    Expression ="Bewertung_Archiv_1_aus_2009_indiziert.Gebäudeteil"
    GroupLevel =0
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil"
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
Begin
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Kennummer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1_aus_2009_indiziert.Straße"
        dbInteger "ColumnWidth" ="2595"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1_aus_2009_indiziert.Bezeichnung"
        dbInteger "ColumnWidth" ="3180"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertung_Archiv_1_aus_2009_indiziert.Gebäudeteil"
        dbInteger "ColumnWidth" ="2355"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-97
    Top =57
    Right =1233
    Bottom =1013
    Left =-1
    Top =-1
    Right =1298
    Bottom =493
    Left =0
    Top =0
    ColumnsShown =541
    Begin
        Left =164
        Top =36
        Right =754
        Bottom =403
        Top =0
        Name ="tbl_200_10_10_Bewertungsbilanzen"
        Name =""
    End
    Begin
        Left =975
        Top =45
        Right =1196
        Bottom =375
        Top =0
        Name ="Bewertung_Archiv_1_aus_2009_indiziert"
        Name =""
    End
End
