Operation =1
Option =0
Where ="(((B_Gebäudebestand.[ID aus bebaute Grundstücke]) Is Not Null) And ((B_Gebäudebe"
    "stand_1.Kennummer)<>B_Gebäudebestand.Kennummer))"
Begin InputTables
    Name ="B_Gebäudebestand"
    Name ="B_Gebäudebestand"
    Alias ="B_Gebäudebestand_1"
End
Begin OutputColumns
    Expression ="B_Gebäudebestand.Gebäudeteil"
    Expression ="B_Gebäudebestand.[ID aus bebaute Grundstücke]"
    Expression ="B_Gebäudebestand.Bezeichnung"
    Expression ="B_Gebäudebestand_1.Gebäudeteil"
    Expression ="B_Gebäudebestand_1.Kennummer"
End
Begin Joins
    LeftTable ="B_Gebäudebestand"
    RightTable ="B_Gebäudebestand_1"
    Expression ="B_Gebäudebestand.Bezeichnung=B_Gebäudebestand_1.Bezeichnung"
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
        dbText "Name" ="B_Gebäudebestand.Gebäudeteil"
        dbInteger "ColumnWidth" ="3240"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand_1.Kennummer"
        dbInteger "ColumnWidth" ="3450"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand_1.Gebäudeteil"
        dbInteger "ColumnWidth" ="3450"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.[ID aus bebaute Grundstücke]"
        dbInteger "ColumnWidth" ="2820"
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
    Bottom =363
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =363
        Bottom =358
        Top =0
        Name ="B_Gebäudebestand"
        Name =""
    End
    Begin
        Left =460
        Top =27
        Right =773
        Bottom =232
        Top =0
        Name ="B_Gebäudebestand_1"
        Name =""
    End
End
