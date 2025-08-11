Operation =6
Option =0
Begin InputTables
    Name ="Bericht Sanierungsstau nach Finanzplanung"
End
Begin OutputColumns
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Gebäude"
    GroupLevel =2
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Kalenderjahr"
    GroupLevel =1
    Alias ="Summe von Betrag"
    Expression ="Sum([Bericht Sanierungsstau nach Finanzplanung].Betrag)"
    Alias ="Gesamtsumme von Betrag"
    Expression ="Sum([Bericht Sanierungsstau nach Finanzplanung].Betrag)"
    GroupLevel =2
End
Begin Groups
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Gebäude"
    GroupLevel =2
    Expression ="[Bericht Sanierungsstau nach Finanzplanung].Kalenderjahr"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Gesamtsumme von Betrag"
        dbInteger "ColumnWidth" ="2655"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Bericht Sanierungsstau nach Finanzplanung].Gebäude"
        dbInteger "ColumnWidth" ="3945"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="noch nicht zugeordnet"
        dbInteger "ColumnWidth" ="2280"
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
        Right =529
        Bottom =122
        Top =0
        Name ="Bericht Sanierungsstau nach Finanzplanung"
        Name =""
    End
End
