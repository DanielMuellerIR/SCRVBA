Operation =1
Option =8
Where ="(((Union_Abfrage_Mietberechnung_1.Betrag)<>0) AND ((tbl_100_20_Gebäudeteile.ID_G"
    "ebäude) Between F_Variable(\"lng_ID_Geb_Min\") And F_Variable(\"lng_ID_Geb_Max\""
    ")) AND ((M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Jahr)=F_Variable(\"lng_NK_J"
    "ahr\")) AND ((tbl_100_20_Gebäudeteile.Mietrelevant)=True))"
Having ="(((Union_Abfrage_Mietberechnung_1.Planjahr)=F_Variable(\"lng_Kalk_Jahr\")) AND ("
    "(M_Bereiche.Kennummer) Between F_Variable(\"lng_Ber_Nr_Min\") And F_Variable(\"l"
    "ng_Ber_Nr_Max\")))"
Begin InputTables
    Name ="Union_Abfrage_Mietberechnung_1"
    Name ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn"
    Name ="tbl_100_20_Gebäudeteile"
    Name ="M_Bereiche"
    Name ="tbl_100_10_Liegenschaften"
    Name ="M_Strassenverzeichnis"
    Name ="qry_BGF_Summen"
End
Begin OutputColumns
    Expression ="Union_Abfrage_Mietberechnung_1.Planjahr"
    Expression ="Union_Abfrage_Mietberechnung_1.Betrieb"
    Expression ="M_Bereiche.BereichNr"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    Alias ="Objekt"
    Expression ="[M_Strassenverzeichnis].[Name] & \" \" & [tbl_100_10_Liegenschaften].[Haus_Nr] &"
        " \": \" & [tbl_100_10_Liegenschaften].[Bezeichnung]"
    Expression ="tbl_100_20_Gebäudeteile.Sportfläche"
    Alias ="Sportfl"
    Expression ="IIf([Sportfläche]=True,\"Flächen mit reduziertem NK-Satz\",\" Gebäude der Liegen"
        "schaft\")"
    Expression ="Union_Abfrage_Mietberechnung_1.sort"
    Alias ="Sorttext"
    Expression ="fc_Sort_Text([sort])"
    Expression ="Union_Abfrage_Mietberechnung_1.Kostenart"
    Expression ="M_Bereiche.Kennummer"
    Expression ="Union_Abfrage_Mietberechnung_1.BereichName"
    Expression ="qry_BGF_Summen.Sum_BGF_Gb_LS"
    Expression ="qry_BGF_Summen.Sum_BGF_Sp_Fl"
    Expression ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Anteile"
    Alias ="Betrag_"
    Expression ="([Betrag]*[anteile])"
End
Begin Joins
    LeftTable ="Union_Abfrage_Mietberechnung_1"
    RightTable ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn"
    Expression ="Union_Abfrage_Mietberechnung_1.ID_Gebäudeteil = M_Berechnung_Faktor_bei_Mietende"
        "_Mietbeginn.ID_Gebäudeteil"
    Flag =1
    LeftTable ="M_Bereiche"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="M_Bereiche.Kennummer = tbl_100_20_Gebäudeteile.[Kennummer aus Bereiche]"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="M_Strassenverzeichnis"
    Expression ="tbl_100_10_Liegenschaften.Kennummer_Straße = M_Strassenverzeichnis.Kennummer"
    Flag =2
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="Union_Abfrage_Mietberechnung_1"
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäudeteil = Union_Abfrage_Mietberechnung_1.ID_Gebäu"
        "deteil"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="qry_BGF_Summen"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = qry_BGF_Summen.ID_Gebäude"
    Flag =1
    LeftTable ="M_Bereiche"
    RightTable ="qry_BGF_Summen"
    Expression ="M_Bereiche.Kennummer = qry_BGF_Summen.KN_Bereich"
    Flag =1
    LeftTable ="tbl_100_20_Gebäudeteile"
    RightTable ="qry_BGF_Summen"
    Expression ="tbl_100_20_Gebäudeteile.Sportfläche = qry_BGF_Summen.Sportfläche"
    Flag =1
    LeftTable ="tbl_100_10_Liegenschaften"
    RightTable ="tbl_100_20_Gebäudeteile"
    Expression ="tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude"
    Flag =1
