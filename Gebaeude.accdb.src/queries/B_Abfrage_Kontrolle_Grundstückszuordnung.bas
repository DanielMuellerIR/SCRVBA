Operation =1
Option =0
Having ="(((B_Gebäudebestand_1.Kennummer)<>[B_Gebäudebestand].[Kennummer]))"
Begin InputTables
    Name ="B_bebaute_Grundstücke"
    Name ="B_Gebäudebestand"
    Name ="B_Gebäudebestand"
    Alias ="B_Gebäudebestand_1"
End
Begin OutputColumns
    Expression ="B_bebaute_Grundstücke.Kennummer"
    Expression ="B_Gebäudebestand.Kennummer"
    Expression ="B_Gebäudebestand.Straße"
    Expression ="B_Gebäudebestand.Gebäudeteil"
    Expression ="B_Gebäudebestand_1.Kennummer"
End
Begin Joins
    LeftTable ="B_bebaute_Grundstücke"
    RightTable ="B_Gebäudebestand"
    Expression ="B_bebaute_Grundstücke.Kennummer = B_Gebäudebestand.[ID aus bebaute Grundstücke]"
    Flag =1
    LeftTable ="B_bebaute_Grundstücke"
    RightTable ="B_Gebäudebestand_1"
    Expression ="B_bebaute_Grundstücke.Kennummer = B_Gebäudebestand_1.[ID aus bebaute Grundstücke"
        "]"
    Flag =1
End
Begin Groups
    Expression ="B_bebaute_Grundstücke.Kennummer"
    GroupLevel =0
    Expression ="B_Gebäudebestand.Kennummer"
    GroupLevel =0
    Expression ="B_Gebäudebestand.Straße"
    GroupLevel =0
    Expression ="B_Gebäudebestand.Gebäudeteil"
    GroupLevel =0
    Expression ="B_Gebäudebestand_1.Kennummer"
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
        dbText "Name" ="B_bebaute_Grundstücke.Kennummer"
        dbInteger "ColumnWidth" ="3690"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.Gebäudeteil"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.Kennummer"
        dbInteger "ColumnWidth" ="3240"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand.Straße"
        dbInteger "ColumnWidth" ="1470"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Gebäudebestand_1.Kennummer"
        dbInteger "ColumnWidth" ="3450"
        dbBoolean "ColumnHidden" ="0"
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
    Bottom =540
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =401
        Bottom =244
        Top =0
        Name ="B_bebaute_Grundstücke"
        Name =""
    End
    Begin
        Left =794
        Top =179
        Right =1261
        Bottom =480
        Top =0
        Name ="B_Gebäudebestand"
        Name =""
    End
    Begin
        Left =795
        Top =11
        Right =1252
        Bottom =172
        Top =0
        Name ="B_Gebäudebestand_1"
        Name =""
    End
End
