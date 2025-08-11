Operation =1
Option =2
Having ="(((Maßnahmen.[nicht mehr erforderlich weil]) Is Null Or (Maßnahmen.[nicht mehr e"
    "rforderlich weil]) Is Null) AND (([Teile der Maßnahmen].Umsetzungsjahr)=F_VAriab"
    "le(\"lng_Kalk_Jahr\")) AND ((([Sachbearbeiter].[ID]>=F_VAriable('lng_ID_SB_Min')"
    " And [Sachbearbeiter].[ID]<=F_VAriable('lng_ID_SB_Max')) Or [Sachbearbeiter].[ID"
    "] Is Null)=True))"
Begin InputTables
    Name ="tbl_100_10_Liegenschaften"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="Sachbearbeiter"
    Name ="Maßnahmen"
    Name ="Teile der Maßnahmen"
    Name ="Haushaltsdaten"
    Name ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP"
End
Begin OutputColumns
    Alias ="Sort"
    Expression ="IIf(IsDate([Dat_Abschluss_DB]),\"Z: Abgeschlossene Maßnahmen\",\"A: Noch offene "
        "Maßnahmen\")"
    Alias ="ID_Massn"
    Expression ="Maßnahmen.ID"
    Alias ="ID_Teilm"
    Expression ="[Teile der Maßnahmen].ID"
    Expression ="Maßnahmen.Aktiv_Eigenl"
    Alias ="akt_Eigenl"
    Expression ="IIf([Aktiv_Eigenl],\"X\",\"\")"
    Expression ="[Teile der Maßnahmen].[voraussichtliche Kosten]"
    Alias ="Obj_Massn"
    Expression ="[Bezeichnung] & \" -> \" & [Gebäudeteil] & \" -> \" & [Maßnahme]"
    Expression ="[Teile der Maßnahmen].Teilmaßname"
    Expression ="[Teile der Maßnahmen].Dat_Abschluss_DB"
    Alias ="Inv_Nr"
    Expression ="DLookUp(\"[Inv_Nr]\",\"Haushaltsdaten\",\"[ID aus Maßnahmen] = \" & [Maßnahmen]."
        "[ID] & \" AND [Jahr] =  \" & F_VAriable(\"lng_Kalk_Jahr\"))"
    Alias ="Inv_Nr_ber"
    Expression ="IIf([Inv_Nr] Is Null,\"\",\"VH-Nr. \" & [Inv_Nr])"
    Alias ="Sachbearbeiter"
    Expression ="IIf([Name] Is Null,\"N.N.\",[NAme])"
    Expression ="[Teile der Maßnahmen].ID_SB"
    Expression ="Sachbearbeiter.Name"
    Expression ="Sachbearbeiter.Kennfarbe"
    Alias ="Jan"
    Expression ="fct_Jan(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    Alias ="Feb"
    Expression ="fct_feb(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    Alias ="Mrz"
    Expression ="fct_Mrz(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    Alias ="Apr"
    Expression ="fct_Apr(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    Alias ="Mai"
    Expression ="fct_Mai(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    Alias ="Jun"
    Expression ="fct_Jun(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    Alias ="Jul"
    Expression ="fct_Jul(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    Alias ="Aug"
    Expression ="fct_Aug(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    Alias ="Sep"
    Expression ="fct_Sep(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    Alias ="Okt"
    Expression ="fct_Okt(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    Alias ="Nov"
    Expression ="fct_Nov(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    Alias ="Dez"
    Expression ="fct_Dez(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
