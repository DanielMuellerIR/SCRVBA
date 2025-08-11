Operation =1
Option =0
Where ="(((Haushaltsdaten.[ID aus Maßnahmen])=F_Variable(\"lng_ID_Massn\")))"
Begin InputTables
    Name ="Haushaltsdaten"
    Name ="Buchungsstellen"
    Name ="Maßnahmen"
    Name ="Finanzquellen"
    Name ="Finanzherkunft"
End
Begin OutputColumns
    Expression ="Haushaltsdaten.[ID aus Maßnahmen]"
    Expression ="Haushaltsdaten.[ID aus Buchungsstelle]"
    Expression ="Buchungsstellen.Buchungsstelle"
    Expression ="Haushaltsdaten.Jahr"
    Expression ="Haushaltsdaten.Ansatz"
    Expression ="Haushaltsdaten.HHR"
    Expression ="Haushaltsdaten.VE"
    Expression ="Finanzherkunft.Finanzherkunft"
    Expression ="Finanzquellen.Finanzquelle"
    Expression ="Haushaltsdaten.Inv_Nr"
    Expression ="Haushaltsdaten.Anlagen_Nr"
    Alias ="zufVfg"
    Expression ="[Ansatz]+[HHR]"
    Alias ="zufVfgohneVE"
    Expression ="IIf([HHR]>0,[HHR],IIf([Ansatz]>0,[Ansatz],0))"
    Expression ="Haushaltsdaten.bez_Rechnung"
End
Begin Joins
    LeftTable ="Buchungsstellen"
    RightTable ="Haushaltsdaten"
    Expression ="Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]"
    Flag =3
    LeftTable ="Maßnahmen"
    RightTable ="Haushaltsdaten"
    Expression ="Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =1
    LeftTable ="Finanzquellen"
    RightTable ="Haushaltsdaten"
    Expression ="Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu"
    Flag =3
    LeftTable ="Finanzherkunft"
    RightTable ="Haushaltsdaten"
    Expression ="Finanzherkunft.ID_Fin_Her = Haushaltsdaten.ID_Fin_Her"
    Flag =3
End
Begin OrderBy
    Expression ="Haushaltsdaten.Jahr"
    Flag =1
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
        dbText "Name" ="zufVfg"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Ansatz"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.HHR"
        dbInteger "ColumnWidth" ="1755"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.VE"
        dbInteger "ColumnWidth" ="1605"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="zufVfgohneVE"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.[ID aus Maßnahmen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Anlagen_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Buchungsstellen.Buchungsstelle"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4860"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Jahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanzquellen.Finanzquelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanzherkunft.Finanzherkunft"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.[ID aus Buchungsstelle]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.bez_Rechnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Inv_Nr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1882
    Bottom =861
    Left =-1
    Top =-1
    Right =1858
    Bottom =468
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =345
        Top =37
        Right =551
        Bottom =394
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =700
        Top =28
        Right =930
        Bottom =135
        Top =0
        Name ="Buchungsstellen"
        Name =""
    End
    Begin
        Left =705
        Top =386
        Right =1007
        Bottom =517
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =700
        Top =145
        Right =937
        Bottom =255
        Top =0
        Name ="Finanzquellen"
        Name =""
    End
    Begin
        Left =703
        Top =267
        Right =949
        Bottom =373
        Top =0
        Name ="Finanzherkunft"
        Name =""
    End
End
