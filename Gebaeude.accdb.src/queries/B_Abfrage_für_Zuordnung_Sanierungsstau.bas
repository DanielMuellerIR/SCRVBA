Operation =1
Option =0
Where ="(((Maßnahmen.[erledigt im Jahr]) Is Null))"
Begin InputTables
    Name ="Maßnahmen"
    Name ="Gebäudeliste"
    Name ="B_Sanierungsbedarf_für_Bewertung"
End
Begin OutputColumns
    Expression ="Gebäudeliste.[Straße Hausnummer]"
    Expression ="Gebäudeliste.Bezeichung"
    Expression ="Maßnahmen.Maßnahme"
    Expression ="Maßnahmen.[voraussichtliche Kosten gesamt]"
    Alias ="Kennummer aus Maßnahmen"
    Expression ="Maßnahmen.ID"
    Expression ="B_Sanierungsbedarf_für_Bewertung.[Kennnummer aus B_Gebäudeliste]"
End
Begin Joins
    LeftTable ="B_Sanierungsbedarf_für_Bewertung"
    RightTable ="Maßnahmen"
    Expression ="B_Sanierungsbedarf_für_Bewertung.[Kennnummer aus Maßnahmen] = Maßnahmen.ID"
    Flag =3
    LeftTable ="Gebäudeliste"
    RightTable ="Maßnahmen"
    Expression ="Gebäudeliste.ID = Maßnahmen.[ID aus Gebäudeliste]"
    Flag =3
End
Begin OrderBy
    Expression ="Gebäudeliste.[Straße Hausnummer]"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbMemo "OrderBy" ="B_Abfrage_für_Zuordnung_Sanierungsstau.[Kennnummer aus B_Gebäudeliste]"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Gebäudeliste.[Straße Hausnummer]"
        dbInteger "ColumnWidth" ="2100"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gebäudeliste.Bezeichung"
        dbInteger "ColumnWidth" ="2970"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.Maßnahme"
        dbInteger "ColumnWidth" ="5400"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Kennummer aus Maßnahmen"
        dbInteger "ColumnWidth" ="2955"
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
    Bottom =315
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =388
        Top =57
        Right =654
        Bottom =291
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =40
        Top =66
        Right =332
        Bottom =180
        Top =0
        Name ="Gebäudeliste"
        Name =""
    End
    Begin
        Left =735
        Top =6
        Right =986
        Bottom =90
        Top =0
        Name ="B_Sanierungsbedarf_für_Bewertung"
        Name =""
    End
End
