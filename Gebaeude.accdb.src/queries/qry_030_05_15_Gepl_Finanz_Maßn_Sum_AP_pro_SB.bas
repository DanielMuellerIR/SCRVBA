Operation =1
Option =0
Having ="(((qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Kalenderjahr)=F_Variable(\"lng_Kalk_Jah"
    "r\")))"
Begin InputTables
    Name ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP"
End
Begin OutputColumns
    Expression ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Kalenderjahr"
    Alias ="Alle"
    Expression ="Sum((IIf([Sammelbuchungsstelle]=True And [Finanzherkunft]=\"Bauunterhaltung\",[V"
        "oraus_Kosten],0))-IIf([Sammelbuchungsstelle]=False And [Finanzherkunft]=\"Bauunt"
        "erhaltung\",[Voraus_Kosten],0))"
End
Begin Groups
    Expression ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Kalenderjahr"
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
Begin
    Begin
        dbText "Name" ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Kalenderjahr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1620"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Alle"
        dbInteger "ColumnWidth" ="1965"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summ_tats"
        dbInteger "ColumnWidth" ="2130"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Sort"
        dbInteger "ColumnWidth" ="6045"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summ_komplett"
        dbInteger "ColumnWidth" ="1965"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="Summ_tats "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Summ_Bauunt"
        dbInteger "ColumnWidth" ="1770"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Sammelbuchungsstelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Finanzherkunft"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1000"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1381
    Bottom =861
    Left =-1
    Top =-1
    Right =1357
    Bottom =468
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =192
        Top =21
        Right =596
        Bottom =269
        Top =0
        Name ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP"
        Name =""
    End
End
