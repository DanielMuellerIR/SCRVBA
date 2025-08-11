Operation =1
Option =0
Where ="((([M_Steigerungssätze Nebenkosten].Kalkulationsjahr) Between F_Variable(\"lng_K"
    "alk_Jahr_Min\") And F_Variable(\"lng_Kalk_Jahr_Max\")))"
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
    Begin
        dbText "Name" ="[M_Steigerungssätze Nebenkosten].Steigerungssatz"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =2
    Top =34
    Right =1197
    Bottom =840
    Left =-1
    Top =-1
    Right =1163
    Bottom =234
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =364
        Bottom =167
        Top =0
        Name ="M_Steigerungssätze Nebenkosten"
        Name =""
    End
End
