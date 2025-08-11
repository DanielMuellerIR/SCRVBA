Operation =1
Option =0
Where ="(((qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Gebäudeteil) Between F"
    "_VAriable(\"lng_ID_Geb_Teil_Min\") And F_VAriable(\"lng_ID_Geb_Teil_Max\")) AND "
    "((B_Sanierungsstau_Werterhöhung.DS_Typ)=1))"
Begin InputTables
    Name ="tbl_200_05_10_Bewertungsläufe"
    Name ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009"
    Name ="qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau"
    Name ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh"
    Name ="B_Sanierungsstau_Werterhöhung"
End
Begin OutputColumns
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.*"
    Alias ="Bewertungsart"
    Expression ="fc_Bewert_Art([tbl_200_05_10_Bewertungsläufe].[Erst_Folgebilanz])"
    Alias ="BGF"
    Expression ="CDbl(DSum(\"[BGF]\",\"tbl_100_20_Gebäudeteile\",\"[ID_GebT_Zug_GebT] = \" & [qry"
        "_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009].[ID_Gebäudeteil] & \" or ID_Ge"
        "bäudeteil = \" & [qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009].[ID_Gebäu"
        "deteil]))"
    Alias ="HK"
    Expression ="B_Sanierungsstau_Werterhöhung.Herstellkosten"
    Alias ="Grundstueckswert"
    Expression ="IIf([voll berechnen]=True,CCur(Nz([Bodenrichtwert]*[Fläche])),CCur(Nz([Bodenrich"
        "twert]*[Fläche]*[Anteil Bodenrichtwert]/100)))"
    Alias ="Sanierungsstau"
    Expression ="CCur(Nz([San_Stau]))"
    Alias ="Werterh"
    Expression ="CCur(Nz([SummevonMehrwert]))"
    Alias ="NutzD_ges_Monate"
    Expression ="[Nutzd_gesamt]*12"
    Alias ="NutzD_ges_J_M"
    Expression ="fc_Jahre_Monate([NutzD_ges_Monate])"
    Expression ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.Abschr_Monate_bis_BewJahr"
    Alias ="Abschr_bis_BewJ_J_M"
    Expression ="fc_Jahre_Monate([Abschr_Monate_bis_BewJahr])"
    Alias ="NutzD_Rest"
    Expression ="[NutzD_ges_Monate]-[Abschr_Monate_bis_BewJahr]"
    Alias ="NutzD_Rest_J_M"
    Expression ="fc_JAhre_monate([NutzD_Rest])"
    Alias ="Abschr"
    Expression ="CCur(Nz([Abschr_bis_Bew_Jahr]))"
    Expression ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.Restwert_Bew_Jahr"
    Expression ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.WBV"
    Alias ="HK_fuer_WBW"
    Expression ="HK_Berechnen_2022([qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009].[ID_Gebä"
        "udeteil])"
    Alias ="WBW"
    Expression ="WBW_Berechnen_2022([qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009].[ID_Geb"
        "äudeteil],F_Variable(\"lng_Kalk_Jahr\"))"
