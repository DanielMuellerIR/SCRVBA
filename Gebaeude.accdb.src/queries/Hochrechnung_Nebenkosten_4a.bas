Operation =1
Option =0
Where ="((([M_Steigerungssätze Nebenkosten].Kalkulationsjahr)=F_Variable(\"lng_Kalk_Jahr"
    "\") Or ([M_Steigerungssätze Nebenkosten].Kalkulationsjahr) Is Null))"
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
    Begin
        dbText "Name" ="[M_Steigerungssätze Nebenkosten].Nebenkostenart"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1650
    Bottom =942
    Left =-1
    Top =-1
    Right =1626
    Bottom =490
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =524
        Bottom =219
        Top =0
        Name ="M_Steigerungssätze Nebenkosten"
        Name =""
    End
End
