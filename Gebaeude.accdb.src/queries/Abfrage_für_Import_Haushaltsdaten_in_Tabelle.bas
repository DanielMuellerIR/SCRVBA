Operation =1
Option =0
Having ="(((Import_Haushaltsdaten.Haushaltsjahr)=Year(Now())))"
Begin InputTables
    Name ="Haushaltsdaten"
    Name ="Buchungsstellen"
    Name ="Import_Haushaltsdaten"
End
Begin OutputColumns
    Expression ="Haushaltsdaten.[ID aus Maßnahmen]"
    Expression ="Buchungsstellen.Buchungsstelle"
    Alias ="Mittel"
    Expression ="Sum([Haushaltsdaten]![Ansatz]+[HHR])"
    Expression ="Import_Haushaltsdaten.Haushaltsjahr"
    Expression ="Import_Haushaltsdaten.[Gesamt_HH-Mittel]"
    Expression ="Import_Haushaltsdaten.Aufträge"
    Alias ="sollgesamt"
    Expression ="[Sollbuchung]+[sollerfassung]"
End
Begin Joins
    LeftTable ="Haushaltsdaten"
    RightTable ="Buchungsstellen"
    Expression ="Haushaltsdaten.[ID aus Buchungsstelle]=Buchungsstellen.ID"
    Flag =2
    LeftTable ="Buchungsstellen"
    RightTable ="Import_Haushaltsdaten"
    Expression ="Buchungsstellen.Buchungsstelle=Import_Haushaltsdaten.Buchungsstelle"
    Flag =2
End
Begin OrderBy
    Expression ="Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =0
End
Begin Groups
    Expression ="Haushaltsdaten.[ID aus Maßnahmen]"
    GroupLevel =0
    Expression ="Buchungsstellen.Buchungsstelle"
    GroupLevel =0
    Expression ="Import_Haushaltsdaten.Haushaltsjahr"
    GroupLevel =0
    Expression ="Import_Haushaltsdaten.[Gesamt_HH-Mittel]"
    GroupLevel =0
    Expression ="Import_Haushaltsdaten.Aufträge"
    GroupLevel =0
    Expression ="[Sollbuchung]+[sollerfassung]"
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
        dbText "Name" ="Mittel"
        dbInteger "ColumnWidth" ="1155"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Import_Haushaltsdaten.[Gesamt_HH-Mittel]"
        dbInteger "ColumnWidth" ="1830"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sollgesamt"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
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
    Bottom =441
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =358
        Top =82
        Right =564
        Bottom =181
        Top =0
        Name ="Buchungsstellen"
        Name =""
    End
    Begin
        Left =34
        Top =66
        Right =248
        Bottom =225
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =636
        Top =80
        Right =922
        Bottom =284
        Top =0
        Name ="Import_Haushaltsdaten"
        Name =""
    End
End
