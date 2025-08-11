Operation =1
Option =0
Begin InputTables
    Name ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz"
    Name ="qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau"
    Name ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh"
    Name ="tbl_200_05_10_Bewertungsläufe"
End
Begin OutputColumns
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.Gebaeudekennung"
    Expression ="tbl_200_05_10_Bewertungsläufe.Erläuterung"
    Alias ="Bewertungsart"
    Expression ="fc_Bewert_Art([tbl_200_05_10_Bewertungsläufe].[Erst_Folgebilanz])"
    Expression ="tbl_200_05_10_Bewertungsläufe.Bewertungsjahr"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.ID_Gebäudeteil"
    Alias ="Objekt"
    Expression ="[Straße] & \": \" & [qry_rpt_200_10_10_Datenherk_Bewertungsbilanz].[Bezeichnung]"
        " & \" -> \" & [qry_rpt_200_10_10_Datenherk_Bewertungsbilanz].[gebäudeteil]"
    Alias ="BGF"
    Expression ="CDbl(Nz([qry_rpt_200_10_10_Datenherk_Bewertungsbilanz].[BGF]))"
    Alias ="BRI"
    Expression ="CDbl(Nz([qry_rpt_200_10_10_Datenherk_Bewertungsbilanz].[BRI]))"
    Alias ="Baujahr"
    Expression ="IIf(Not IsNull([Baujahr_mod]),[BAujahr_mod],[Baujahr_real])"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.Typ"
    Alias ="Werterhoehung"
    Expression ="CCur(Nz([SummevonMehrwert]))"
    Alias ="Wert_1"
    Expression ="CCur([BGF]*CCur(Nz([Euro je BGF])))"
    Alias ="Index"
    Expression ="IIf([Index_Manuell] Is Null,[Index ab 2000],[Index_Manuell])"
    Alias ="Wert_2"
    Expression ="CCur([Wert_1]*(1+[Index]/100))"
    Alias ="BNK"
    Expression ="CCur([Wert_2]*CCur(Nz([Baunebenkosten]))/100)"
    Alias ="Wert_3"
    Expression ="[BNK]+[Wert_2]"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.Neubauwert_ab_2000"
    Alias ="Aussenanlagen"
    Expression ="CCur([Wert_3]*4/100)"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.[index ab 2000]"
    Alias ="Herstellkosten"
    Expression ="IIf(Val(Nz([Neubauwert_ab_2000]))=0,[Wert_3]+[Aussenanlagen],[Neubauwert_ab_2000"
        "])"
    Alias ="WBW"
    Expression ="IIf(Val(Nz([Neubauwert_ab_2000]))=0,[Wert_3]+[Aussenanlagen],[Neubauwert_ab_2000"
        "]*(1+[index ab 2000]/100))"
    Alias ="Nutzdauer"
    Expression ="IIf([geschätze Nutzungsdauer] Is Null,[gewöhnliche Nutzungsdauer],[geschätze Nut"
        "zungsdauer])"
    Alias ="Nutzungsdauer"
    Expression ="IIf([Nutzdauer]<=0,1,[Nutzdauer])"
    Alias ="Abschr_pro_Jahr"
    Expression ="CCur([Herstellkosten]/[Nutzungsdauer])"
    Alias ="Abschr_Jahre"
    Expression ="Abschreibungszeit([tbl_200_05_10_Bewertungsläufe].[bewertungsjahr],[Baujahr],[Nu"
        "tzungsdauer])"
    Alias ="Kumul_Abschr"
    Expression ="IIf(IsNumeric([Abschr_Jahre]),CCur(IIf([Abschr_Jahre]*[Abschr_pro_Jahr]>[Herstel"
        "lkosten],[Herstellkosten],[Abschr_Jahre]*[Abschr_pro_Jahr])),0)"
    Alias ="Sanierungsstau"
    Expression ="qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau.San_stau"
    Alias ="Grundstueckswert"
    Expression ="IIf([voll berechnen]=True,CCur(Nz([Bodenrichtwert]*[Fläche])),CCur(Nz([Bodenrich"
        "twert]*[Fläche]*[Anteil Bodenrichtwert]/100)))"
    Alias ="Ermittelter_Wert"
    Expression ="IIf(Int(CCur(Nz([Herstellkosten]))-CCur(Nz([Kumul_Abschr]))-CCur(Nz([Sanierungss"
        "tau])))<=0,1,CCur(Nz([Herstellkosten]))-CCur(Nz([Kumul_Abschr]))-CCur(Nz([Sanier"
        "ungsstau])))"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.Versicherungswert"
