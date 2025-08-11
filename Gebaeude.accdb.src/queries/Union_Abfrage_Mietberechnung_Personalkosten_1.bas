Operation =1
Option =0
Begin InputTables
    Name ="M_Personalkosten"
End
Begin OutputColumns
    Expression ="M_Personalkosten.Haushaltsjahr"
    Expression ="M_Personalkosten.Betrag_400000"
    Expression ="M_Personalkosten.Anteil_Name_Verwaltung"
    Expression ="M_Personalkosten.Anteil_Name_Unterhaltung"
    Alias ="Verwaltung"
    Expression ="[Betrag_400000]*[Anteil_Name_Verwaltung]/100"
    Alias ="Unterhaltung"
    Expression ="[Betrag_400000]*[Anteil_Name_Unterhaltung]/100"
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
        dbText "Name" ="Verwaltung"
        dbInteger "ColumnWidth" ="1245"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Unterhaltung"
        dbInteger "ColumnWidth" ="1380"
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
    Bottom =247
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =344
        Bottom =234
        Top =0
        Name ="M_Personalkosten"
        Name =""
    End
End
