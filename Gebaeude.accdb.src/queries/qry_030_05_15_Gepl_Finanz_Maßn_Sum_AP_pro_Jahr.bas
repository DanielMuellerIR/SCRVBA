Operation =1
Option =0
Having ="(((qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Kalenderjahr)=F_Variable(\"lng_Kalk_Jah"
    "r\")))"
Begin InputTables
    Name ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP"
End
Begin OutputColumns
    Expression ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Sort"
    Expression ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Kalenderjahr"
    Alias ="Summ_komplett"
    Expression ="Sum(qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Voraus_Kosten)"
    Alias ="Summ_Bauunt"
    Expression ="Sum(IIf([Finanzherkunft]=\"Bauunterhaltung\" And [Sammelbuchungsstelle]=False,[V"
        "oraus_Kosten],0))"
    Alias ="Summ_tats"
    Expression ="Sum([Voraus_Kosten]-IIf([Finanzherkunft]=\"Bauunterhaltung\" And [Sammelbuchungs"
        "stelle]=False,[Voraus_Kosten],0))"
End
Begin Groups
    Expression ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Sort"
    GroupLevel =0
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
dbBoolean "TotalsRow" ="-1"
Begin
    Begin
        dbText "Name" ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Kalenderjahr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1620"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.Sort"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="6045"
        dbBoolean "ColumnHidden" ="0"
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
        dbText "Name" ="Summ_tats"
        dbInteger "ColumnWidth" ="2130"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="Summ_Bauunt"
        dbInteger "ColumnWidth" ="1770"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1487
    Bottom =861
    Left =-1
    Top =-1
    Right =1463
    Bottom =314
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =121
        Top =10
        Right =525
        Bottom =265
        Top =0
        Name ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP"
        Name =""
    End
End