End
Begin Joins
    LeftTable ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz"
    RightTable ="qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.ID_Bew_Bil = qry_220_30_10_DH_rpt_B"
        "ew_Bil_HK_Kost_Sanstau.ID_Bew_Bil"
    Flag =2
    LeftTable ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz"
    RightTable ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.ID_Bew_Bil = qry_220_30_20_DH_rpt_B"
        "ew_Bil_HK_Kost_Werterh.ID_Bew_Bil"
    Flag =2
    LeftTable ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz"
    RightTable ="tbl_200_05_10_Bewertungsläufe"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.id_Bewert = tbl_200_05_10_Bewertung"
        "släufe.id_Bewert"
    Flag =1
End
Begin OrderBy
    Expression ="[Straße] & \": \" & [qry_rpt_200_10_10_Datenherk_Bewertungsbilanz].[Bezeichnung]"
        " & \" -> \" & [qry_rpt_200_10_10_Datenherk_Bewertungsbilanz].[gebäudeteil]"
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
Begin
    Begin
        dbText "Name" ="Werterhoehung"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1515"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="Sanierungsstau"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="Werterhoehung "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert_1"
        dbText "Description" ="Wert 1 *6)"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2010"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="Wert_2 "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Index "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert_3 "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Index"
        dbInteger "ColumnWidth" ="945"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BNK "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Wert_3"
        dbInteger "ColumnWidth" ="1950"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="Wert_2"
        dbInteger "ColumnWidth" ="1515"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="BNK"
        dbInteger "ColumnWidth" ="1350"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="Aussenanlagen "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aussenanlagen"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1830"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="Abschr_Jahre "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschr_pro_Jahr "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschr_pro_Jahr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1950"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="Herstellkosten"
        dbInteger "ColumnWidth" ="1785"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="Nutzungsdauer "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Abschr_Jahre"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1650"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Nutzungsdauer"
        dbInteger "ColumnWidth" ="1830"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sanierungsstau "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Grundstueckswert "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Grundstueckswert"
        dbInteger "ColumnWidth" ="2115"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="Ermittelter_Wert "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ermittelter_Wert"
        dbInteger "ColumnWidth" ="2010"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.Bewertungsjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.Erläuterung"
        dbInteger "ColumnWidth" ="3795"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertungsart"
        dbInteger "ColumnWidth" ="1785"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bewertungsart "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.Versicherungswert"
        dbLong "AggregateType" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.Typ"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="540"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.ID_Gebäudeteil"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1425"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Nutzdauer"
        dbInteger "ColumnWidth" ="1830"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BGF"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BGF "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BRI"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Kumul_Abschr"
        dbInteger "ColumnWidth" ="1755"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.[index ab 2000]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.Neubauwert_ab_2000"
        dbInteger "ColumnWidth" ="2445"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="Objekt "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="5760"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Baujahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Baujahr "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="WBW"
        dbText "Description" ="Neubauwert ab 2000 real: *2)"
        dbInteger "ColumnWidth" ="2580"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz.Gebaeudekennung"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =184
    Top =804
    Right =3524
    Bottom =2702
    Left =-1
    Top =-1
    Right =3297
    Bottom =1128
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =400
        Top =9
        Right =937
        Bottom =1129
        Top =0
        Name ="qry_rpt_200_10_10_Datenherk_Bewertungsbilanz"
        Name =""
    End
    Begin
        Left =1508
        Top =16
        Right =1909
        Bottom =337
        Top =0
        Name ="qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau"
        Name =""
    End
    Begin
        Left =1090
        Top =316
        Right =1488
        Bottom =969
        Top =0
        Name ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh"
        Name =""
    End
    Begin
        Left =41
        Top =33
        Right =292
        Bottom =211
        Top =0
        Name ="tbl_200_05_10_Bewertungsläufe"
        Name =""
    End
End
