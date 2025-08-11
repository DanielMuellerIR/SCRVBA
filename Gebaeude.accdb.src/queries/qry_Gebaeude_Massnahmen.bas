Operation =1
Option =0
Begin InputTables
    Name ="Gebäudeliste"
    Name ="Maßnahmen"
End
Begin OutputColumns
    Expression ="Gebäudeliste.ID"
    Expression ="Maßnahmen.ID"
End
Begin Joins
    LeftTable ="Gebäudeliste"
    RightTable ="Maßnahmen"
    Expression ="Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste]"
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
        dbText "Name" ="Gebäudeliste.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.ID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1505
    Bottom =992
    Left =-1
    Top =-1
    Right =1481
    Bottom =612
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =258
        Top =62
        Right =402
        Bottom =206
        Top =0
        Name ="Gebäudeliste"
        Name =""
    End
    Begin
        Left =579
        Top =61
        Right =810
        Bottom =247
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
End
