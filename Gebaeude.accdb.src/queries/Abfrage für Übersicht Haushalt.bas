Operation =1
Option =0
Begin InputTables
    Name ="Haushaltsdaten"
    Name ="Buchungsstellen"
    Name ="Maßnahmen"
    Name ="Finanzquellen"
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="M_Strassenverzeichnis"
End
Begin OutputColumns
    Expression ="Haushaltsdaten.Jahr"
    Expression ="Buchungsstellen.Buchungsstelle"
    Expression ="Buchungsstellen.[Text Buchungsstelle]"
    Expression ="Haushaltsdaten.Ansatz"
    Expression ="Haushaltsdaten.HHR"
    Expression ="Haushaltsdaten.VE"
    Alias ="ID_Massn"
    Expression ="Maßnahmen.ID"
    Alias ="Maßnahm"
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Lieg"
        "enschaften.Bezeichnung] & \", \" & [Gebäudeteil] & \" -> \" & [Maßnahme]"
    Alias ="vfg"
    Expression ="IIf([Jahr]=Year(Now())-1 And [HHR]>0,[HHR],IIf([Jahr]=Year(Now()) And [Ansatz]>0"
        ",[Ansatz],IIf([Jahr]=Year(Now()) And [VE]>0,[VE],0)))"
    Expression ="Finanzquellen.Finanzquelle"
    Alias ="sort"
    Expression ="IIf([VE]>1,1,IIf([Ansatz]>1,2,3))"
End
Begin Joins
    LeftTable ="Buchungsstellen"
    RightTable ="Haushaltsdaten"
    Expression ="Buchungsstellen.ID = Haushaltsdaten.[ID aus Buchungsstelle]"
    Flag =3
    LeftTable ="Maßnahmen"
    RightTable ="Haushaltsdaten"
    Expression ="Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =3
    LeftTable ="Maßnahmen"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="Maßnahmen.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="Finanzquellen"
    RightTable ="Haushaltsdaten"
    Expression ="Finanzquellen.ID_Fin_Qu = Haushaltsdaten.ID_Fin_Qu"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =3
End
Begin OrderBy
    Expression ="Haushaltsdaten.Jahr"
    Flag =0
    Expression ="Buchungsstellen.Buchungsstelle"
    Flag =0
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [tbl_100_10_Lieg"
        "enschaften.Bezeichnung] & \", \" & [Gebäudeteil] & \" -> \" & [Maßnahme]"
    Flag =0
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
        dbText "Name" ="Buchungsstellen.[Text Buchungsstelle]"
        dbInteger "ColumnWidth" ="3960"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.VE"
        dbInteger "ColumnWidth" ="1335"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="vfg"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.HHR"
        dbInteger "ColumnWidth" ="1485"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Buchungsstellen.Buchungsstelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Jahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Haushaltsdaten.Ansatz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Finanzquellen.Finanzquelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahm"
        dbInteger "ColumnWidth" ="9150"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahm "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Massn "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Massn"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1634
    Bottom =842
    Left =-1
    Top =-1
    Right =1610
    Bottom =484
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =50
        Top =37
        Right =299
        Bottom =342
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =393
        Top =52
        Right =637
        Bottom =143
        Top =0
        Name ="Buchungsstellen"
        Name =""
    End
    Begin
        Left =397
        Top =270
        Right =638
        Bottom =442
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =392
        Top =149
        Right =637
        Bottom =262
        Top =0
        Name ="Finanzquellen"
        Name =""
    End
    Begin
        Left =966
        Top =196
        Right =1214
        Bottom =352
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =687
        Top =303
        Right =897
        Bottom =500
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =967
        Top =367
        Right =1190
        Bottom =483
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
End
