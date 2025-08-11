Operation =6
Option =0
Begin InputTables
    Name ="Entwicklung Grundbesitzabgaben"
End
Begin OutputColumns
    Expression ="[Entwicklung Grundbesitzabgaben].Kostenstelle"
    GroupLevel =2
    Expression ="[Entwicklung Grundbesitzabgaben].Bezeichnung"
    GroupLevel =2
    Expression ="[Entwicklung Grundbesitzabgaben].Haushaltsjahr"
    GroupLevel =1
    Alias ="Der Wert"
    Expression ="Sum([Entwicklung Grundbesitzabgaben].[Summe von Betrag])"
End
Begin OrderBy
    Expression ="[Entwicklung Grundbesitzabgaben].Kostenstelle"
    Flag =0
End
Begin Groups
    Expression ="[Entwicklung Grundbesitzabgaben].Kostenstelle"
    GroupLevel =2
    Expression ="[Entwicklung Grundbesitzabgaben].Bezeichnung"
    GroupLevel =2
    Expression ="[Entwicklung Grundbesitzabgaben].Haushaltsjahr"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
    Begin
        dbText "Name" ="Gesamtsumme von Summe von Betrag"
        dbInteger "ColumnWidth" ="3855"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Entwicklung Grundbesitzabgaben].Bezeichnung"
        dbInteger "ColumnWidth" ="5730"
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
    Bottom =127
    Left =0
    Top =0
    ColumnsShown =559
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =120
        Top =0
        Name ="Entwicklung Grundbesitzabgaben"
        Name =""
    End
End
