Operation =1
Option =0
Where ="(((B_Sanierungsstau_Werterhöhung.DS_Typ)=1))"
Begin InputTables
    Name ="qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau"
    Name ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh"
    Name ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009"
    Name ="tbl_200_05_10_Bewertungsläufe"
    Name ="B_Sanierungsstau_Werterhöhung"
End
Begin OutputColumns
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Gebäudeteil"
    Alias ="Bewertungsart"
    Expression ="fc_Bewert_Art([tbl_200_05_10_Bewertungsläufe].[Erst_Folgebilanz])"
    Expression ="tbl_200_05_10_Bewertungsläufe.Erläuterung"
    Expression ="tbl_200_05_10_Bewertungsläufe.Bewertungsjahr"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Objekt"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Gebaeudekennung"
    Alias ="BGF"
    Expression ="CDbl(DSum(\"[BGF]\",\"tbl_100_20_Gebäudeteile\",\"[ID_GebT_Zug_GebT] = \" & [qry"
        "_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009].[ID_Gebäudeteil] & \" or ID_Ge"
        "bäudeteil = \" & [qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009].[ID_Gebäu"
        "deteil]))"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.BRI"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Baujahr"
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
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Versicherungswert"
    Expression ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh.WBV"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Typ"
End
Begin Joins
    LeftTable ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009"
    RightTable ="qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Bew_Bil = qry_220_30_10_D"
        "H_rpt_Bew_Bil_HK_Kost_Sanstau.ID_Bew_Bil"
    Flag =2
    LeftTable ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009"
    RightTable ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Bew_Bil = qry_220_30_20_D"
        "H_rpt_Bew_Bil_HK_Kost_Werterh.ID_Bew_Bil"
    Flag =2
    LeftTable ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009"
    RightTable ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh"
    Expression ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Gebäudeteil = qry_220_30_"
        "20_DH_rpt_Bew_Bil_HK_Kost_Werterh.ID_Gebäudeteil"
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
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Objekt"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="5085"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Baujahr"
        dbText "Format" ="mm-yyyy"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1125"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="9"
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
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.Bewertungsjahr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="Bewertungsart"
        dbInteger "ColumnWidth" ="2880"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="tbl_200_05_10_Bewertungsläufe.Erläuterung"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2460"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="Sanierungsstau"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1515"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="11"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Versicherungswert"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="8355"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.BRI"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="8"
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
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.ID_Gebäudeteil"
        dbInteger "ColumnOrder" ="1"
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
        dbText "Name" ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009.Gebaeudekennung"
        dbInteger "ColumnOrder" ="6"
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
    Bottom =907
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =1367
        Top =36
        Right =1768
        Bottom =179
        Top =0
        Name ="qry_220_30_10_DH_rpt_Bew_Bil_HK_Kost_Sanstau"
        Name =""
    End
    Begin
        Left =1378
        Top =401
        Right =1776
        Bottom =593
        Top =0
        Name ="qry_220_30_20_DH_rpt_Bew_Bil_HK_Kost_Werterh"
        Name =""
    End
    Begin
        Left =530
        Top =41
        Right =1131
        Bottom =634
        Top =0
        Name ="qry_rpt_200_10_10_Datenherk_Bewertungsbil_nach_2009"
        Name =""
    End
    Begin
        Left =22
        Top =66
        Right =420
        Bottom =252
        Top =0
        Name ="tbl_200_05_10_Bewertungsläufe"
        Name =""
    End
    Begin
        Left =1383
        Top =203
        Right =1789
        Bottom =366
        Top =0
        Name ="B_Sanierungsstau_Werterhöhung"
        Name =""
    End
End
