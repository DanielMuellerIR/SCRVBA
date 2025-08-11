Operation =1
Option =0
Begin InputTables
    Name ="Haushaltsdaten"
    Name ="Finanzquellen"
End
Begin OutputColumns
    Expression ="Haushaltsdaten.Jahr"
    Expression ="Finanzquellen.Finanzquelle"
    Alias ="Summe von Ansatz"
    Expression ="Sum(Haushaltsdaten.Ansatz)"
    Alias ="Summe von HHR"
    Expression ="Sum(Haushaltsdaten.HHR)"
    Alias ="Summe von VE"
    Expression ="Sum(Haushaltsdaten.VE)"
    Alias ="Jahr_Ist"
    Expression ="IIf([HHR]>0,[Jahr]+1,[Jahr])"
End
Begin Joins
    LeftTable ="Finanzquellen"
    RightTable ="Haushaltsdaten"
    Expression ="Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu"
    Flag =1
End
Begin Groups
    Expression ="Haushaltsdaten.Jahr"
    GroupLevel =0
    Expression ="Finanzquellen.Finanzquelle"
    GroupLevel =0
    Expression ="IIf([HHR]>0,[Jahr]+1,[Jahr])"
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
        dbText "Name" ="Summe von HHR"
        dbInteger "ColumnWidth" ="1755"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von Ansatz"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe von VE"
        dbInteger "ColumnWidth" ="1605"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Jahr_Ist"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Jahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanzquellen.Finanzquelle"
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
    Bottom =285
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =348
        Top =33
        Right =722
        Bottom =275
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="Finanzquellen"
        Name =""
    End
End
