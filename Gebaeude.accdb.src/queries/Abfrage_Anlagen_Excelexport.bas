Operation =1
Option =0
Begin InputTables
    Name ="Abfrage_Anlagen"
End
Begin OutputColumns
    Expression ="Abfrage_Anlagen.Maßnahme"
    Alias ="ID_Massnahme"
    Expression ="Abfrage_Anlagen.ID_Massn"
    Expression ="Abfrage_Anlagen.AnlagenNr"
    Expression ="Abfrage_Anlagen.Anlage"
    Alias ="Objekt"
    Expression ="[Name] & \" \" & [Haus_Nr] & \": \" & [Liegenschaft]"
    Expression ="Abfrage_Anlagen.Gebäudeteil"
    Expression ="Abfrage_Anlagen.BeendetB20"
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
        dbText "Name" ="Abfrage_Anlagen.BeendetB20"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abfrage_Anlagen.Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abfrage_Anlagen.Anlage"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abfrage_Anlagen.AnlagenNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abfrage_Anlagen.Maßnahme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="7590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Massnahme"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =70
    Right =5261
    Bottom =2668
    Left =-1
    Top =-1
    Right =5218
    Bottom =1992
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =96
        Top =24
        Right =970
        Bottom =902
        Top =0
        Name ="Abfrage_Anlagen"
        Name =""
    End
End
