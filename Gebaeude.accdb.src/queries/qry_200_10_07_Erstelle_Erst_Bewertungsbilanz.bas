Operation =3
Name ="tbl_200_10_10_Bewertungsbilanzen"
Option =0
Where ="(((B_Abfrage_für_Formular.ID_Gebäudeteil)=F_VAriable(\"lng_ID_Geb_Teil\")) AND ("
    "(B_Abfrage_für_Formular.ID_GebT_Zug_GebT) Is Null) AND ((B_Abfrage_für_Formular."
    "Bilanz_relevant)=True))"
Begin InputTables
    Name ="B_Abfrage_für_Formular"
    Name ="B_Abfrage_für_Bericht_0"
End
Begin OutputColumns
    Alias ="idbew"
    Name ="Id_Bewert"
    Expression ="F_Variable(\"lng_id_Bewert\")"
    Name ="ID_Gebäudeteil"
    Expression ="B_Abfrage_für_Formular.ID_Gebäudeteil"
    Name ="Bezeichnung"
    Expression ="B_Abfrage_für_Formular.Bezeichnung"
    Name ="Gebäudeteil"
    Expression ="B_Abfrage_für_Formular.Gebäudeteil"
    Name ="Straße"
    Expression ="B_Abfrage_für_Formular.Name"
    Name ="Haus_Nr"
    Expression ="B_Abfrage_für_Formular.haus_nr"
    Name ="LS_Grst_wert_hier_zuordn"
    Expression ="B_Abfrage_für_Formular.LS_Grst_wert_hier_zuordn"
    Alias ="FL"
    Name ="Fläche"
    Expression ="IIf([LS_Grst_wert_hier_zuordn]=True,[Fläche],0)"
    Name ="Bodenrichtwert"
    Expression ="B_Abfrage_für_Formular.Bodenrichtwert"
    Alias ="ant_brw"
    Name ="anteil bodenrichtwert"
    Expression ="DLookUp(\"[Anteil Bodenrichtwert]\",\"qry_200_05_40_Jaehrliche_Bodenrichtwerte\""
        ",\"[Jahr] = \" & F_Variable(\"lng_Kalk_jahr\"))"
    Name ="voll berechnen"
    Expression ="B_Abfrage_für_Formular.[voll berechnen]"
    Alias ="BGF"
    Name ="BGF"
    Expression ="DSum(\"[BGF]\",\"tbl_100_20_Gebäudeteile\",\"[ID_GebT_Zug_GebT] = \" & F_Variabl"
        "e(\"lng_ID_Geb_Teil\") & \" or ID_Gebäudeteil = \" & F_VAriable(\"lng_ID_Geb_Tei"
        "l\"))"
    Name ="BRI"
    Expression ="B_Abfrage_für_Formular.BRI"
    Name ="Baujahr"
    Expression ="B_Abfrage_für_Formular.Baujahr"
    Name ="Baujahr_real"
    Expression ="B_Abfrage_für_Formular.Baujahr_real"
    Name ="Baujahr_mod"
    Expression ="B_Abfrage_für_Formular.Baujahr_mod"
    Name ="gewöhnliche Nutzungsdauer"
    Expression ="B_Abfrage_für_Formular.[gewöhnliche Nutzungsdauer]"
    Name ="geschätze Nutzungsdauer"
    Expression ="B_Abfrage_für_Formular.[geschätze Nutzungsdauer]"
    Name ="Neubauwert_ab_2000"
    Expression ="B_Abfrage_für_Formular.Neubauwert_ab_2000"
    Alias ="Tp"
    Name ="NHK_Typ"
    Expression ="[Typ-Nr] & \": \" & [Typ]"
    Alias ="PunkteAusstattung"
    Name ="PunkteAusstattung"
    Expression ="[Pkt_Fassade]+[Pkt_Fenster]+[Pkt_Dächer]+[Pkt_Sanitär]+[Pkt_Innenwände_S]+[Pkt_B"
        "odenbeläge]+[Pkt_Innentüren]+[Pkt_Heizung]+[PKt_Elektro]"
    Alias ="Ausstattung"
    Name ="Ausstattung"
    Expression ="IIf([PunkteAusstattung]<=166.6666,\"einfach\",IIf([PunkteAusstattung]>=233.3332,"
        "\"gehoben\",IIf([PunkteAusstattung]>166.6667 And [PunkteAusstattung]<233.3331,\""
        "mittel\")))"
    Alias ="Range"
    Name ="Range"
    Expression ="IIf([Ausstattung]=\"gehoben\",[PunkteAusstattung]-233.33,IIf([Ausstattung]=\"mit"
        "tel\",[PunkteAusstattung]-166.66,IIf([Ausstattung]=\"einfach\",[PunkteAusstattun"
        "g]-100)))"
    Alias ="Wert von"
    Name ="Wert von"
    Expression ="IIf([Baujahr]<#1/1/1925#,[von 25],IIf([Baujahr]>#12/31/1924# And [Baujahr]<#1/1/"
        "1946#,[von 25 - 45],IIf([Baujahr]>#12/31/1945# And [Baujahr]<#1/1/1960#,[von 46 "
        "- 59],IIf([Baujahr]>#12/31/1959# And [Baujahr]<#1/1/1970#,[von 60 - 69],IIf([Bau"
        "jahr]>#12/31/1969# And [Baujahr]<#1/1/1985#,[von 70 - 84],IIf([Baujahr]>#12/31/1"
        "984# And [Baujahr]<#1/1/2000#,[von 85 - 99],IIf([Baujahr]>#12/31/1999#,[von 2000"
        "])))))))"
    Alias ="Wert bis"
    Name ="Wert bis"
    Expression ="IIf([Baujahr]<#1/1/1925#,[bis 25],IIf([Baujahr]>#12/31/1924# And [Baujahr]<#1/1/"
        "1946#,[bis 25 - 45],IIf([Baujahr]>#12/31/1945# And [Baujahr]<#1/1/1960#,[bis 46 "
        "- 59],IIf([Baujahr]>#12/31/1959# And [Baujahr]<#1/1/1970#,[bis 60 - 69],IIf([Bau"
        "jahr]>#12/31/1969# And [Baujahr]<#1/1/1985#,[bis 70 - 84],IIf([Baujahr]>#12/31/1"
        "984# And [Baujahr]<#1/1/2000#,[bis 85 - 99],IIf([Baujahr]>#12/31/1999#,[bis 2000"
        "])))))))"
    Alias ="Euro je BGF"
    Name ="Euro je BGF"
    Expression ="((([PunkteAusstattung]-100)/200)*([Wert bis]-[Wert von]))+[Wert von]"
    Alias ="Wert1"
    Name ="Wert1"
    Expression ="[Euro je BGF]*[BGF]"
    Name ="Baunebenkosten"
    Expression ="B_Abfrage_für_Bericht_0.Baunebenkosten"
    Name ="Erläuterungen"
    Expression ="B_Abfrage_für_Formular.Erläut_Bewertung"
    Name ="Index_manuell"
    Expression ="B_Abfrage_für_Formular.Index_manuell"
    Alias ="idx_2000"
    Name ="index ab 2000"
    Expression ="16.41"
    Name ="Bewertung abgeschlossen"
    Expression ="B_Abfrage_für_Formular.[Bewertung abgeschlossen]"
    Name ="Zuschuss_Prozent"
    Expression ="B_Abfrage_für_Formular.Zuschuss_Prozent"
    Name ="Versicherungswert"
    Expression ="B_Abfrage_für_Formular.Versicherungswert"
    Name ="Fassade (11%)"
    Expression ="B_Abfrage_für_Formular.[Fassade (11%)]"
    Name ="Fenster (14%)"
    Expression ="B_Abfrage_für_Formular.[Fenster (14%)]"
    Name ="Dächer (15%)"
    Expression ="B_Abfrage_für_Formular.[Dächer (15%)]"
    Name ="Sanitär (13%)"
    Expression ="B_Abfrage_für_Formular.[Sanitär (13%)]"
    Name ="Innenwände Sanitärbereich (6%)"
    Expression ="B_Abfrage_für_Formular.[Innenwände Sanitärbereich (6%)]"
    Name ="Innentüren (11%)"
    Expression ="B_Abfrage_für_Formular.[Innentüren (11%)]"
    Name ="Heizung (15%)"
    Expression ="B_Abfrage_für_Formular.[Heizung (15%)]"
    Name ="Elektroinstallation (7%)"
    Expression ="B_Abfrage_für_Formular.[Elektroinstallation (7%)]"
    Name ="Bodenbeläge (8 %)"
    Expression ="B_Abfrage_für_Formular.[Bodenbeläge (8 %)]"
