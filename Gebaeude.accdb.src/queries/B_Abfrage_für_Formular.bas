Operation =1
Option =0
Begin InputTables
    Name ="tbl_100_20_Gebäudeteile"
    Name ="M_Strassenverzeichnis"
    Name ="tbl_100_10_Liegenschaften"
End
Begin OutputColumns
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
    Expression ="tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT"
    Expression ="tbl_100_10_Liegenschaften.Bezeichnung"
    Expression ="tbl_100_20_Gebäudeteile.Gebäudeteil"
    Expression ="M_Strassenverzeichnis.Name"
    Expression ="tbl_100_20_Gebäudeteile.Haus_Nr"
    Expression ="tbl_100_20_Gebäudeteile.[Typ aus NHK-Typen]"
    Expression ="tbl_100_10_Liegenschaften.Fläche"
    Expression ="tbl_100_10_Liegenschaften.Bodenrichtwert"
    Expression ="tbl_100_10_Liegenschaften.[voll berechnen]"
    Expression ="tbl_100_20_Gebäudeteile.BGF"
    Expression ="tbl_100_20_Gebäudeteile.BRI"
    Expression ="tbl_100_20_Gebäudeteile.Baujahr_real"
    Expression ="tbl_100_20_Gebäudeteile.Baujahr_mod"
    Alias ="Baujahr"
    Expression ="IIf(IsNull([Baujahr_mod]),[Baujahr_real],[Baujahr_mod])"
    Expression ="tbl_100_20_Gebäudeteile.[gewöhnliche Nutzungsdauer]"
    Expression ="tbl_100_20_Gebäudeteile.[geschätze Nutzungsdauer]"
    Expression ="tbl_100_20_Gebäudeteile.Neubauwert_ab_2000"
    Expression ="tbl_100_20_Gebäudeteile.[Fassade (11%)]"
    Alias ="Pkt_Fassade"
    Expression ="IIf([Fassade (11%)]=\"einfach\",11,IIf([Fassade (11%)]=\"mittel\",22,IIf([Fassad"
        "e (11%)]=\"gehoben\",33,0)))"
    Expression ="tbl_100_20_Gebäudeteile.[Fenster (14%)]"
    Alias ="Pkt_Fenster"
    Expression ="IIf([Fenster (14%)]=\"einfach\",14,IIf([Fenster (14%)]=\"mittel\",28,IIf([Fenste"
        "r (14%)]=\"gehoben\",42,0)))"
    Expression ="tbl_100_20_Gebäudeteile.[Dächer (15%)]"
    Alias ="Pkt_Dächer"
    Expression ="IIf([Dächer (15%)]=\"einfach\",15,IIf([Dächer (15%)]=\"mittel\",30,IIf([Dächer ("
        "15%)]=\"gehoben\",45,0)))"
    Expression ="tbl_100_20_Gebäudeteile.[Sanitär (13%)]"
    Alias ="Pkt_Sanitär"
    Expression ="IIf([Sanitär (13%)]=\"einfach\",13,IIf([Sanitär (13%)]=\"mittel\",26,IIf([Sanitä"
        "r (13%)]=\"gehoben\",39,0)))"
    Expression ="tbl_100_20_Gebäudeteile.[Innenwände Sanitärbereich (6%)]"
    Alias ="Pkt_Innenwände_S"
    Expression ="IIf([Innenwände Sanitärbereich (6%)]=\"einfach\",6,IIf([Innenwände Sanitärbereic"
        "h (6%)]=\"mittel\",12,IIf([Innenwände Sanitärbereich (6%)]=\"gehoben\",18,0)))"
    Expression ="tbl_100_20_Gebäudeteile.[Bodenbeläge (8 %)]"
    Alias ="Pkt_Bodenbeläge"
    Expression ="IIf([Bodenbeläge (8 %)]=\"einfach\",8,IIf([Bodenbeläge (8 %)]=\"mittel\",16,IIf("
        "[Bodenbeläge (8 %)]=\"gehoben\",24,0)))"
    Expression ="tbl_100_20_Gebäudeteile.[Innentüren (11%)]"
    Alias ="Pkt_Innentüren"
    Expression ="IIf([Innentüren (11%)]=\"einfach\",11,IIf([Innentüren (11%)]=\"mittel\",22,IIf(["
        "Innentüren (11%)]=\"gehoben\",33,0)))"
    Expression ="tbl_100_20_Gebäudeteile.[Heizung (15%)]"
    Alias ="Pkt_Heizung"
    Expression ="IIf([Heizung (15%)]=\"einfach\",15,IIf([Heizung (15%)]=\"mittel\",30,IIf([Heizun"
        "g (15%)]=\"gehoben\",45,0)))"
    Expression ="tbl_100_20_Gebäudeteile.[Elektroinstallation (7%)]"
    Alias ="Pkt_Elektro"
    Expression ="IIf([Elektroinstallation (7%)]=\"einfach\",7,IIf([Elektroinstallation (7%)]=\"mi"
        "ttel\",14,IIf([Elektroinstallation (7%)]=\"gehoben\",21,0)))"
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
    Expression ="tbl_100_20_Gebäudeteile.[Bewertung abgeschlossen]"
    Expression ="tbl_100_20_Gebäudeteile.von"
    Expression ="tbl_100_20_Gebäudeteile.Erläuterungen"
    Expression ="tbl_100_20_Gebäudeteile.Bilanz_relevant"
    Expression ="tbl_100_20_Gebäudeteile.Erläut_Bewertung"
    Expression ="tbl_100_20_Gebäudeteile.LS_Grst_wert_hier_zuordn"
    Expression ="tbl_100_20_Gebäudeteile.[Zuordnung Bilanz]"
    Expression ="tbl_100_20_Gebäudeteile.Zuschuss_Prozent"
    Expression ="tbl_100_20_Gebäudeteile.Index_manuell"
    Expression ="tbl_100_20_Gebäudeteile.Versicherungswert"
