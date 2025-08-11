Operation =1
Option =0
Where ="(((IIf(IIf(IsNull([Baujahr_mod]),[Baujahr_real],[Baujahr_mod])+IIf(IsNull([gesch"
    "ätze Nutzungsdauer]),[gewöhnliche Nutzungsdauer],[geschätze Nutzungsdauer])<Year"
    "(Now()),\"Nutzungsdauer abgelaufen!\",\"(nutzbar noch \" & IIf(IsNull([Baujahr_m"
    "od]),[Baujahr_real],[Baujahr_mod])+IIf(IsNull([geschätze Nutzungsdauer]),[gewöhn"
    "liche Nutzungsdauer],[geschätze Nutzungsdauer])-Year(Now()) & \" Jahre)\"))=\"Nu"
    "tzungsdauer abgelaufen!\"))"
Having ="(((tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT) Is Null))"
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
    Name ="tbl_070_10_Flure"
    Name ="tbl_050_10_Gemarkungen"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="Zuordnung_Abschreibung"
End
Begin OutputColumns
    Alias ="Objekt"
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung]"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Expression ="tbl_050_10_Gemarkungen.Gemarkung"
    Expression ="tbl_070_10_Flure.Flur"
    Alias ="Flurstücke"
    Expression ="fc_Flurstuecke([tbl_100_10_Liegenschaften].[ID_Gebäude])"
    Alias ="Fehler"
    Expression ="\"10 : Nutzungsdauer abgelaufen\""
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="tbl_050_10_Gemarkungen"
    RightTable ="tbl_100_10_Liegenschaften"
    Expression ="tbl_050_10_Gemarkungen.ID_Gemarkung = tbl_100_10_Liegenschaften.ID_Gemarkung"
    Flag =3
    LeftTable ="tbl_070_10_Flure"
    RightTable ="tbl_100_10_Liegenschaften"
    Expression ="tbl_070_10_Flure.ID_Flur = tbl_100_10_Liegenschaften.ID_Flur"
    Flag =3
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Zuordnung_Abschreibung"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Zuordnung_Abschreibung.ID_Gebäudeteil"
    Flag =2
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =2
End
Begin OrderBy
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung]"
    Flag =0
End
Begin Groups
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    GroupLevel =0
    Expression ="tbl_050_10_Gemarkungen.Gemarkung"
    GroupLevel =0
    Expression ="tbl_070_10_Flure.Flur"
    GroupLevel =0
    Expression ="fc_Flurstuecke([tbl_100_10_Liegenschaften].[ID_Gebäude])"
    GroupLevel =0
    Expression ="\"10 : Nutzungsdauer abgelaufen\""
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT"
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
        dbText "Name" ="Fehler"
        dbInteger "ColumnWidth" ="8250"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Flurstücke "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="7620"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Flurstücke"
        dbInteger "ColumnWidth" ="2715"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_070_10_Flure.Flur"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_050_10_Gemarkungen.Gemarkung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1310
    Bottom =984
    Left =-1
    Top =-1
    Right =1285
    Bottom =480
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =57
        Top =76
        Right =310
        Bottom =433
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =639
        Top =124
        Right =820
        Bottom =229
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =370
        Top =384
        Right =530
        Bottom =498
        Top =0
        Name ="tbl_070_10_Flure"
        Name =""
    End
    Begin
        Left =369
        Top =237
        Right =578
        Bottom =363
        Top =0
        Name ="tbl_050_10_Gemarkungen"
        Name =""
    End
    Begin
        Left =378
        Top =60
        Right =595
        Bottom =211
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =841
        Top =44
        Right =1054
        Bottom =179
        Top =0
        Name ="Zuordnung_Abschreibung"
        Name =""
    End
End