End
Begin Joins
    LeftTable ="B_Abfrage_für_Formular"
    RightTable ="B_Abfrage_für_Bericht_0"
    Expression ="B_Abfrage_für_Formular.[Typ aus NHK-Typen] = B_Abfrage_für_Bericht_0.[NHK-Typen]"
        ".Kennummer"
    Flag =2
    LeftTable ="B_Abfrage_für_Formular"
    RightTable ="B_Abfrage_für_Bericht_0"
    Expression ="B_Abfrage_für_Formular.Ausstattung = B_Abfrage_für_Bericht_0.Ausstattung"
    Flag =2
End
Begin OrderBy
    Expression ="B_Abfrage_für_Formular.Bezeichnung"
    Flag =0
    Expression ="B_Abfrage_für_Formular.Gebäudeteil"
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
dbBoolean "UseTransaction" ="-1"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="PunkteAusstattung"
        dbInteger "ColumnWidth" ="1905"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="8"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.BGF"
        dbInteger "ColumnOrder" ="3"
        dbText "Format" ="Fixed"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Baujahr"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[gewöhnliche Nutzungsdauer]"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[geschätze Nutzungsdauer]"
        dbInteger "ColumnOrder" ="6"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Neubauwert_ab_2000"
        dbInteger "ColumnWidth" ="2175"
        dbInteger "ColumnOrder" ="7"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausstattung"
        dbInteger "ColumnWidth" ="1245"
        dbInteger "ColumnOrder" ="9"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Range"
        dbInteger "ColumnWidth" ="1440"
        dbInteger "ColumnOrder" ="10"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert von"
        dbInteger "ColumnWidth" ="1170"
        dbInteger "ColumnOrder" ="11"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert bis"
        dbInteger "ColumnOrder" ="12"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Euro je BGF"
        dbInteger "ColumnWidth" ="1545"
        dbInteger "ColumnOrder" ="13"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert1"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="28"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Bericht_0.Baunebenkosten"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="29"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.BRI"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="24"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Index_manuell"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="14"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Versicherungswert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Baujahr_real"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="25"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Baujahr_mod"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="26"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Zuschuss_Prozent"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="33"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Bericht_0.Typ"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="15"
    End
    Begin
        dbText "Name" ="Straße "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Straße"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Bezeichnung"
        dbInteger "ColumnOrder" ="1"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="6278"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Erl "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Gebäudeteil"
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Erläuterungen"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="30"
    End
    Begin
        dbText "Name" ="Tp "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.haus_nr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="18"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.NAme"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="17"
    End
    Begin
        dbText "Name" ="Erst_Folge_b "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erst_Folge_b"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BWJ "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BWJ"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="LS_Gs_h_Zug"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.LS_Grst_wert_hier_zuordn"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="19"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Bilanz_relevant"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bilanz_relevant"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FL "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Fläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FL"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="20"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Bodenrichtwert"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="21"
    End
    Begin
        dbText "Name" ="ant-brw "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Tp"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="27"
    End
    Begin
        dbText "Name" ="ant-brw"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ant_brw"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="22"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[voll berechnen]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="23"
    End
    Begin
        dbText "Name" ="dt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Erltg"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="6345"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="idsx_2000 "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Bewertung abgeschlossen]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="32"
    End
    Begin
        dbText "Name" ="idsx_2000"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="idx_2000"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="31"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Elektroinstallation (7%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Fassade (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Heizung (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Sanitär (13%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Innenwände Sanitärbereich (6%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Innentüren (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Bodenbeläge (8 %)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Fenster (14%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Dächer (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="erltg "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="idbew "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="idbew"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="16"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.ID_GebT_Zug_GebT"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BGF "
        dbInteger "ColumnOrder" ="3"
        dbText "Format" ="Fixed"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BGF"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_200_05_10_Fehlende_Erstbewertungen.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_200_05_10_Fehlende_Erstbewertungen.Status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Erläut_Bewertung"
        dbInteger "ColumnOrder" ="30"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-13
    Top =-58
    Right =2862
    Bottom =1749
    Left =-1
    Top =-1
    Right =2816
    Bottom =921
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =519
        Top =162
        Right =1402
        Bottom =801
        Top =0
        Name ="B_Abfrage_für_Formular"
        Name =""
    End
    Begin
        Left =1956
        Top =178
        Right =2567
        Bottom =652
        Top =0
        Name ="B_Abfrage_für_Bericht_0"
        Name =""
    End
End
