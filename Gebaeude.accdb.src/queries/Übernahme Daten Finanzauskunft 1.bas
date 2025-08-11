Operation =1
Option =0
Begin InputTables
    Name ="Maßnahmen"
    Name ="Haushaltsdaten"
    Name ="Buchungsstellen"
End
Begin OutputColumns
    Expression ="Maßnahmen.ID"
    Expression ="Buchungsstellen.Buchungsstelle"
    Expression ="Haushaltsdaten.Jahr"
    Expression ="Haushaltsdaten.Ansatz"
    Expression ="Haushaltsdaten.HHR"
    Expression ="Haushaltsdaten.VE"
End
Begin Joins
    LeftTable ="Buchungsstellen"
    RightTable ="Haushaltsdaten"
    Expression ="Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]"
    Flag =1
    LeftTable ="Maßnahmen"
    RightTable ="Haushaltsdaten"
    Expression ="Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =1
End
Begin OrderBy
    Expression ="Maßnahmen.ID"
    Flag =0
    Expression ="Buchungsstellen.Buchungsstelle"
    Flag =0
    Expression ="Haushaltsdaten.Jahr"
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
        dbText "Name" ="Haushaltsdaten.Jahr"
        dbInteger "ColumnWidth" ="570"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Ansatz"
        dbInteger "ColumnWidth" ="1485"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.HHR"
        dbInteger "ColumnWidth" ="1485"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.ID"
        dbInteger "ColumnWidth" ="465"
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
    Bottom =334
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =13
        Top =4
        Right =199
        Bottom =201
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =268
        Top =17
        Right =492
        Bottom =184
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =561
        Top =32
        Right =740
        Bottom =139
        Top =0
        Name ="Buchungsstellen"
        Name =""
    End
End
