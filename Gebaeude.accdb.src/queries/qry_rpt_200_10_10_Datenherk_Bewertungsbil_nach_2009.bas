Operation =1
Option =0
Where ="(((tbl_200_05_10_Bewertungsläufe.id_Bewert)=F_Variable(\"lng_id_Bewert\")) AND ("
    "(B_Sanierungsstau_Werterhöhung.DS_Typ)=1))"
Begin InputTables
    Name ="tbl_070_10_Flure"
    Name ="tbl_050_10_Gemarkungen"
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_200_10_10_Bewertungsbilanzen"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="tbl_200_05_10_Bewertungsläufe"
    Name ="B_Sanierungsstau_Werterhöhung"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.Gebaeudekennung"
    Expression ="tbl_200_05_10_Bewertungsläufe.id_Bewert"
    Expression ="tbl_200_05_10_Bewertungsläufe.Erläuterung"
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
    Alias ="Typ"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.NHK_Typ"
    Expression ="tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.LS_Grst_wert_hier_zuordn"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Fläche"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.BRI"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Baujahr"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Baujahr_real"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Baujahr_mod"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[gewöhnliche Nutzungsdauer]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[geschätze Nutzungsdauer]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.PunkteAusstattung"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Ausstattung"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Range"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Wert von]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Wert bis]"
    Alias ="BGF"
    Expression ="IIf(Geb_2009_Bereits_Erstbew([tbl_200_10_10_Bewertungsbilanzen].[ID_Gebäudeteil]"
        "),CDbl(DLookUp(\"[BGF]\",\"tbl_200_10_10_Bewertungsbilanzen\",\"[Id_Bewert] =  1"
        " and [ID_Gebäudeteil] = \" & [tbl_200_10_10_Bewertungsbilanzen].[ID_Gebäudeteil]"
        ")),[tbl_200_10_10_Bewertungsbilanzen]![BGF])"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.[Euro je BGF]"
    Alias ="Wert_1"
    Expression ="[Euro je BGF]*[BGF]"
    Alias ="idx_2000_2009"
    Expression ="CDbl(fc_Idx_2000_2009([tbl_100_20_Gebäudeteile].[ID_Gebäudeteil]))"
    Alias ="Wert2"
    Expression ="[Wert_1]*[idx_2000_2009]"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Baunebenkosten"
    Alias ="BNK"
    Expression ="CCur([Wert2]*([Baunebenkosten]/100))"
    Alias ="Wert3"
    Expression ="[Wert2]+[bnk]"
    Alias ="Aussenanlagen"
    Expression ="CCur([Wert3]*4/100)"
    Alias ="NB_Wert_auf_2000_ger"
    Expression ="[Wert3]+[Aussenanlagen]"
    Alias ="NB_Wert_Eing"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Neubauwert_ab_2000"
    Alias ="NB_Wert_relevant"
    Expression ="IIf(Not IsNull([NB_Wert_Eing]),[NB_Wert_Eing],[NB_Wert_auf_2000_ger])"
    Expression ="B_Sanierungsstau_Werterhöhung.Herstellkosten"
    Alias ="Erl"
    Expression ="IIf(IsNull([tbl_200_10_10_Bewertungsbilanzen].[Erläuterungen]),\"keine\",[tbl_20"
        "0_10_10_Bewertungsbilanzen].[Erläuterungen])"
    Expression ="tbl_200_10_10_Bewertungsbilanzen.Zuschuss_Prozent"
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
    Expression ="B_Sanierungsstau_Werterhöhung.DS_Typ"
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
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="B_Sanierungsstau_Werterhöhung"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = B_Sanierungsstau_Werterhöhung.ID_Gebäud"
        "eteil"
    Flag =1
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
        dbInteger "ColumnOrder" ="27"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Baujahr_real"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="22"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Bezeichnung"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Baujahr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="21"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[gewöhnliche Nutzungsdauer]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="24"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[geschätze Nutzungsdauer]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="25"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.PunkteAusstattung"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="26"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Range"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="28"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Wert von]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="29"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Wert bis]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="30"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Euro je BGF]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="31"
    End
    Begin
        dbText "Name" ="Erl"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1020"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="60"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Zuschuss_Prozent"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="43"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Versicherungswert"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="44"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.BRI"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="20"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Baujahr_mod"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="23"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Haus_Nr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="13"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Gebäudeteil"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="12"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Straße"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="Straße_HN"
        dbInteger "ColumnWidth" ="1650"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="14"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Bodenbeläge (8 %)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="53"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Sanitär (13%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="48"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.LS_Grst_wert_hier_zuordn"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="17"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Dächer (15%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="47"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Innentüren (11%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="50"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Fenster (14%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="46"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Elektroinstallation (7%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="52"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Fläche"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="18"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Fassade (11%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="45"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Innenwände Sanitärbereich (6%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="49"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[Heizung (15%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="51"
    End
    Begin
        dbText "Name" ="tbl_050_10_Gemarkungen.Gemarkung"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="54"
    End
    Begin
        dbText "Name" ="tbl_070_10_Flure.Flur"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="55"
    End
    Begin
        dbText "Name" ="Flurst"
        dbInteger "ColumnWidth" ="2790"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="56"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[anteil bodenrichtwert]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="58"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Bodenrichtwert"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="57"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.[voll berechnen]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="59"
    End
    Begin
        dbText "Name" ="Erl "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3315"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.Bewertungsjahr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.Zeitpunkt"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1935"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.Erläuterung"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2115"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.id_Bewert"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="9411"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.ID_Bew_Bil"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="idx_2000_2009"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="32"
        dbText "Format" ="Percent"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="16"
    End
    Begin
        dbText "Name" ="Wert2"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2280"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="34"
    End
    Begin
        dbText "Name" ="BNK "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BNK"
        dbInteger "ColumnWidth" ="1605"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="36"
    End
    Begin
        dbText "Name" ="Wert3 "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert3"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="37"
    End
    Begin
        dbText "Name" ="Aussenanlagen"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="38"
    End
    Begin
        dbText "Name" ="NB_Wert_auf_2000_ger"
        dbInteger "ColumnWidth" ="2955"
        dbInteger "ColumnOrder" ="40"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NB_Wert_Eing"
        dbInteger "ColumnOrder" ="39"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NB_Wert_relevant "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NB_Wert_relevant"
        dbInteger "ColumnWidth" ="2970"
        dbInteger "ColumnOrder" ="41"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_10_10_Bewertungsbilanzen.Baunebenkosten"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="35"
    End
    Begin
        dbText "Name" ="Typ"
        dbInteger "ColumnOrder" ="15"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="11820"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Wert_1 "
        dbInteger "ColumnWidth" ="1605"
        dbInteger "ColumnOrder" ="31"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert_1"
        dbInteger "ColumnOrder" ="33"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1620"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.DS_Typ"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Sanierungsstau_Werterhöhung.Herstellkosten"
        dbInteger "ColumnWidth" ="5370"
        dbInteger "ColumnOrder" ="42"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BGF"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="19"
    End
    Begin
        dbText "Name" ="BGF "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebaeudekennung"
        dbInteger "ColumnOrder" ="1"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-12
    Top =-52
    Right =3045
    Bottom =1798
    Left =-1
    Top =-1
    Right =3004
    Bottom =527
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =1740
        Top =704
        Right =2019
        Bottom =906
        Top =0
        Name ="tbl_070_10_Flure"
        Name =""
    End
    Begin
        Left =1731
        Top =509
        Right =2208
        Bottom =673
        Top =0
        Name ="tbl_050_10_Gemarkungen"
        Name =""
    End
    Begin
        Left =1098
        Top =272
        Right =1490
        Bottom =859
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =360
        Top =37
        Right =675
        Bottom =898
        Top =0
        Name ="tbl_200_10_10_Bewertungsbilanzen"
        Name =""
    End
    Begin
        Left =710
        Top =14
        Right =1048
        Bottom =480
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =35
        Top =70
        Right =306
        Bottom =234
        Top =0
        Name ="tbl_200_05_10_Bewertungsläufe"
        Name =""
    End
    Begin
        Left =1148
        Top =18
        Right =1777
        Bottom =205
        Top =0
        Name ="B_Sanierungsstau_Werterhöhung"
        Name =""
    End
End