End
Begin Joins
    LeftTable ="Maßnahmen"
    RightTable ="Teile der Maßnahmen"
    Expression ="Maßnahmen.ID = [Teile der Maßnahmen].[ID aus Maßnahmen]"
    Flag =1
    LeftTable ="Maßnahmen"
    RightTable ="Haushaltsdaten"
    Expression ="Maßnahmen.ID = Haushaltsdaten.[ID aus Maßnahmen]"
    Flag =2
    LeftTable ="Maßnahmen"
    RightTable ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP"
    Expression ="Maßnahmen.ID = qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP.ID"
    Flag =2
    LeftTable ="Sachbearbeiter"
    RightTable ="Teile der Maßnahmen"
    Expression ="Sachbearbeiter.ID = [Teile der Maßnahmen].ID_SB"
    Flag =1
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
    Expression ="IIf(IsDate([Dat_Abschluss_DB]),\"Z: Abgeschlossene Maßnahmen\",\"A: Noch offene "
        "Maßnahmen\")"
    Flag =0
    Expression ="[Bezeichnung] & \" -> \" & [Gebäudeteil] & \" -> \" & [Maßnahme]"
    Flag =0
    Expression ="IIf([Name] Is Null,\"N.N.\",[NAme])"
    Flag =0
End
Begin Groups
    Expression ="IIf(IsDate([Dat_Abschluss_DB]),\"Z: Abgeschlossene Maßnahmen\",\"A: Noch offene "
        "Maßnahmen\")"
    GroupLevel =0
    Expression ="Maßnahmen.ID"
    GroupLevel =0
    Expression ="[Teile der Maßnahmen].ID"
    GroupLevel =0
    Expression ="Maßnahmen.Aktiv_Eigenl"
    GroupLevel =0
    Expression ="IIf([Aktiv_Eigenl],\"X\",\"\")"
    GroupLevel =0
    Expression ="[Teile der Maßnahmen].[voraussichtliche Kosten]"
    GroupLevel =0
    Expression ="[Bezeichnung] & \" -> \" & [Gebäudeteil] & \" -> \" & [Maßnahme]"
    GroupLevel =0
    Expression ="[Teile der Maßnahmen].Teilmaßname"
    GroupLevel =0
    Expression ="[Teile der Maßnahmen].Dat_Abschluss_DB"
    GroupLevel =0
    Expression ="DLookUp(\"[Inv_Nr]\",\"Haushaltsdaten\",\"[ID aus Maßnahmen] = \" & [Maßnahmen]."
        "[ID] & \" AND [Jahr] =  \" & F_VAriable(\"lng_Kalk_Jahr\"))"
    GroupLevel =0
    Expression ="IIf([Inv_Nr] Is Null,\"\",\"VH-Nr. \" & [Inv_Nr])"
    GroupLevel =0
    Expression ="IIf([Name] Is Null,\"N.N.\",[NAme])"
    GroupLevel =0
    Expression ="[Teile der Maßnahmen].ID_SB"
    GroupLevel =0
    Expression ="Sachbearbeiter.Name"
    GroupLevel =0
    Expression ="Sachbearbeiter.Kennfarbe"
    GroupLevel =0
    Expression ="fct_Jan(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    GroupLevel =0
    Expression ="fct_feb(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    GroupLevel =0
    Expression ="fct_Mrz(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    GroupLevel =0
    Expression ="fct_Apr(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    GroupLevel =0
    Expression ="fct_Mai(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    GroupLevel =0
    Expression ="fct_Jun(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    GroupLevel =0
    Expression ="fct_Jul(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    GroupLevel =0
    Expression ="fct_Aug(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    GroupLevel =0
    Expression ="fct_Sep(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    GroupLevel =0
    Expression ="fct_Okt(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    GroupLevel =0
    Expression ="fct_Nov(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    GroupLevel =0
    Expression ="fct_Dez(F_Variable(\"lng_Kalk_Jahr\"),[Dat_Grundl_Erm_Start],[Dat_Grundl_Erm_End"
        "e],[Dat_Planung_Start],[Dat_Planung_Ende],[Dat_Ausschr_Start],[Dat_Ausschr_Ende]"
        ",[Dat_Ausf_Start],[Dat_Ausf_Ende],[Dat_Abr_Start],[Dat_Abr_Ende],[Dat_Abschluss_"
        "DB])"
    GroupLevel =0
    Expression ="Maßnahmen.[nicht mehr erforderlich weil]"
    GroupLevel =0
    Expression ="[Teile der Maßnahmen].Umsetzungsjahr"
    GroupLevel =0
    Expression ="([Sachbearbeiter].[ID]>=F_VAriable('lng_ID_SB_Min') And [Sachbearbeiter].[ID]<=F"
        "_VAriable('lng_ID_SB_Max')) Or [Sachbearbeiter].[ID] Is Null"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="-1"
