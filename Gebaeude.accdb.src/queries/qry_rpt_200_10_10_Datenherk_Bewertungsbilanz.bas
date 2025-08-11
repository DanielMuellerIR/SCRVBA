Operation =1
Option =0
Where ="(((tbl_200_05_10_Bewertungsläufe.id_Bewert)=F_Variable(\"lng_id_Bewert\")) AND ("
    "(tbl_100_20_Gebäudeteile.ID_Gebäudeteil) Between F_VAriable(\"lng_ID_Geb_Teil_Mi"
    "n\") And F_VAriable(\"lng_ID_Geb_Teil_Max\")))"
Begin InputTables
    Name ="tbl_070_10_Flure"
    Name ="tbl_050_10_Gemarkungen"
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_200_10_10_Bewertungsbilanzen"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_200_05_10_Bewertungsläufe"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.Gebaeudekennung"
    Expression ="tbl_200_05_10_Bewertungsläufe.id_Bewert"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Expression ="tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz"
    Expression ="tbl_200_05_10_Bewertungsläufe.Bewertungsjahr"
    Expression ="tbl_200_05_10_Bewertungsläufe.Zeitpunkt"
    Alias ="Objekt"
    Expression ="[tbl_200_10_10_Bewertungsbilanzen].[Straße] & \" \" & [tbl_200_10_10_Bewertungsb"
        "ilanzen].[Haus_Nr] & \": \" & [tbl_200_10_10_Bewertungsbilanzen].[Bezeichnung] &"
        " \" -> \" & [tbl_200_10_10_Bewertungsbilanzen].[Gebäudeteil]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Straße"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Bezeichnung"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Gebäudeteil"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Haus_Nr"
    Alias ="Straße_HN"
    Expression ="[tbl_200_10_10_Bewertungsbilanzen].[Straße] & \" \" & [tbl_200_10_10_Bewertungsb"
        "ilanzen].[Haus_Nr]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.LS_Grst_wert_hier_zuordn"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Fläche"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.BGF"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.BRI"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Baujahr"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Baujahr_real"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Baujahr_mod"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[gewöhnliche Nutzungsdauer]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[geschätze Nutzungsdauer]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Neubauwert_ab_2000"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.PunkteAusstattung"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Ausstattung"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Range"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Wert von]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Wert bis]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Euro je BGF]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Wert1"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Baunebenkosten"
    Expression ="tbl_200_05_10_Bewertungsläufe.Erläuterung"
    Alias ="Erl"
    Expression ="IIf(IsNull([tbl_200_10_10_Bewertungsbilanzen].[Erläuterungen]),\"keine\",[tbl_20"
        "0_10_10_Bewertungsbilanzen].[Erläuterungen])"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Zuschuss_Prozent"
    Alias ="Typ"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.NHK_Typ"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[index ab 2000]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Index_manuell"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Versicherungswert"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Fassade (11%)]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Fenster (14%)]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Dächer (15%)]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Sanitär (13%)]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Innenwände Sanitärbereich (6%)]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Innentüren (11%)]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Heizung (15%)]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Elektroinstallation (7%)]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Bodenbeläge (8 %)]"
    Expression ="tbl_050_10_Gemarkungen.Gemarkung"
    Expression ="tbl_070_10_Flure.Flur"
    Alias ="Flurst"
    Expression ="fc_Flurstuecke([tbl_100_10_Liegenschaften].[ID_Gebäude])"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Bodenrichtwert"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[anteil bodenrichtwert]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[voll berechnen]"
End
Begin Joins
    LeftTable ="tbl_200_10_10_Bewertungsbilanzen"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil = tbl_100_20_Gebäudeteile.ID_Geb"
        "äudeteil"
    Flag =1
    LeftTable ="tbl_200_05_10_Bewertungsläufe"
    RightTable ="tbl_200_10_10_Bewertungsbilanzen"
    Expression ="tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Be"
        "wert"
    Flag =1
    LeftTable ="tbl_050_10_Gemarkungen"
    RightTable ="tbl_100_10_Liegenschaften"
    Expression ="tbl_050_10_Gemarkungen.ID_Gemarkung = tbl_100_10_Liegenschaften.ID_Gemarkung"
    Flag =3
    LeftTable ="tbl_070_10_Flure"
    RightTable ="tbl_100_10_Liegenschaften"
    Expression ="tbl_070_10_Flure.ID_Flur = tbl_100_10_Liegenschaften.ID_Flur"
    Flag =3
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
End
Begin OrderBy
    Expression ="[tbl_200_10_10_Bewertungsbilanzen].[Straße] & \" \" & [tbl_200_10_10_Bewertungsb"
        "ilanzen].[Haus_Nr] & \": \" & [tbl_200_10_10_Bewertungsbilanzen].[Bezeichnung] &"
        " \" -> \" & [tbl_200_10_10_Bewertungsbilanzen].[Gebäudeteil]"
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
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Ausstattung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Baujahr_real"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.BGF"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Baujahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[gewöhnliche Nutzungsdauer]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[geschätze Nutzungsdauer]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Neubauwert_ab_2000"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.PunkteAusstattung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Range"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Wert von]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Wert bis]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Euro je BGF]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Wert1"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1605"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Baunebenkosten"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erl"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="8625"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Zuschuss_Prozent"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Typ "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Index_manuell"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Versicherungswert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.BRI"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Baujahr_mod"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Haus_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Straße"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Typ"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Straße_HN"
        dbInteger "ColumnWidth" ="1650"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[index ab 2000]"
        dbInteger "ColumnWidth" ="1680"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Bodenbeläge (8 %)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Sanitär (13%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.LS_Grst_wert_hier_zuordn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Dächer (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Innentüren (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Fenster (14%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Elektroinstallation (7%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Fläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Fassade (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Innenwände Sanitärbereich (6%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Heizung (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_050_10_Gemarkungen.Gemarkung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_070_10_Flure.Flur"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Flurst"
        dbInteger "ColumnWidth" ="2790"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[anteil bodenrichtwert]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Bodenrichtwert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[voll berechnen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erl "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.Bewertungsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.Zeitpunkt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.Erläuterung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.id_Bewert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="8910"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebaeudekennung"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =2849
    Bottom =1786
    Left =-1
    Top =-1
    Right =2818
    Bottom =646
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =1481
        Top =277
        Right =1684
        Bottom =389
        Top =0
        Name ="tbl_070_10_Flure"
        Name =""
    End
    Begin
        Left =1480
        Top =124
        Right =1683
        Bottom =263
        Top =0
        Name ="tbl_050_10_Gemarkungen"
        Name =""
    End
    Begin
        Left =1122
        Top =87
        Right =1357
        Bottom =390
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =405
        Top =24
        Right =698
        Bottom =675
        Top =0
        Name ="tbl_200_10_10_Bewertungsbilanzen"
        Name =""
    End
    Begin
        Left =764
        Top =71
        Right =1043
        Bottom =392
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =71
        Top =39
        Right =319
        Bottom =177
        Top =0
        Name ="tbl_200_05_10_Bewertungsläufe"
        Name =""
    End
End
