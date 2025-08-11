Operation =1
Option =0
Where ="(((Haushaltsdaten.Jahr)=F_Variable('lng_Kalk_Jahr')))"
Begin InputTables
    Name ="Finanzherkunft"
    Name ="Finanzquellen"
    Name ="Maßnahmen"
    Name ="Buchungsstellen"
    Name ="Haushaltsdaten"
End
Begin OutputColumns
    Expression ="Buchungsstellen.Buchungsstelle"
    Expression ="Haushaltsdaten.Inv_Nr"
    Expression ="Haushaltsdaten.Anlagen_Nr"
    Expression ="Haushaltsdaten.Kostentraeger"
    Expression ="Finanzquellen.Finanzquelle"
    Expression ="Finanzherkunft.Finanzherkunft"
    Alias ="zufVfg"
    Expression ="IIf([Jahr]=Year(Now())-1 And [HHR]>0,[HHR],IIf([Jahr]=Year(Now()) And [Ansatz]>0"
        ",[Ansatz],IIf([Jahr]=Year(Now()) And [VE]>0,[VE],0)))"
    Expression ="Maßnahmen.ID"
End
Begin Joins
    LeftTable ="Buchungsstellen"
    RightTable ="Haushaltsdaten"
    Expression ="Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]"
    Flag =3
    LeftTable ="Maßnahmen"
    RightTable ="Haushaltsdaten"
    Expression ="Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =2
    LeftTable ="Finanzquellen"
    RightTable ="Haushaltsdaten"
    Expression ="Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu"
    Flag =3
    LeftTable ="Finanzherkunft"
    RightTable ="Haushaltsdaten"
    Expression ="Finanzherkunft.ID_Fin_Her = Haushaltsdaten.ID_Fin_Her"
    Flag =3
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
        dbText "Name" ="Buchungsstellen.Buchungsstelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="zufVfg"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Inv_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Anlagen_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Kostentraeger"
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
        dbText "Name" ="Maßnahmen.ID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-13
    Top =-58
    Right =3767
    Bottom =1723
    Left =-1
    Top =-1
    Right =3721
    Bottom =983
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =1286
        Top =603
        Right =1574
        Bottom =891
        Top =0
        Name ="Finanzherkunft"
        Name =""
    End
    Begin
        Left =1285
        Top =288
        Right =1573
        Bottom =576
        Top =0
        Name ="Finanzquellen"
        Name =""
    End
    Begin
        Left =136
        Top =320
        Right =424
        Bottom =608
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =1289
        Top =37
        Right =1583
        Bottom =272
        Top =0
        Name ="Buchungsstellen"
        Name =""
    End
    Begin
        Left =673
        Top =144
        Right =1046
        Bottom =503
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
End
