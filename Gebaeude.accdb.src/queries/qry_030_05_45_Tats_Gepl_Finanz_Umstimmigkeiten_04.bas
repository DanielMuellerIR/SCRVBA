Operation =1
Option =0
Where ="((([Jahr]=F_Variable(\"lng_Kalk_JAhr\"))=True))"
Begin InputTables
    Name ="qry_030_05_10_Gepl_Finanz_Maßn_Summen"
    Name ="qry_030_05_05_Haush_Dat_Maßn_Summen"
End
Begin OutputColumns
    Expression ="qry_030_05_05_Haush_Dat_Maßn_Summen.ID"
    Alias ="zufVfg"
    Expression ="CCur(Nz([Betrag]))"
    Alias ="Geplant"
    Expression ="CCur(Nz([SummevonBetrag]))"
End
Begin Joins
    LeftTable ="qry_030_05_05_Haush_Dat_Maßn_Summen"
    RightTable ="qry_030_05_10_Gepl_Finanz_Maßn_Summen"
    Expression ="qry_030_05_05_Haush_Dat_Maßn_Summen.Jahr = qry_030_05_10_Gepl_Finanz_Maßn_Summen"
        ".Kalenderjahr"
    Flag =2
    LeftTable ="qry_030_05_05_Haush_Dat_Maßn_Summen"
    RightTable ="qry_030_05_10_Gepl_Finanz_Maßn_Summen"
    Expression ="qry_030_05_05_Haush_Dat_Maßn_Summen.ID = qry_030_05_10_Gepl_Finanz_Maßn_Summen.I"
        "D"
    Flag =2
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
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="zufVfg"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="3750"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Geplant "
        dbInteger "ColumnWidth" ="3960"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_030_05_05_Haush_Dat_Maßn_Summen.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Geplant"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-13
    Top =-58
    Right =2869
    Bottom =1749
    Left =-1
    Top =-1
    Right =2823
    Bottom =766
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =1187
        Top =89
        Right =1875
        Bottom =429
        Top =0
        Name ="qry_030_05_10_Gepl_Finanz_Maßn_Summen"
        Name =""
    End
    Begin
        Left =30
        Top =88
        Right =722
        Bottom =327
        Top =0
        Name ="qry_030_05_05_Haush_Dat_Maßn_Summen"
        Name =""
    End
End
