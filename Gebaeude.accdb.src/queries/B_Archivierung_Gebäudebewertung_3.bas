Operation =3
Name ="Bewertung_Archiv_3"
Option =0
Begin InputTables
    Name ="Maßnahmen"
    Name ="tbl_100_20_Gebäudeteile"
End
Begin OutputColumns
    Name ="ID_Gebäudeteil"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Name ="Maßnahme"
    Expression ="Maßnahmen.Maßnahme"
    Name ="voraussichtliche Kosten gesamt"
    Expression ="Maßnahmen.[voraussichtliche Kosten gesamt]"
    Alias ="Datei"
    Name ="Datei"
    Expression ="[formulare]![Bewertungsdaten archivieren]![Archivdatum]"
    Alias ="Erläuterung"
    Name ="Erläuterung"
    Expression ="[formulare]![Bewertungsdaten archivieren]![Text]"
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Maßnahmen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Maßnahmen.Maßnahme"
        dbInteger "ColumnWidth" ="7410"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Datei"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erläuterung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.Kennummer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1187
    Bottom =841
    Left =-1
    Top =-1
    Right =1163
    Bottom =446
    Left =0
    Top =6
    ColumnsShown =651
    Begin
        Left =591
        Top =17
        Right =883
        Bottom =309
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =114
        Top =65
        Right =495
        Bottom =286
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
End
