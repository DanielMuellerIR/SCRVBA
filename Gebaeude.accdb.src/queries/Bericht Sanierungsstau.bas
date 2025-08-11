Operation =1
Option =0
Where ="(((Haushaltsdaten.[ID aus Maßnahmen]) Is Null) AND ((Maßnahmen.[erledigt im Jahr"
    "]) Is Null))"
Begin InputTables
    Name ="Sachbearbeiter"
    Name ="Gebäudeliste"
    Name ="Haushaltsdaten"
    Name ="Maßnahmen"
End
Begin OutputColumns
    Expression ="Maßnahmen.ID"
    Alias ="Gebäude"
    Expression ="[Bezeichung] & \",  \" & [Straße Hausnummer]"
    Expression ="Sachbearbeiter.Name"
    Expression ="Maßnahmen.Maßnahme"
    Expression ="Maßnahmen.[voraussichtliche Kosten gesamt]"
    Alias ="Summe_finanzier"
    Expression ="[Ansatz]+[HHR]+[VE]"
    Expression ="Haushaltsdaten.[ID aus Maßnahmen]"
    Expression ="Maßnahmen.[erledigt im Jahr]"
End
Begin Joins
    LeftTable ="Haushaltsdaten"
    RightTable ="Maßnahmen"
    Expression ="Haushaltsdaten.[ID aus Maßnahmen] = Maßnahmen.ID"
    Flag =3
    LeftTable ="Sachbearbeiter"
    RightTable ="Gebäudeliste"
    Expression ="Sachbearbeiter.ID = Gebäudeliste.[ID aus Sachbearbeiter]"
    Flag =3
    LeftTable ="Gebäudeliste"
    RightTable ="Maßnahmen"
    Expression ="Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste]"
    Flag =3
End
Begin OrderBy
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
        dbInteger "ColumnWidth" ="5865"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.ID"
        dbInteger "ColumnWidth" ="465"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summe_finanzier"
        dbInteger "ColumnWidth" ="2280"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.[ID aus Maßnahmen]"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.[voraussichtliche Kosten gesamt]"
        dbInteger "ColumnWidth" ="3135"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.Maßnahme"
        dbInteger "ColumnWidth" ="8160"
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
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="Gebäudeliste"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =440
        Top =6
        Right =795
        Bottom =308
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
End
