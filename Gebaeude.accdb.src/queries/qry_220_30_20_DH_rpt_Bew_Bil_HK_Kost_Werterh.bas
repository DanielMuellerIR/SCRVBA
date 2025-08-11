Operation =1
Option =0
Begin InputTables
    Name ="tbl_200_30_20_Bew_Bilanz_Werterhoehungen"
    Name ="tbl_200_10_10_Bewertungsbilanzen"
End
Begin OutputColumns
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Id_Bewert"
    Expression ="tbl_200_30_20_Bew_Bilanz_Werterhoehungen.ID_Bew_Bil"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil"
    Alias ="HK"
    Expression ="Sum(IIf([DS_Typ]=1,[Herstellkosten],0))"
    Alias ="SummevonMehrwert"
    Expression ="Sum(tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Mehrwert)"
    Alias ="Nutzd_urspr"
    Expression ="IIf(Not IsNull([geschätze Nutzungsdauer]),[geschätze Nutzungsdauer],[gewöhnliche"
        " Nutzungsdauer])"
    Alias ="Nutzd_Verl_Kumul"
    Expression ="Sum(tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Nutz_dauer_Jahre_Verl)"
    Alias ="Nutzd_gesamt"
    Expression ="[Nutzd_urspr]+[Nutzd_Verl_Kumul]"
    Alias ="Abschr_Monate_bis_BewJahr"
    Expression ="Sum(tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Abschr_Monate_Vor_DS_bis_jetzt)"
    Alias ="Abschr_bis_Bew_Jahr"
    Expression ="Sum(tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Abschr_Vor_DS_bis_Jetzt)"
    Alias ="Restwert_Bew_Jahr"
    Expression ="Max(IIf([DS_Typ]=3,[Restwert_nach_Werterh],1))"
    Alias ="Abschr_pro_Jahr_BewJahr"
    Expression ="Max(IIf([DS_Typ]=3,[Abschr_pro_Mon_Vor_DS_bis_jetzt]*12,0))"
    Alias ="Abschr_BewJahr"
    Expression ="Sum(tbl_200_30_20_Bew_Bilanz_Werterhoehungen.Abschr_Vor_DS_bis_Jetzt)"
    Alias ="WBV"
    Expression ="Sum(IIf([DS_Typ]=3,[Wiederbesch_Wert],0))"
End
Begin Joins
    LeftTable ="tbl_200_10_10_Bewertungsbilanzen"
    RightTable ="tbl_200_30_20_Bew_Bilanz_Werterhoehungen"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil = tbl_200_30_20_Bew_Bilanz_Werterhoe"
        "hungen.ID_Bew_Bil"
    Flag =1
End
Begin Groups
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Id_Bewert"
    GroupLevel =0
    Expression ="tbl_200_30_20_Bew_Bilanz_Werterhoehungen.ID_Bew_Bil"
    GroupLevel =0
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="IIf(Not IsNull([geschätze Nutzungsdauer]),[geschätze Nutzungsdauer],[gewöhnliche"
        " Nutzungsdauer])"
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
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="tbl_200_30_20_Bew_Bilanz_Werterhoehungen.ID_Bew_Bil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SummevonMehrwert"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2400"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Nutzd_urspr "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Nutzd_Verl_Kumul"
        dbInteger "ColumnWidth" ="3225"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Nutzd_urspr"
        dbInteger "ColumnWidth" ="1800"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Id_Bewert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Nutzd_gesamt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Nutzd_gesamt"
        dbInteger "ColumnWidth" ="1755"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Restwert_Bew_Jahr"
        dbInteger "ColumnWidth" ="3210"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschr_bis_Bew_JAhr "
        dbInteger "ColumnWidth" ="3795"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschr_bis_Bew_Jahr"
        dbInteger "ColumnWidth" ="2415"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschr_pro_Jahr_BewJahr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2835"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Abschr_BewJAhr "
        dbInteger "ColumnWidth" ="3795"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschr_BewJahr"
        dbInteger "ColumnWidth" ="2460"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschr_Monate_bis_BewJahr"
        dbInteger "ColumnWidth" ="4605"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="WBV "
        dbInteger "ColumnWidth" ="2310"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="WBV"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="HK"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1875"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =2
    Left =-12
    Top =-52
    Right =3776
    Bottom =1798
    Left =-1
    Top =-1
    Right =3735
    Bottom =546
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =852
        Top =37
        Right =1290
        Bottom =448
        Top =0
        Name ="tbl_200_30_20_Bew_Bilanz_Werterhoehungen"
        Name =""
    End
    Begin
        Left =361
        Top =55
        Right =722
        Bottom =696
        Top =0
        Name ="tbl_200_10_10_Bewertungsbilanzen"
        Name =""
    End
End
