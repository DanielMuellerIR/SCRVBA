Operation =1
Option =0
Where ="((([Teile der Maßnahmen].Umsetzungsjahr)=F_Variable('lng_Kalk_Jahr')) AND ((([Sa"
    "chbearbeiter].[ID]>=F_Variable(\"lng_ID_SB_Min\") And [Sachbearbeiter].[ID]<=F_V"
    "ariable(\"lng_ID_SB_Max\")) Or ([Sachbearbeiter].[ID] Is Null))=True))"
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="M_Strassenverzeichnis"
    Name ="Sachbearbeiter"
    Name ="Maßnahmen"
    Name ="Teile der Maßnahmen"
End
Begin OutputColumns
    Expression ="[Teile der Maßnahmen].ID"
    Alias ="Obj"
    Expression ="[Bezeichnung] & \" \" & [M_Strassenverzeichnis].[Name] & \" \" & [tbl_100_20_Geb"
        "äudeteile].[Haus_Nr] & \": \" & \" -> \" & [Gebäudeteil]"
    Alias ="Massn_Teilm"
    Expression ="[Maßnahme] & \" -> \" & [Teilmaßname]"
    Expression ="Maßnahmen.Aktiv_Eigenl"
    Alias ="akt_Eigenl"
    Expression ="IIf([Aktiv_Eigenl],\"X\",\"\")"
    Expression ="Sachbearbeiter.Name"
    Expression ="[Teile der Maßnahmen].Umsetzungsjahr"
    Expression ="[Teile der Maßnahmen].Dat_Grundl_Erm_Start"
    Expression ="[Teile der Maßnahmen].Dat_Grundl_Erm_Ende"
    Expression ="[Teile der Maßnahmen].Dat_Planung_Start"
    Expression ="[Teile der Maßnahmen].Dat_Planung_Ende"
    Expression ="[Teile der Maßnahmen].Dat_Ausschr_Start"
    Expression ="[Teile der Maßnahmen].Dat_Ausschr_Ende"
    Expression ="[Teile der Maßnahmen].Dat_Ausf_Start"
    Expression ="[Teile der Maßnahmen].Dat_Ausf_Ende"
    Expression ="[Teile der Maßnahmen].Dat_Abr_Start"
    Expression ="[Teile der Maßnahmen].Dat_Abr_Ende"
    Expression ="[Teile der Maßnahmen].Dat_Abschluss"
    Expression ="[Teile der Maßnahmen].Dat_Abschluss_DB"
    Expression ="[Teile der Maßnahmen].[voraussichtliche Kosten]"
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="Maßnahmen"
    RightTable ="Teile der Maßnahmen"
    Expression ="Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]"
    Flag =1
    LeftTable ="Sachbearbeiter"
    RightTable ="Teile der Maßnahmen"
    Expression ="Sachbearbeiter.ID = [Teile der Maßnahmen].ID_SB"
    Flag =3
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Maßnahmen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
End
Begin OrderBy
    Expression ="[Bezeichnung] & \" \" & [M_Strassenverzeichnis].[Name] & \" \" & [tbl_100_20_Geb"
        "äudeteile].[Haus_Nr] & \": \" & \" -> \" & [Gebäudeteil]"
    Flag =0
    Expression ="[Maßnahme] & \" -> \" & [Teilmaßname]"
    Flag =0
    Expression ="Sachbearbeiter.Name"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "RecordsetType" ="0"
dbBoolean "TotalsRow" ="-1"
dbMemo "OrderBy" ="[qry_020_05_05_Arb_Programm].[Obj], [qry_020_05_05_Arb_Programm].[Aktiv_Eigenl] "
    "DESC"
Begin
    Begin
        dbText "Name" ="[Teile der Maßnahmen].ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Dat_Abschluss"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Dat_Abschluss_DB"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Obj"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="8415"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Massn_Teilm"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="14700"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Umsetzungsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].[voraussichtliche Kosten]"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="3615"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Sachbearbeiter.Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Dat_Grundl_Erm_Start"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Dat_Grundl_Erm_Ende"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Dat_Planung_Start"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Dat_Planung_Ende"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Dat_Ausschr_Start"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Dat_Ausschr_Ende"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Dat_Ausf_Start"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Dat_Ausf_Ende"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Dat_Abr_Start"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Dat_Abr_Ende"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="akt_Eigenl"
        dbInteger "ColumnWidth" ="2794"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.Aktiv_Eigenl"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-12
    Top =-52
    Right =3776
    Bottom =1787
    Left =-1
    Top =-1
    Right =3735
    Bottom =692
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =36
        Top =131
        Right =264
        Bottom =338
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =369
        Top =113
        Right =595
        Bottom =347
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =674
        Top =316
        Right =861
        Bottom =432
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =2683
        Top =77
        Right =2996
        Bottom =333
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
    Begin
        Left =696
        Top =66
        Right =1103
        Bottom =273
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =2064
        Top =22
        Right =2498
        Bottom =261
        Top =0
        Name ="Teile der Maßnahmen"
        Name =""
    End
End