dbText "DatasheetFontName" ="Calibri"
dbInteger "DatasheetFontHeight" ="11"
dbInteger "DatasheetFontWeight" ="400"
dbBoolean "DatasheetFontItalic" ="0"
dbBoolean "DatasheetFontUnderline" ="0"
dbByte "TabularCharSet" ="0"
dbByte "TabularFamily" ="34"
dbLong "DatasheetForeColor" ="0"
dbLong "DatasheetForeColor12" ="0"
dbInteger "RowHeight" ="360"
Begin
    Begin
        dbText "Name" ="Jan"
        dbInteger "ColumnWidth" ="765"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Feb"
        dbInteger "ColumnWidth" ="765"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Mrz"
        dbInteger "ColumnWidth" ="765"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Apr"
        dbInteger "ColumnWidth" ="750"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Jul"
        dbInteger "ColumnWidth" ="675"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Aug"
        dbInteger "ColumnWidth" ="780"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sep"
        dbInteger "ColumnWidth" ="765"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Okt"
        dbInteger "ColumnWidth" ="750"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Nov"
        dbInteger "ColumnWidth" ="795"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Mai"
        dbInteger "ColumnWidth" ="765"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Jun"
        dbInteger "ColumnWidth" ="735"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Dez"
        dbInteger "ColumnWidth" ="765"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Obj_Massn"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="5445"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="7"
    End
    Begin
        dbText "Name" ="Sachbearbeiter "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sachbearbeiter"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="12"
    End
    Begin
        dbText "Name" ="Sachbearbeiter.Kennfarbe"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="15"
    End
    Begin
        dbText "Name" ="Sort "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sort"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4155"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Teilmaßname"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].ID_SB"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="13"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].Dat_Abschluss_DB"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="9"
    End
    Begin
        dbText "Name" ="Maßnahmen.Aktiv_Eigenl"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="akt_Eigenl"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Inv_Nr_ber"
        dbInteger "ColumnWidth" ="2145"
        dbInteger "ColumnOrder" ="11"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Inv_Nr"
        dbInteger "ColumnWidth" ="1665"
        dbInteger "ColumnOrder" ="10"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].[voraussichtliche Kosten]"
        dbInteger "ColumnOrder" ="6"
        dbLong "AggregateType" ="0"
        dbInteger "ColumnWidth" ="3390"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="[Teile der Maßnahmen].ID"
        dbInteger "ColumnWidth" ="2715"
        dbInteger "ColumnOrder" ="2"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sachbearbeiter.Name"
        dbInteger "ColumnOrder" ="14"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Massn "
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maßnahmen.ID"
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Massn"
        dbInteger "ColumnOrder" ="3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ID_Teilm "
        dbInteger "ColumnWidth" ="2715"
        dbInteger "ColumnOrder" ="2"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1856
    Bottom =853
    Left =-1
    Top =-1
    Right =1832
    Bottom =503
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =20
        Top =102
        Right =281
        Bottom =419
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =347
        Top =84
        Right =578
        Bottom =419
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =1363
        Top =74
        Right =1589
        Bottom =217
        Top =0
        Name ="Sachbearbeiter"
        Name =""
    End
    Begin
        Left =651
        Top =68
        Right =886
        Bottom =307
        Top =0
        Name ="Maßnahmen"
        Name =""
    End
    Begin
        Left =970
        Top =42
        Right =1261
        Bottom =160
        Top =0
        Name ="Teile der Maßnahmen"
        Name =""
    End
    Begin
        Left =974
        Top =175
        Right =1264
        Bottom =343
        Top =0
        Name ="Haushaltsdaten"
        Name =""
    End
    Begin
        Left =976
        Top =357
        Right =1261
        Bottom =522
        Top =0
        Name ="qry_030_05_15_Gepl_Finanz_Maßn_Sum_AP"
        Name =""
    End
End