End
Begin Joins
    LeftTable ="M_Strassenverzeichnis"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="M_Strassenverzeichnis.Kennummer = tbl_100_20_Gebäudeteile.Kennummer_Straße"
    Flag =3
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_100_10_Liegenschaften.Bezeichnung"
    Flag =0
    Expression ="tbl_100_20_Gebäudeteile.Gebäudeteil"
    Flag =0
    Expression ="M_Strassenverzeichnis.Name"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbMemo "OrderBy" ="[B_Abfrage_für_Formular].[ID_GebT_Zug_GebT] DESC"
Begin
    Begin
        dbText "Name" ="Pkt_Fassade"
        dbInteger "ColumnWidth" ="1335"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Pkt_Fenster"
        dbInteger "ColumnWidth" ="1335"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Pkt_Dächer"
        dbInteger "ColumnWidth" ="1335"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Pkt_Sanitär"
        dbInteger "ColumnWidth" ="1335"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Pkt_Innenwände_S"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Pkt_Bodenbeläge"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Pkt_Innentüren"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Pkt_Heizung"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Pkt_Elektro"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PunkteAusstattung"
        dbInteger "ColumnWidth" ="1905"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Baujahr"
        dbInteger "ColumnWidth" ="1770"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ausstattung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Range"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Bezeichnung"
        dbInteger "ColumnWidth" ="4035"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Bewertung abgeschlossen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.von"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Zuordnung Bilanz]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Zuschuss_Prozent"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Index_manuell"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Versicherungswert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Haus_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Strassenverzeichnis.Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Typ aus NHK-Typen]"
        dbInteger "ColumnWidth" ="2205"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.BGF"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.BRI"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Baujahr_real"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Baujahr_mod"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[gewöhnliche Nutzungsdauer]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[geschätze Nutzungsdauer]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Neubauwert_ab_2000"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Fassade (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Fenster (14%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Dächer (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Sanitär (13%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Innenwände Sanitärbereich (6%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Bodenbeläge (8 %)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Innentüren (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Heizung (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.[Elektroinstallation (7%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Erläuterungen"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.LS_Grst_wert_hier_zuordn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Bilanz_relevant"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Fläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.Bodenrichtwert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_10_Liegenschaften.[voll berechnen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Erläut_Bewertung"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =108
    Top =124
    Right =4313
    Bottom =2686
    Left =-1
    Top =-1
    Right =4162
    Bottom =1001
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =533
        Top =36
        Right =1004
        Bottom =978
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =1327
        Top =40
        Right =1853
        Bottom =447
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =82
        Top =62
        Right =329
        Bottom =437
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
End
