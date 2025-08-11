Operation =1
Option =0
Begin InputTables
    Name ="M_Nebenkosten_Kalkulation_für_Budget"
End
Begin OutputColumns
    Expression ="M_Nebenkosten_Kalkulation_für_Budget.ID_Gebäudeteil"
    Alias ="NK"
    Expression ="Sum(M_Nebenkosten_Kalkulation_für_Budget.Betrag_bezahlt)"
End
Begin Groups
    Expression ="M_Nebenkosten_Kalkulation_für_Budget.ID_Gebäudeteil"
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
        dbText "Name" ="NK"
        dbInteger "ColumnWidth" ="2190"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Nebenkosten_Kalkulation_für_Budget.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1238
    Bottom =841
    Left =-1
    Top =-1
    Right =1214
    Bottom =381
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =162
        Top =58
        Right =820
        Bottom =252
        Top =0
        Name ="M_Nebenkosten_Kalkulation_für_Budget"
        Name =""
    End
End