End
Begin Joins
    LeftTable ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009"
    RightTable ="qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Bew_Bil = qry_220_30_10_D"
        "H_rpt_Bew_Bil_HK_Kost_Sanstau.ID_Bew_Bil"
    Flag =2
    LeftTable ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009"
    RightTable ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Gebäudeteil = qry_220_30_"
        "20_DH_rpt_Bew_Bil_HK_Kost_Werterh.ID_Gebäudeteil"
    Flag =2
    LeftTable ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009"
    RightTable ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Bew_Bil = qry_220_30_20_D"
        "H_rpt_Bew_Bil_HK_Kost_Werterh.ID_Bew_Bil"
    Flag =2
    LeftTable ="tbl_200_05_10_Bewertungsläufe"
    RightTable ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009"
    Expression ="tbl_200_05_10_Bewertungsläufe.id_Bewert = qry_rpt_200_10_10_Datenherk_Bewertungs"
        "bil_nach_2009.id_Bewert"
    Flag =1
    LeftTable ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009"
    RightTable ="B_Sanierungsstau_Werterhöhung"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Gebäudeteil = B_Sanierung"
        "sstau_Werterhöhung.ID_Gebäudeteil"
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
Begin
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Objekt"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="5085"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.Abschr_Monate_bis_BewJahr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1320"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="16"
    End
    Begin
        dbText "Name" ="NutzD_ges_Monate "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NutzD_Rest "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NutzD_ges_Monate"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="930"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="14"
    End
    Begin
        dbText "Name" ="NutzD_Rest"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2610"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="18"
    End
    Begin
        dbText "Name" ="NutzD_ges_J_M "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NutzD_ges_J_M"
        dbInteger "ColumnWidth" ="1260"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="15"
    End
    Begin
        dbText "Name" ="NutzD_Rest_J_M "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NutzD_Rest_J_M"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1965"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="19"
    End
    Begin
        dbText "Name" ="Abschr_bis_BewJ_J_M"
        dbInteger "ColumnWidth" ="2760"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="17"
    End
    Begin
        dbText "Name" ="Werterh"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1485"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="12"
    End
    Begin
        dbText "Name" ="Grundstueckswert"
        dbInteger "ColumnWidth" ="2115"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="10"
    End
    Begin
        dbText "Name" ="Bewertungsart"
        dbInteger "ColumnWidth" ="2880"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="Sanierungsstau"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1515"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Typ"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschr"
        dbInteger "ColumnWidth" ="2205"
        dbInteger "ColumnOrder" ="13"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.WBV"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.Restwert_Bew_Jahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="HK"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2325"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="HK "
        dbInteger "ColumnWidth" ="2850"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BGF"
        dbInteger "ColumnOrder" ="7"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.Baunebenkosten"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.NB_Wert_Eing"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[gewöhnliche Nutzungsdauer]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.PunkteAusstattung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[Wert bis]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.Bezeichnung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.Fläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[Dächer (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_100_20_Gebäudeteile.Geba"
            "eudekennung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.BNK"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Aussenanlagen"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.idx_2000_2009"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.Straße"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_05_10_Bewertungsläuf"
            "e.Erläuterung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.Baujahr_mod"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.LS_Grst_wert_hier_zuordn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Wert_1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.Ausstattung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[Euro je BGF]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.BRI"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_05_10_Bewertungsläuf"
            "e.Bewertungsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.Baujahr_real"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_05_10_Bewertungsläuf"
            "e.id_Bewert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.ID_Bew_Bil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_100_20_Gebäudeteile.ID_G"
            "ebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_05_10_Bewertungsläuf"
            "e.Erst_Folgebilanz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[Bodenbeläge (8 %)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_05_10_Bewertungsläuf"
            "e.Zeitpunkt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.Gebäudeteil"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.Haus_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Straße_HN"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_100_20_Gebäudeteile.ID_G"
            "ebT_Zug_GebT"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.BGF"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.Baujahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[geschätze Nutzungsdauer]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.Range"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[Wert von]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Wert2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Wert3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.NB_Wert_auf_2000_ger"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.NB_Wert_relevant"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.B_Sanierungsstau_Werterhöhun"
            "g.DS_Typ"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.B_Sanierungsstau_Werterhöhun"
            "g.Herstellkosten"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Erl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.Zuschuss_Prozent"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.Versicherungswert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[Fassade (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[Fenster (14%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[Sanitär (13%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[Innenwände Sanitärbereich (6%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[Innentüren (11%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[Heizung (15%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[Elektroinstallation (7%)]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_050_10_Gemarkungen.Gemar"
            "kung"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_070_10_Flure.Flur"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Flurst"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.Bodenrichtwert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[anteil bodenrichtwert]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.tbl_200_10_10_Bewertungsbila"
            "nzen.[voll berechnen]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="WBW"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="HK_fuer_WBW"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =3811
    Bottom =2287
    Left =-1
    Top =-1
    Right =3768
    Bottom =1269
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =22
        Top =66
        Right =420
        Bottom =466
        Top =0
        Name ="tbl_200_05_10_Bewertungsläufe"
        Name =""
    End
    Begin
        Left =530
        Top =41
        Right =1227
        Bottom =1299
        Top =0
        Name ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009"
        Name =""
    End
    Begin
        Left =2459
        Top =42
        Right =2860
        Bottom =405
        Top =0
        Name ="qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau"
        Name =""
    End
    Begin
        Left =1378
        Top =401
        Right =1776
        Bottom =1087
        Top =0
        Name ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh"
        Name =""
    End
    Begin
        Left =1997
        Top =409
        Right =2403
        Bottom =1214
        Top =0
        Name ="B_Sanierungsstau_Werterhöhung"
        Name =""
    End
End
