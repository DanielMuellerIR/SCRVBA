Operation =1
Option =0
Where ="(((Maßnahmen.[erledigt im Jahr]) Is Null))"
Begin InputTables
    Name ="Maßnahmen"
    Name ="geplante Finanzierung"
    Name ="Gebäudeliste"
End
Begin OutputColumns
    Expression ="[geplante Finanzierung].Kalenderjahr"
    Expression ="Gebäudeliste.Bezeichung"
    Expression ="Maßnahmen.Maßnahme"
    Expression ="Maßnahmen.[voraussichtliche Kosten gesamt]"
    Expression ="[geplante Finanzierung].Finanzierung"
    Expression ="[geplante Finanzierung].Betrag"
End
Begin Joins
    LeftTable ="geplante Finanzierung"
    RightTable ="Maßnahmen"
    Expression ="[geplante Finanzierung].[ID aus Maßnahmen] = Maßnahmen.ID"
    Flag =2
    LeftTable ="Gebäudeliste"
    RightTable ="Maßnahmen"
    Expression ="Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste]"
    Flag =3
End
Begin OrderBy
    Expression ="[geplante Finanzierung].Kalenderjahr"
    Flag =0
    Expression ="Gebäudeliste.Bezeichung"
    Flag =0
    Expression ="Maßnahmen.Maßnahme"
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
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Gebäudeliste.Bezeichung"
        dbInteger "ColumnWidth" ="3600"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.Maßnahme"
        dbInteger "ColumnWidth" ="6105"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[geplante Finanzierung].Finanzierung"
        dbInteger "ColumnWidth" ="2115"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1393
    Bottom =984
    Left =-1
    Top =-1
    Right =1361
    Bottom =259
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =334
        Top =14
        Right =617
        Bottom =203
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =41
        Top =8
        Right =254
        Bottom =107
        Top =0
        Name ="geplante Finanzierung"
        Name =""
    End
    Begin
        Left =692
        Top =6
        Right =978
        Bottom =120
        Top =0
        Name ="Gebäudeliste"
        Name =""
    End
End
