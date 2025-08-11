Operation =1
Option =0
Begin InputTables
    Name ="M_Sollstellung_1"
End
Begin OutputColumns
    Expression ="M_Sollstellung_1.Planjahr"
    Expression ="M_Sollstellung_1.Betrieb"
    Expression ="M_Sollstellung_1.BereichNr"
    Expression ="M_Sollstellung_1.BereichName"
    Expression ="M_Sollstellung_1.Bezeichnung"
    Alias ="Betrag"
    Expression ="Int([Summe von Betrag])"
    Expression ="M_Sollstellung_1.sort"
    Expression ="M_Sollstellung_1.Bruttogrundfläche"
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
        dbText "Name" ="M_Sollstellung_1.Betrieb"
        dbInteger "ColumnWidth" ="930"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Sollstellung_1.BereichNr"
        dbInteger "ColumnWidth" ="585"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Sollstellung_1.BereichName"
        dbInteger "ColumnWidth" ="885"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Sollstellung_1.Bezeichnung"
        dbInteger "ColumnWidth" ="3480"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Sollstellung_1.Bruttogrundfläche"
        dbInteger "ColumnWidth" ="1860"
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
    Bottom =228
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =615
        Bottom =188
        Top =0
        Name ="M_Sollstellung_1"
        Name =""
    End
End
