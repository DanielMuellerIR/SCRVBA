Operation =1
Option =0
Where ="((([KAlenderJahr]=F_Variable(\"lng_Kalk_JAhr\"))=True))"
Begin InputTables
    Name ="Maßnahmen"
    Name ="qry_030_05_10_Gepl_Finanz_Maßn_Summen"
    Name ="qry_030_05_05_Haush_Dat_Maßn_Summen"
End
Begin OutputColumns
    Expression ="Maßnahmen.ID"
    Alias ="zufVfg"
    Expression ="CCur(Nz([Betrag]))"
    Expression ="qry_030_05_10_Gepl_Finanz_Maßn_Summen.SummevonBetrag"
End
Begin Joins
    LeftTable ="Maßnahmen"
    RightTable ="qry_030_05_10_Gepl_Finanz_Maßn_Summen"
    Expression ="Maßnahmen.ID = qry_030_05_10_Gepl_Finanz_Maßn_Summen.ID"
    Flag =2
    LeftTable ="Maßnahmen"
    RightTable ="qry_030_05_05_Haush_Dat_Maßn_Summen"
    Expression ="Maßnahmen.ID = qry_030_05_05_Haush_Dat_Maßn_Summen.ID"
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
        dbText "Name" ="Maßnahmen.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="zufVfg"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="1965"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qry_030_05_10_Gepl_Finanz_Maßn_Summen.SummevonBetrag"
        dbInteger "ColumnWidth" ="2190"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =3347
    Bottom =868
    Left =-1
    Top =-1
    Right =3312
    Bottom =636
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =81
        Top =68
        Right =341
        Bottom =563
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =489
        Top =74
        Right =1177
        Bottom =273
        Top =0
        Name ="qry_030_05_10_Gepl_Finanz_Maßn_Summen"
        Name =""
    End
    Begin
        Left =488
        Top =340
        Right =1180
        Bottom =542
        Top =0
        Name ="qry_030_05_05_Haush_Dat_Maßn_Summen"
        Name =""
    End
End
