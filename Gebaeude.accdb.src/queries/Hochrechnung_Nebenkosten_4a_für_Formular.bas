Operation =1
Option =0
Where ="((([M_Steigerungssätze Nebenkosten].Kalkulationsjahr) Like Int([Formulare]![M_Fo"
    "rmular_Gebäudedaten]![Kalkulationsjahr]) Or ([M_Steigerungssätze Nebenkosten].Ka"
    "lkulationsjahr) Is Null))"
Begin InputTables
    Name ="M_Steigerungssätze Nebenkosten"
End
Begin OutputColumns
    Expression ="[M_Steigerungssätze Nebenkosten].Kalkulationsjahr"
    Expression ="[M_Steigerungssätze Nebenkosten].Nebenkostenart"
    Expression ="[M_Steigerungssätze Nebenkosten].Steigerungssatz"
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
        dbText "Name" ="[M_Steigerungssätze Nebenkosten].Kalkulationsjahr"
        dbInteger "ColumnWidth" ="1695"
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
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =313
        Bottom =98
        Top =0
        Name ="M_Steigerungssätze Nebenkosten"
        Name =""
    End
End
