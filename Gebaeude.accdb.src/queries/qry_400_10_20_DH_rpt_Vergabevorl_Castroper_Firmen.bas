Operation =1
Option =2
Where ="(((qry_400_10_05_Verg_Summen_pro_Auftrag.[SummevonWert Auftrag])>=F_Variable(\"c"
    "ur_Auftr_Minwert\")) AND ((Aufträge.Auftr_Datum) Between F_Variable(\"dt_Start_D"
    "atum\") And F_Variable(\"dt_Ende_Datum\")))"
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="M_Strassenverzeichnis"
    Name ="Maßnahmen"
    Name ="Aufträge"
    Name ="qry_400_10_05_Verg_Summen_pro_Auftrag"
    Name ="tbl_PLZen_Castrop_Rauxel"
    Name ="Haushaltsdaten"
    Name ="Geplante Finanzierung"
End
Begin OutputColumns
    Alias ="Auftr_Jahr"
    Expression ="Year([Auftr_Datum])"
    Alias ="Fin_HK"
    Expression ="fc_Fin_Herk([Maßnahmen].[ID])"
    Alias ="Bez"
    Expression ="[Name] & \" \" & [tbl_100_20_Gebäudeteile].[Haus_Nr] & \": \" & [Bezeichnung] & "
        "\" -> \" & [Gebäudeteil]"
    Expression ="Maßnahmen.Maßnahme"
    Expression ="Aufträge.*"
    Alias ="FS"
    Expression ="[Aufträge].[PLZ] & \" \" & [Firmensitz]"
    Alias ="Auftrag_ges"
    Expression ="qry_400_10_05_Verg_Summen_pro_Auftrag.[SummevonWert Auftrag]"
End
Begin Joins
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_20_Gebäudeteile.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="Aufträge"
    RightTable ="qry_400_10_05_Verg_Summen_pro_Auftrag"
    Expression ="Aufträge.ID_Hauptauftr = qry_400_10_05_Verg_Summen_pro_Auftrag.ID_Hauptauftr"
    Flag =1
    LeftTable ="Aufträge"
    RightTable ="tbl_PLZen_Castrop_Rauxel"
    Expression ="Aufträge.PLZ = tbl_PLZen_Castrop_Rauxel.PLZ"
    Flag =1
    LeftTable ="Maßnahmen"
    RightTable ="Haushaltsdaten"
    Expression ="Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =2
    LeftTable ="Maßnahmen"
    RightTable ="Aufträge"
    Expression ="Maßnahmen.ID = Aufträge.ID_Maßnahme"
    Flag =1
    LeftTable ="Maßnahmen"
    RightTable ="Geplante Finanzierung"
    Expression ="Maßnahmen.ID = [Geplante Finanzierung].ID_Massnahme"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Maßnahmen"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Maßnahmen.ID_Gebäudeteil"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
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
        dbText "Name" ="Maßnahmen.Maßnahme"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="713"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Bez"
        dbInteger "ColumnWidth" ="5595"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aufträge.ID_Auftrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aufträge.Auftragsinhalt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Auftrag_ges "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aufträge.ID_Hauptauftr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aufträge.ID_Maßnahme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aufträge.Auftr_Datum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aufträge.Firma"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aufträge.Firmensitz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aufträge.Wert Auftrag"
        dbInteger "ColumnWidth" ="2220"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aufträge.Auftragsart"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aufträge.Vergabeart"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aufträge.Begründung_Nachtrag"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Auftrag_ges"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Auftr_Jahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aufträge.PLZ"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FS "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Fin_HK"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-13
    Top =-58
    Right =3767
    Bottom =1749
    Left =-1
    Top =-1
    Right =3721
    Bottom =1275
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =31
        Top =243
        Right =494
        Bottom =512
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =645
        Top =207
        Right =1035
        Bottom =460
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =1193
        Top =396
        Right =1651
        Bottom =618
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =1192
        Top =102
        Right =1654
        Bottom =373
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =1864
        Top =32
        Right =2228
        Bottom =560
        Top =0
        Name ="Aufträge"
        Name =""
    End
    Begin
        Left =2442
        Top =66
        Right =2952
        Bottom =261
        Top =0
        Name ="qry_400_10_05_Verg_Summen_pro_Auftrag"
        Name =""
    End
    Begin
        Left =2446
        Top =287
        Right =2906
        Bottom =473
        Top =0
        Name ="tbl_PLZen_Castrop_Rauxel"
        Name =""
    End
    Begin
        Left =1880
        Top =588
        Right =2226
        Bottom =860
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =1885
        Top =891
        Right =2236
        Bottom =1148
        Top =0
        Name ="Geplante Finanzierung"
        Name =""
    End
End
