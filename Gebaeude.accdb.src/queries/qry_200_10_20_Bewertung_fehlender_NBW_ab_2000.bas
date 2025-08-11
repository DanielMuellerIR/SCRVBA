Operation =1
Option =0
Where ="(((B_Abfrage_für_Formular.ID_Gebäudeteil)=F_VAriable(\"lng_ID_Geb_Teil\")) AND ("
    "(B_Abfrage_für_Formular.ID_GebT_Zug_GebT) Is Null) AND ((B_Abfrage_für_Formular."
    "Bilanz_relevant)=True))"
Begin InputTables
    Name ="B_Abfrage_für_Formular"
    Name ="B_Abfrage_für_Bericht_0"
End
Begin OutputColumns
    Expression ="B_Abfrage_für_Formular.ID_Gebäudeteil"
    Expression ="B_Abfrage_für_Formular.Bezeichnung"
    Expression ="B_Abfrage_für_Formular.Gebäudeteil"
    Expression ="B_Abfrage_für_Formular.Name"
    Expression ="B_Abfrage_für_Formular.haus_nr"
    Expression ="B_Abfrage_für_Formular.LS_Grst_wert_hier_zuordn"
    Alias ="FL"
    Expression ="IIf([LS_Grst_wert_hier_zuordn]=True,[Fläche],0)"
    Expression ="B_Abfrage_für_Formular.Bodenrichtwert"
    Alias ="ant_brw"
    Expression ="DLookUp(\"[Anteil Bodenrichtwert]\",\"qry_200_05_40_Jaehrliche_Bodenrichtwerte\""
        ",\"[Jahr] = \" & F_Variable(\"lng_Kalk_jahr\"))"
    Expression ="B_Abfrage_für_Formular.[voll berechnen]"
    Expression ="B_Abfrage_für_Formular.BGF"
    Expression ="B_Abfrage_für_Formular.BRI"
    Expression ="B_Abfrage_für_Formular.Baujahr"
    Expression ="B_Abfrage_für_Formular.Baujahr_real"
    Expression ="B_Abfrage_für_Formular.Baujahr_mod"
    Expression ="B_Abfrage_für_Formular.[gewöhnliche Nutzungsdauer]"
    Expression ="B_Abfrage_für_Formular.[geschätze Nutzungsdauer]"
    Expression ="B_Abfrage_für_Formular.Neubauwert_ab_2000"
    Alias ="Tp"
    Expression ="[Typ-Nr] & \": \" & [Typ]"
    Alias ="PunkteAusstattung"
    Expression ="[Pkt_Fassade]+[Pkt_Fenster]+[Pkt_Dächer]+[Pkt_Sanitär]+[Pkt_Innenwände_S]+[Pkt_B"
        "odenbeläge]+[Pkt_Innentüren]+[Pkt_Heizung]+[PKt_Elektro]"
    Alias ="Ausstattung"
    Expression ="IIf([PunkteAusstattung]<=166.6666,\"einfach\",IIf([PunkteAusstattung]>=233.3332,"
        "\"gehoben\",IIf([PunkteAusstattung]>166.6667 And [PunkteAusstattung]<233.3331,\""
        "mittel\")))"
    Alias ="Range"
    Expression ="IIf([Ausstattung]=\"gehoben\",[PunkteAusstattung]-233.33,IIf([Ausstattung]=\"mit"
        "tel\",[PunkteAusstattung]-166.66,IIf([Ausstattung]=\"einfach\",[PunkteAusstattun"
        "g]-100)))"
    Alias ="Wert von"
    Expression ="IIf([Baujahr]<#1/1/1925#,[von 25],IIf([Baujahr]>#12/31/1924# And [Baujahr]<#1/1/"
        "1946#,[von 25 - 45],IIf([Baujahr]>#12/31/1945# And [Baujahr]<#1/1/1960#,[von 46 "
        "- 59],IIf([Baujahr]>#12/31/1959# And [Baujahr]<#1/1/1970#,[von 60 - 69],IIf([Bau"
        "jahr]>#12/31/1969# And [Baujahr]<#1/1/1985#,[von 70 - 84],IIf([Baujahr]>#12/31/1"
        "984# And [Baujahr]<#1/1/2000#,[von 85 - 99],IIf([Baujahr]>#12/31/1999#,[von 2000"
        "])))))))"
    Alias ="Wert bis"
    Expression ="IIf([Baujahr]<#1/1/1925#,[bis 25],IIf([Baujahr]>#12/31/1924# And [Baujahr]<#1/1/"
        "1946#,[bis 25 - 45],IIf([Baujahr]>#12/31/1945# And [Baujahr]<#1/1/1960#,[bis 46 "
        "- 59],IIf([Baujahr]>#12/31/1959# And [Baujahr]<#1/1/1970#,[bis 60 - 69],IIf([Bau"
        "jahr]>#12/31/1969# And [Baujahr]<#1/1/1985#,[bis 70 - 84],IIf([Baujahr]>#12/31/1"
        "984# And [Baujahr]<#1/1/2000#,[bis 85 - 99],IIf([Baujahr]>#12/31/1999#,[bis 2000"
        "])))))))"
    Alias ="Euro je BGF"
    Expression ="((([PunkteAusstattung]-100)/200)*([Wert bis]-[Wert von]))+[Wert von]"
    Alias ="Wert1"
    Expression ="[Euro je BGF]*[BGF]"
    Expression ="B_Abfrage_für_Bericht_0.Baunebenkosten"
    Expression ="B_Abfrage_für_Formular.Erläuterungen"
    Alias ="idx_2000"
    Expression ="fc_Index(2000,F_Variable(\"lng_Kalk_jahr\"))"
    Expression ="B_Abfrage_für_Formular.[Bewertung abgeschlossen]"
    Expression ="B_Abfrage_für_Formular.Zuschuss_Prozent"
    Expression ="B_Abfrage_für_Formular.Index_manuell"
    Expression ="B_Abfrage_für_Formular.Versicherungswert"
    Expression ="B_Abfrage_für_Formular.[Fassade (11%)]"
    Expression ="B_Abfrage_für_Formular.[Fenster (14%)]"
    Expression ="B_Abfrage_für_Formular.[Dächer (15%)]"
    Expression ="B_Abfrage_für_Formular.[Sanitär (13%)]"
    Expression ="B_Abfrage_für_Formular.[Innenwände Sanitärbereich (6%)]"
    Expression ="B_Abfrage_für_Formular.[Innentüren (11%)]"
    Expression ="B_Abfrage_für_Formular.[Heizung (15%)]"
    Expression ="B_Abfrage_für_Formular.[Elektroinstallation (7%)]"
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
        dbInteger "ColumnOrder" ="13"
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
        dbInteger "ColumnOrder" ="14"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert1"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbInteger "ColumnWidth" ="1815"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="26"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Bericht_0.Baunebenkosten"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="27"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.BRI"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="22"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Index_manuell"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3510"
        dbInteger "ColumnOrder" ="29"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Versicherungswert"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="32"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Baujahr_real"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="23"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Baujahr_mod"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="24"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Zuschuss_Prozent"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="31"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Bezeichnung"
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Gebäudeteil"
        dbInteger "ColumnOrder" ="3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Erläuterungen"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="42"
    End
    Begin
        dbText "Name" ="Tp "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.haus_nr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="16"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.NAme"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="15"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.LS_Grst_wert_hier_zuordn"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="17"
    End
    Begin
        dbText "Name" ="FL "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FL"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="18"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.Bodenrichtwert"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="19"
    End
    Begin
        dbText "Name" ="Tp"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="25"
    End
    Begin
        dbText "Name" ="ant_brw"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="20"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[voll berechnen]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="21"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Bewertung abgeschlossen]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="30"
    End
    Begin
        dbText "Name" ="idx_2000"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3525"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="28"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Elektroinstallation (7%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="40"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Fassade (11%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="33"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Heizung (15%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="39"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Sanitär (13%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="36"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Innenwände Sanitärbereich (6%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="37"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Innentüren (11%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="38"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Bodenbeläge (8 %)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="41"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Fenster (14%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="34"
    End
    Begin
        dbText "Name" ="B_Abfrage_für_Formular.[Dächer (15%)]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="35"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1890
    Bottom =1004
    Left =-1
    Top =-1
    Right =1866
    Bottom =288
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =360
        Top =6
        Right =652
        Bottom =645
        Top =0
        Name ="B_Abfrage_für_Formular"
        Name =""
    End
    Begin
        Left =1038
        Top =61
        Right =1334
        Bottom =535
        Top =0
        Name ="B_Abfrage_für_Bericht_0"
        Name =""
    End
End
