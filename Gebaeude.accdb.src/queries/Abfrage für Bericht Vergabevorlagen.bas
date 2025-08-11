Operation =1
Option =0
Begin InputTables
    Name ="Aufträge"
    Name ="Maßnahmen"
    Name ="Gebäudeliste"
End
Begin OutputColumns
    Alias ="Gebäude"
    Expression ="[Bezeichung] & \", \" & [Straße Hausnummer]"
    Expression ="Maßnahmen.Maßnahme"
    Alias ="Vergabevorlage vom"
    Expression ="Aufträge.Jahr"
    Expression ="Aufträge.Firma"
    Expression ="Aufträge.[Wert Auftrag]"
    Expression ="Aufträge.Auftragsinhalt"
    Expression ="Aufträge.Nachtragsauftrag"
    Expression ="Aufträge.Begründung"
End
Begin Joins
    LeftTable ="Aufträge"
    RightTable ="Maßnahmen"
    Expression ="Aufträge.[ID aus Maßnahmen] = Maßnahmen.ID"
    Flag =2
    LeftTable ="Gebäudeliste"
    RightTable ="Maßnahmen"
    Expression ="Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste]"
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
        dbText "Name" ="Maßnahmen.Maßnahme"
        dbInteger "ColumnWidth" ="6315"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aufträge.Auftragsinhalt"
        dbInteger "ColumnWidth" ="3495"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Vergabevorlage vom"
        dbInteger "ColumnWidth" ="2145"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gebäude"
        dbInteger "ColumnWidth" ="4395"
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
    Bottom =258
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =158
        Top =0
        Name ="Aufträge"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =438
        Bottom =233
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =479
        Top =42
        Right =725
        Bottom =164
        Top =0
        Name ="Gebäudeliste"
        Name =""
    End
End
