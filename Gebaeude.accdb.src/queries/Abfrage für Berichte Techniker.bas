Operation =1
Option =0
Where ="(((Haushaltsdaten.[ID aus Maßnahmen]) Is Not Null))"
Begin InputTables
    Name ="Sachbearbeiter"
    Name ="Gebäudeliste"
    Name ="Maßnahmen"
    Name ="Haushaltsdaten"
End
Begin OutputColumns
    Expression ="Maßnahmen.ID"
    Expression ="Gebäudeliste.ID"
    Expression ="Sachbearbeiter.Name"
    Alias ="Gebäude"
    Expression ="[Bezeichung] & \",  \" & [Straße Hausnummer]"
    Expression ="Maßnahmen.Maßnahme"
    Expression ="Maßnahmen.[voraussichtliche Kosten gesamt]"
    Expression ="Haushaltsdaten.[ID aus Maßnahmen]"
End
Begin Joins
    LeftTable ="Sachbearbeiter"
    RightTable ="Gebäudeliste"
    Expression ="Sachbearbeiter.ID = Gebäudeliste.[ID aus Sachbearbeiter]"
    Flag =3
    LeftTable ="Maßnahmen"
    RightTable ="Haushaltsdaten"
    Expression ="Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =2
    LeftTable ="Gebäudeliste"
    RightTable ="Maßnahmen"
    Expression ="Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste]"
    Flag =3
End
Begin OrderBy
    Expression ="Sachbearbeiter.Name"
    Flag =0
    Expression ="[Bezeichung] & \",  \" & [Straße Hausnummer]"
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
        dbText "Name" ="Gebäude"
        dbInteger "ColumnWidth" ="5595"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.ID"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gebäudeliste.ID"
        dbInteger "ColumnWidth" ="1665"
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
    Bottom =339
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =280
        Top =229
        Right =376
        Bottom =336
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
    Begin
        Left =38
        Top =6
        Right =206
        Bottom =113
        Top =0
        Name ="Gebäudeliste"
        Name =""
    End
    Begin
        Left =281
        Top =11
        Right =491
        Bottom =208
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =771
        Top =113
        Right =989
        Bottom =280
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
End