End
Begin Groups
    Expression ="Union_Abfrage_Mietberechnung_1.Planjahr"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_1.Betrieb"
    GroupLevel =0
    Expression ="M_Bereiche.BereichNr"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.ID_Gebäude"
    GroupLevel =0
    Expression ="[M_Strassenverzeichnis].[Name] & \" \" & [tbl_100_10_Liegenschaften].[Haus_Nr] &"
        " \": \" & [tbl_100_10_Liegenschaften].[Bezeichnung]"
    GroupLevel =0
    Expression ="tbl_100_20_Gebäudeteile.Sportfläche"
    GroupLevel =0
    Expression ="IIf([Sportfläche]=True,\"Flächen mit reduziertem NK-Satz\",\" Gebäude der Liegen"
        "schaft\")"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_1.sort"
    GroupLevel =0
    Expression ="fc_Sort_Text([sort])"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_1.Kostenart"
    GroupLevel =0
    Expression ="M_Bereiche.Kennummer"
    GroupLevel =0
    Expression ="Union_Abfrage_Mietberechnung_1.BereichName"
    GroupLevel =0
    Expression ="qry_BGF_Summen.Sum_BGF_Gb_LS"
    GroupLevel =0
    Expression ="qry_BGF_Summen.Sum_BGF_Sp_Fl"
    GroupLevel =0
    Expression ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Anteile"
    GroupLevel =0
    Expression ="([Betrag]*[anteile])"
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
dbMemo "Filter" ="((([Lookup_ID__Gebäude].[LS]=\"FREBERGSTR. 1 - 7: Feuerwehrwache Frebergstraße\""
    "))) AND ([Union_Abfrage_Mietberechnung_mit_Filter].[Kostenart]=\"Wasser\")"
dbText "SubdatasheetName" ="[Auto]"
Begin
    Begin
        dbText "Name" ="Betrag_"
        dbText "Format" ="Fixed"
        dbLong "AggregateType" ="0"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_1.Betrieb"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_1.Kostenart"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1320"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_1.sort"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_1.BereichName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn.Anteile"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Union_Abfrage_Mietberechnung_1.Planjahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Bereiche.Kennummer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="M_Bereiche.BereichNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbInteger "ColumnWidth" ="7590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt "
        dbInteger "ColumnWidth" ="7590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sportfl"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2640"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Sorttext "
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sorttext"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.Sportfläche"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_BGF_Summen.Sum_BGF_Sp_Fl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qry_BGF_Summen.Sum_BGF_Gb_LS"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_100_20_Gebäudeteile.ID_Gebäude"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =2
    Left =-8
    Top =-31
    Right =1882
    Bottom =861
    Left =-1
    Top =-1
    Right =1423
    Bottom =529
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =687
        Top =10
        Right =962
        Bottom =258
        Top =0
        Name ="Union_Abfrage_Mietberechnung_1"
        Name =""
    End
    Begin
        Left =1056
        Top =100
        Right =1439
        Bottom =284
        Top =0
        Name ="M_Berechnung_Faktor_bei_Mietende_Mietbeginn"
        Name =""
    End
    Begin
        Left =114
        Top =31
        Right =398
        Bottom =731
        Top =0
        Name ="tbl_100_20_Gebäudeteile"
        Name =""
    End
    Begin
        Left =824
        Top =538
        Right =1060
        Bottom =676
        Top =0
        Name ="M_Bereiche"
        Name =""
    End
    Begin
        Left =797
        Top =281
        Right =1045
        Bottom =410
        Top =0
        Name ="tbl_100_10_Liegenschaften"
        Name =""
    End
    Begin
        Left =1120
        Top =312
        Right =1315
        Bottom =418
        Top =0
        Name ="M_Strassenverzeichnis"
        Name =""
    End
    Begin
        Left =473
        Top =522
        Right =703
        Bottom =686
        Top =0
        Name ="qry_BGF_Summen"
        Name =""
    End
End
